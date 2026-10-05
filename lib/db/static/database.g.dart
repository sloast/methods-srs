// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class Methods extends Table with TableInfo<Methods, Method> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Methods(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    $customConstraints: 'NOT NULL PRIMARY KEY',
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _placeNotationMeta = const VerificationMeta(
    'placeNotation',
  );
  late final GeneratedColumn<String> placeNotation = GeneratedColumn<String>(
    'placeNotation',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _stageMeta = const VerificationMeta('stage');
  late final GeneratedColumn<int> stage = GeneratedColumn<int>(
    'stage',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL',
  );
  static const VerificationMeta _detailsMeta = const VerificationMeta(
    'details',
  );
  late final GeneratedColumn<String> details = GeneratedColumn<String>(
    'details',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    $customConstraints: '',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    placeNotation,
    stage,
    details,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'methods';
  @override
  VerificationContext validateIntegrity(
    Insertable<Method> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('placeNotation')) {
      context.handle(
        _placeNotationMeta,
        placeNotation.isAcceptableOrUnknown(
          data['placeNotation']!,
          _placeNotationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_placeNotationMeta);
    }
    if (data.containsKey('stage')) {
      context.handle(
        _stageMeta,
        stage.isAcceptableOrUnknown(data['stage']!, _stageMeta),
      );
    } else if (isInserting) {
      context.missing(_stageMeta);
    }
    if (data.containsKey('details')) {
      context.handle(
        _detailsMeta,
        details.isAcceptableOrUnknown(data['details']!, _detailsMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Method map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Method(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      placeNotation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}placeNotation'],
      )!,
      stage: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stage'],
      )!,
      details: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}details'],
      ),
    );
  }

  @override
  Methods createAlias(String alias) {
    return Methods(attachedDatabase, alias);
  }

  @override
  bool get isStrict => true;
  @override
  bool get dontWriteConstraints => true;
}

class Method extends DataClass implements Insertable<Method> {
  final int id;
  final String name;
  final String placeNotation;
  final int stage;
  final String? details;
  const Method({
    required this.id,
    required this.name,
    required this.placeNotation,
    required this.stage,
    this.details,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['placeNotation'] = Variable<String>(placeNotation);
    map['stage'] = Variable<int>(stage);
    if (!nullToAbsent || details != null) {
      map['details'] = Variable<String>(details);
    }
    return map;
  }

  MethodsCompanion toCompanion(bool nullToAbsent) {
    return MethodsCompanion(
      id: Value(id),
      name: Value(name),
      placeNotation: Value(placeNotation),
      stage: Value(stage),
      details: details == null && nullToAbsent
          ? const Value.absent()
          : Value(details),
    );
  }

  factory Method.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Method(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      placeNotation: serializer.fromJson<String>(json['placeNotation']),
      stage: serializer.fromJson<int>(json['stage']),
      details: serializer.fromJson<String?>(json['details']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'placeNotation': serializer.toJson<String>(placeNotation),
      'stage': serializer.toJson<int>(stage),
      'details': serializer.toJson<String?>(details),
    };
  }

  Method copyWith({
    int? id,
    String? name,
    String? placeNotation,
    int? stage,
    Value<String?> details = const Value.absent(),
  }) => Method(
    id: id ?? this.id,
    name: name ?? this.name,
    placeNotation: placeNotation ?? this.placeNotation,
    stage: stage ?? this.stage,
    details: details.present ? details.value : this.details,
  );
  Method copyWithCompanion(MethodsCompanion data) {
    return Method(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      placeNotation: data.placeNotation.present
          ? data.placeNotation.value
          : this.placeNotation,
      stage: data.stage.present ? data.stage.value : this.stage,
      details: data.details.present ? data.details.value : this.details,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Method(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('placeNotation: $placeNotation, ')
          ..write('stage: $stage, ')
          ..write('details: $details')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, placeNotation, stage, details);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Method &&
          other.id == this.id &&
          other.name == this.name &&
          other.placeNotation == this.placeNotation &&
          other.stage == this.stage &&
          other.details == this.details);
}

class MethodsCompanion extends UpdateCompanion<Method> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> placeNotation;
  final Value<int> stage;
  final Value<String?> details;
  const MethodsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.placeNotation = const Value.absent(),
    this.stage = const Value.absent(),
    this.details = const Value.absent(),
  });
  MethodsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String placeNotation,
    required int stage,
    this.details = const Value.absent(),
  }) : name = Value(name),
       placeNotation = Value(placeNotation),
       stage = Value(stage);
  static Insertable<Method> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? placeNotation,
    Expression<int>? stage,
    Expression<String>? details,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (placeNotation != null) 'placeNotation': placeNotation,
      if (stage != null) 'stage': stage,
      if (details != null) 'details': details,
    });
  }

  MethodsCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? placeNotation,
    Value<int>? stage,
    Value<String?>? details,
  }) {
    return MethodsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      placeNotation: placeNotation ?? this.placeNotation,
      stage: stage ?? this.stage,
      details: details ?? this.details,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (placeNotation.present) {
      map['placeNotation'] = Variable<String>(placeNotation.value);
    }
    if (stage.present) {
      map['stage'] = Variable<int>(stage.value);
    }
    if (details.present) {
      map['details'] = Variable<String>(details.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MethodsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('placeNotation: $placeNotation, ')
          ..write('stage: $stage, ')
          ..write('details: $details')
          ..write(')'))
        .toString();
  }
}

