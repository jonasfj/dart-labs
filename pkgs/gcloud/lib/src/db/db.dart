// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of gcloud.db;

class Transaction {
  static const int _TRANSACTION_STARTED = 0;
  static const int _TRANSACTION_ROLLED_BACK = 1;
  static const int _TRANSACTION_COMMITTED = 2;

  final DatastoreDB db;
  final datastore.Transaction _datastoreTransaction;

  final List<Model> _inserts = [];
  final List<Key> _deletes = [];

  int _transactionState = _TRANSACTION_STARTED;

  Transaction(this.db, this._datastoreTransaction);

  /**
   * Looks up [keys] within this transaction.
   */
  Future<List<Model>> lookup(List<Key> keys) {
    return _lookupHelper(db, keys, datastoreTransaction: _datastoreTransaction);
  }

  /**
   * Enqueues [inserts] and [deletes] which should be commited at commit time.
   */
  void queueMutations({List<Model> inserts, List<Key> deletes}) {
    _checkSealed();
    if (inserts != null) {
      _inserts.addAll(inserts);
    }
    if (deletes != null) {
      _deletes.addAll(deletes);
    }
  }

  /**
   * Query for [kind] models with [ancestorKey].
   *
   * Note that [ancestorKey] is required, since a transaction is not allowed to
   * touch/look at an arbitrary number of rows.
   */
  Query query(Type kind, Key ancestorKey, {Partition partition}) {
    _checkSealed();
    var modelDescription = db.modelDB.modelDescriptionForType(kind);
    var query = new Query(db,
                     modelDescription,
                     partition: partition,
                     ancestorKey: ancestorKey,
                     datastoreTransaction: _datastoreTransaction);
    return modelDescription.finishQuery(db.modelDB, query);
  }

  /**
   * Rolls this transaction back.
   */
  Future rollback() {
    _checkSealed(changeState: _TRANSACTION_ROLLED_BACK);
    return db.datastore.rollback(_datastoreTransaction);
  }

  /**
   * Commits this transaction including all of the queued mutations.
   */
  Future commit() {
    _checkSealed(changeState: _TRANSACTION_COMMITTED);
    return _commitHelper(db,
                         inserts: _inserts,
                         deletes: _deletes,
                         datastoreTransaction: _datastoreTransaction);
  }

  _checkSealed({int changeState}) {
    if (_transactionState == _TRANSACTION_COMMITTED) {
      throw new StateError(
          'The transaction has already been committed.');
    } else if (_transactionState == _TRANSACTION_ROLLED_BACK) {
      throw new StateError(
          'The transaction has already been rolled back.');
    }
    if (changeState != null) {
      _transactionState = changeState;
    }
  }
}

class Query {
  final _relationMapping = const <String, datastore.FilterRelation> {
    '<': datastore.FilterRelation.LessThan,
    '<=': datastore.FilterRelation.LessThanOrEqual,
    '>': datastore.FilterRelation.GreatherThan,
    '>=': datastore.FilterRelation.GreatherThanOrEqual,
    '=': datastore.FilterRelation.Equal,
    'IN': datastore.FilterRelation.In,
  };

  final DatastoreDB _db;
  final datastore.Transaction _transaction;
  final String _kind;
  final ModelDescription _modelDescription;

  final Partition _partition;
  final Key _ancestorKey;

  final List<datastore.Filter> _filters = [];
  final List<datastore.Order> _orders = [];
  int _offset;
  int _limit;

  Query(DatastoreDB dbImpl, ModelDescription modelDescription,
        {Partition partition, Key ancestorKey,
         datastore.Transaction datastoreTransaction})
      : _db = dbImpl, _kind = modelDescription.kindName(dbImpl.modelDB),
        _modelDescription = modelDescription, _partition = partition,
        _ancestorKey = ancestorKey, _transaction = datastoreTransaction;

  /**
   * Adds a filter to this [Query].
   *
   * [filterString] has form "name OP" where 'name' is a fieldName of the
   * model and OP is an operator (e.g. "name >=").
   *
   * [comparisonObject] is the object for comparison.
   */
  void filter(String filterString, Object comparisonObject) {
    var parts = filterString.split(' ');
    if (parts.length != 2 || !_relationMapping.containsKey(parts[1])) {
      throw new ArgumentError(
          "Invalid filter string '$filterString'.");
    }

    // TODO: do value transformation on [comparisionObject]

    var propertyName = _convertToDatastoreName(parts[0]);
    _filters.add(new datastore.Filter(
        _relationMapping[parts[1]], propertyName, comparisonObject));
  }

  /**
   * Adds an order to this [Query].
   *
   * [orderString] has the form "-name" where 'name' is a fieldName of the model
   * and the optional '-' says whether the order is decending or ascending.
   */
  void order(String orderString) {
    // TODO: validate [orderString] (e.g. is name valid)
    if (orderString.startsWith('-')) {
      _orders.add(new datastore.Order(
          datastore.OrderDirection.Decending,
          _convertToDatastoreName(orderString.substring(1))));
    } else {
      _orders.add(new datastore.Order(
          datastore.OrderDirection.Ascending,
          _convertToDatastoreName(orderString)));
    }
  }

  /**
   * Sets the [offset] of this [Query].
   *
   * When running this query, [offset] results will be skipped.
   */
  void offset(int offset) {
    _offset = offset;
  }

  /**
   * Sets the [limit] of this [Query].
   *
   * When running this query, a maximum of [limit] results will be returned.
   */
  void limit(int limit) {
    _limit = limit;
  }