abstract class _$StaticDatabase extends GeneratedDatabase {
  _$StaticDatabase(QueryExecutor e) : super(e);
  $StaticDatabaseManager get managers => $StaticDatabaseManager(this);
  late final Methods methods = Methods(this);
  late final Index idxMethodsName = Index(
    'idx_methods_name',
    'CREATE INDEX idx_methods_name ON methods (name)',
  );
  Future<int> createEntry(
    int id,
    String name,
    String placeNotation,
    int stage,
  ) {
    return customInsert(
      'INSERT INTO methods (id, name, placeNotation, stage) VALUES (?1, ?2, ?3, ?4)',
      variables: [
        Variable<int>(id),
        Variable<String>(name),
        Variable<String>(placeNotation),
        Variable<int>(stage),
      ],
      updates: {this.methods},
    );
  }

  Selectable<Method> search(String name, int limit) {
    return customSelect(
      'SELECT * FROM methods WHERE name LIKE ?1 LIMIT ?2',
      variables: [Variable<String>(name), Variable<int>(limit)],
      readsFrom: {this.methods},
    ).asyncMap(this.methods.mapFromRow);
  }

  Selectable<Method> get(int id) {
    return customSelect(
      'SELECT * FROM methods WHERE id = ?1',
      variables: [Variable<int>(id)],
      readsFrom: {this.methods},
    ).asyncMap(this.methods.mapFromRow);
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [methods, idxMethodsName];
}

typedef $MethodsCreateCompanionBuilder =
    MethodsCompanion Function({
      Value<int> id,
      required String name,
      required String placeNotation,
      required int stage,
      Value<String?> details,
    });
typedef $MethodsUpdateCompanionBuilder =
    MethodsCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> placeNotation,
      Value<int> stage,
      Value<String?> details,
    });

class $MethodsFilterComposer extends Composer<_$StaticDatabase, Methods> {
  $MethodsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get placeNotation => $composableBuilder(
    column: $table.placeNotation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stage => $composableBuilder(
    column: $table.stage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get details => $composableBuilder(
    column: $table.details,
    builder: (column) => ColumnFilters(column),
  );
}

class $MethodsOrderingComposer extends Composer<_$StaticDatabase, Methods> {
  $MethodsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get placeNotation => $composableBuilder(
    column: $table.placeNotation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stage => $composableBuilder(
    column: $table.stage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get details => $composableBuilder(
    column: $table.details,
    builder: (column) => ColumnOrderings(column),
  );
}

class $MethodsAnnotationComposer extends Composer<_$StaticDatabase, Methods> {
  $MethodsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get placeNotation => $composableBuilder(
    column: $table.placeNotation,
    builder: (column) => column,
  );

  GeneratedColumn<int> get stage =>
      $composableBuilder(column: $table.stage, builder: (column) => column);

  GeneratedColumn<String> get details =>
      $composableBuilder(column: $table.details, builder: (column) => column);
}

class $MethodsTableManager
    extends
        RootTableManager<
          _$StaticDatabase,
          Methods,
          Method,
          $MethodsFilterComposer,
          $MethodsOrderingComposer,
          $MethodsAnnotationComposer,
          $MethodsCreateCompanionBuilder,
          $MethodsUpdateCompanionBuilder,
          (Method, BaseReferences<_$StaticDatabase, Methods, Method>),
          Method,
          PrefetchHooks Function()
        > {
  $MethodsTableManager(_$StaticDatabase db, Methods table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $MethodsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $MethodsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $MethodsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> placeNotation = const Value.absent(),
                Value<int> stage = const Value.absent(),
                Value<String?> details = const Value.absent(),
              }) => MethodsCompanion(
                id: id,
                name: name,
                placeNotation: placeNotation,
                stage: stage,
                details: details,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String placeNotation,
                required int stage,
                Value<String?> details = const Value.absent(),
              }) => MethodsCompanion.insert(
                id: id,
                name: name,
                placeNotation: placeNotation,
                stage: stage,
                details: details,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<Methods, Method>(table),
                  BaseReferences<_$StaticDatabase, Methods, Method>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $MethodsProcessedTableManager =
    ProcessedTableManager<
      _$StaticDatabase,
      Methods,
      Method,
      $MethodsFilterComposer,
      $MethodsOrderingComposer,
      $MethodsAnnotationComposer,
      $MethodsCreateCompanionBuilder,
      $MethodsUpdateCompanionBuilder,
      (Method, BaseReferences<_$StaticDatabase, Methods, Method>),
      Method,
      PrefetchHooks Function()
    >;

class $StaticDatabaseManager {
  final _$StaticDatabase _db;
  $StaticDatabaseManager(this._db);
  $MethodsTableManager get methods => $MethodsTableManager(_db, _db.methods);
}