  /**
   * Execute this [Query] on the datastore.
   *
   * Outside of transactions this method might return stale data or may not
   * return the newest updates performed on the datastore since updates
   * will be reflected in the indices in an eventual consistent way.
   */
  Future<List<Model>> run() {
    var ancestorKey;
    if (_ancestorKey != null) {
      ancestorKey = _db.modelDB.toDatastoreKey(_ancestorKey);
    }
    var query = new datastore.Query(
        ancestorKey: ancestorKey, kind: _kind,
        filters: _filters, orders: _orders,
        offset: _offset, limit: _limit);

    var partition;
    if (_partition != null) {
      partition = new datastore.Partition(_partition.namespace);
    }

    return _db.datastore.query(
        query, transaction: _transaction, partition: partition)
        .then((List<datastore.Entity> entities) {
      return entities.map(_db.modelDB.fromDatastoreEntity).toList();
    });
  }

  String _convertToDatastoreName(String name) {
    var propertyName =
        _modelDescription.fieldNameToPropertyName(_db.modelDB, name);
    if (propertyName == null) {
      throw new ArgumentError(
          "Field $name is not available for kind $_modelDescription");
    }
    return propertyName;
  }
}

class DatastoreDB {
  final datastore.Datastore datastore;
  final ModelDB _modelDB;
  Partition _defaultPartition;

  DatastoreDB(this.datastore, {ModelDB modelDB})
      : _modelDB = modelDB != null ? modelDB : new ModelDB() {
    _defaultPartition = new Partition(null);
  }

  /**
   * The [ModelDB] used to serialize/deserialize objects.
   */
  ModelDB get modelDB => _modelDB;

  /**
   * Gets the empty key using the default [Partition].
   *
   * Model keys with parent set to [emptyKey] will create their own entity
   * groups.
   */
  Key get emptyKey => defaultPartition.emptyKey;

  /**
   * Gets the default [Partition].
   */
  Partition get defaultPartition => _defaultPartition;

  /**
   * Creates a new [Partition] with namespace [namespace].
   */
  Partition newPartition(String namespace) {
    return new Partition(namespace);
  }

  /**
   * Begins a new a new transaction.
   *
   * A normal transaction can only touch entities inside one entity group. By
   * setting [crossEntityGroup] to `true` it is possible to touch up to
   * five entity groups.
   *
   * Cross entity group transactions come with a cost, due to the fact that
   * a two-phase commit protocol will be used. So it will result in higher
   * latency.
   */
  Future<Transaction> beginTransaction({bool crossEntityGroup: false}) {
    return datastore.beginTransaction(crossEntityGroup: crossEntityGroup)
        .then((transaction) {
      return new Transaction(this, transaction);
    });
  }

  /**
   * Build a query for [kind] models.
   */
  Query query(Type kind, {Partition partition, Key ancestorKey}) {
    var modelDescription = modelDB.modelDescriptionForType(kind);

    var q = new Query(this,
                      modelDescription,
                      partition: partition,
                      ancestorKey: ancestorKey);
    return modelDescription.finishQuery(modelDB, q);
  }

  /**
   * Looks up [keys] in the datastore and returns a list of [Model] objects.
   *
   * For transactions, please use [beginTransaction] and call the [lookup]
   * method on it's returned [Transaction] object.
   */
  Future<List<Model>> lookup(List<Key> keys) {
    return _lookupHelper(this, keys);
  }

  /**
   * Add [inserts] to the datastore and remove [deletes] from it.
   *
   * The order of inserts and deletes is not specified. When the commit is done
   * direct lookups will see the effect but non-ancestor queries will see the
   * change in an eventual consistent way.
   *
   * For transactions, please use `beginTransaction` and it's returned
   * [Transaction] object.
   */
  Future commit({List<Model> inserts, List<Key> deletes}) {
    return _commitHelper(this, inserts: inserts, deletes: deletes);
  }
}

Future _commitHelper(DatastoreDB db,
                     {List<Model> inserts,
                      List<Key> deletes,
                      datastore.Transaction datastoreTransaction}) {
  var entityInserts, entityAutoIdInserts, entityDeletes;
  var autoIdModelInserts;
  if (inserts != null) {
    entityInserts = [];
    entityAutoIdInserts = [];
    autoIdModelInserts = [];

    for (var model in inserts) {
      // If parent was not explicity set, we assume this model will map to
      // it's own entity group.
      if (model.parentKey == null) {
        model.parentKey = db.defaultPartition.emptyKey;
      }
      if (model.id == null) {
        autoIdModelInserts.add(model);
        entityAutoIdInserts.add(db.modelDB.toDatastoreEntity(model));
      } else {
        entityInserts.add(db.modelDB.toDatastoreEntity(model));
      }
    }
  }
  if (deletes != null) {
    entityDeletes = deletes.map(db.modelDB.toDatastoreKey).toList();
  }

  return db.datastore.commit(inserts: entityInserts,
                           autoIdInserts: entityAutoIdInserts,
                           deletes: entityDeletes,
                           transaction: datastoreTransaction)
      .then((datastore.CommitResult result) {
    if (entityAutoIdInserts != null && entityAutoIdInserts.length > 0) {
      for (var i = 0; i < result.autoIdInsertKeys.length; i++) {
        var key = db.modelDB.fromDatastoreKey(result.autoIdInsertKeys[i]);
        autoIdModelInserts[i].parentKey = key.parent;
        autoIdModelInserts[i].id = key.id;
      }
    }
  });
}

Future<List<Model>> _lookupHelper(
    DatastoreDB db, List<Key> keys,
    {datastore.Transaction datastoreTransaction}) {
  var entityKeys = keys.map(db.modelDB.toDatastoreKey).toList();
  return db.datastore.lookup(entityKeys, transaction: datastoreTransaction)
      .then((List<datastore.Entity> entities) {
    return entities.map(db.modelDB.fromDatastoreEntity).toList();
  });
}
