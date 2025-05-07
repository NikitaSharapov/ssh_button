// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CommandsTable extends Commands with TableInfo<$CommandsTable, Command> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CommandsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _hostMeta = const VerificationMeta('host');
  @override
  late final GeneratedColumn<String> host = GeneratedColumn<String>(
    'host',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _portMeta = const VerificationMeta('port');
  @override
  late final GeneratedColumn<int> port = GeneratedColumn<int>(
    'port',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _usernameMeta = const VerificationMeta(
    'username',
  );
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
    'username',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _passwordMeta = const VerificationMeta(
    'password',
  );
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
    'NsQsWN6cCqLU',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sudoMeta = const VerificationMeta('sudo');
  @override
  late final GeneratedColumn<bool> sudo = GeneratedColumn<bool>(
    'sudo',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("sudo" IN (0, 1))',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    description,
    host,
    port,
    username,
    value,
    password,
    sudo,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'commands';
  @override
  VerificationContext validateIntegrity(
    Insertable<Command> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('host')) {
      context.handle(
        _hostMeta,
        host.isAcceptableOrUnknown(data['host']!, _hostMeta),
      );
    } else if (isInserting) {
      context.missing(_hostMeta);
    }
    if (data.containsKey('port')) {
      context.handle(
        _portMeta,
        port.isAcceptableOrUnknown(data['port']!, _portMeta),
      );
    } else if (isInserting) {
      context.missing(_portMeta);
    }
    if (data.containsKey('username')) {
      context.handle(
        _usernameMeta,
        username.isAcceptableOrUnknown(data['username']!, _usernameMeta),
      );
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('NsQsWN6cCqLU')) {
      context.handle(
        _passwordMeta,
        password.isAcceptableOrUnknown(data['NsQsWN6cCqLU']!, _passwordMeta),
      );
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('sudo')) {
      context.handle(
        _sudoMeta,
        sudo.isAcceptableOrUnknown(data['sudo']!, _sudoMeta),
      );
    } else if (isInserting) {
      context.missing(_sudoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Command map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Command(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}id'],
          )!,
      title:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}title'],
          )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      host:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}host'],
          )!,
      port:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}port'],
          )!,
      username:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}username'],
          )!,
      value:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}value'],
          )!,
      password:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}NsQsWN6cCqLU'],
          )!,
      sudo:
          attachedDatabase.typeMapping.read(
            DriftSqlType.bool,
            data['${effectivePrefix}sudo'],
          )!,
    );
  }

  @override
  $CommandsTable createAlias(String alias) {
    return $CommandsTable(attachedDatabase, alias);
  }
}

class Command extends DataClass implements Insertable<Command> {
  final String id;
  final String title;
  final String? description;
  final String host;
  final int port;
  final String username;
  final String value;
  final String password;
  final bool sudo;
  const Command({
    required this.id,
    required this.title,
    this.description,
    required this.host,
    required this.port,
    required this.username,
    required this.value,
    required this.password,
    required this.sudo,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['host'] = Variable<String>(host);
    map['port'] = Variable<int>(port);
    map['username'] = Variable<String>(username);
    map['value'] = Variable<String>(value);
    map['NsQsWN6cCqLU'] = Variable<String>(password);
    map['sudo'] = Variable<bool>(sudo);
    return map;
  }

  CommandsCompanion toCompanion(bool nullToAbsent) {
    return CommandsCompanion(
      id: Value(id),
      title: Value(title),
      description:
          description == null && nullToAbsent
              ? const Value.absent()
              : Value(description),
      host: Value(host),
      port: Value(port),
      username: Value(username),
      value: Value(value),
      password: Value(password),
      sudo: Value(sudo),
    );
  }

  factory Command.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Command(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      host: serializer.fromJson<String>(json['host']),
      port: serializer.fromJson<int>(json['port']),
      username: serializer.fromJson<String>(json['username']),
      value: serializer.fromJson<String>(json['value']),
      password: serializer.fromJson<String>(json['password']),
      sudo: serializer.fromJson<bool>(json['sudo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String?>(description),
      'host': serializer.toJson<String>(host),
      'port': serializer.toJson<int>(port),
      'username': serializer.toJson<String>(username),
      'value': serializer.toJson<String>(value),
      'password': serializer.toJson<String>(password),
      'sudo': serializer.toJson<bool>(sudo),
    };
  }

  Command copyWith({
    String? id,
    String? title,
    Value<String?> description = const Value.absent(),
    String? host,
    int? port,
    String? username,
    String? value,
    String? password,
    bool? sudo,
  }) => Command(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description.present ? description.value : this.description,
    host: host ?? this.host,
    port: port ?? this.port,
    username: username ?? this.username,
    value: value ?? this.value,
    password: password ?? this.password,
    sudo: sudo ?? this.sudo,
  );
  Command copyWithCompanion(CommandsCompanion data) {
    return Command(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
      host: data.host.present ? data.host.value : this.host,
      port: data.port.present ? data.port.value : this.port,
      username: data.username.present ? data.username.value : this.username,
      value: data.value.present ? data.value.value : this.value,
      password: data.password.present ? data.password.value : this.password,
      sudo: data.sudo.present ? data.sudo.value : this.sudo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Command(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('host: $host, ')
          ..write('port: $port, ')
          ..write('username: $username, ')
          ..write('value: $value, ')
          ..write('password: $password, ')
          ..write('sudo: $sudo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    description,
    host,
    port,
    username,
    value,
    password,
    sudo,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Command &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.host == this.host &&
          other.port == this.port &&
          other.username == this.username &&
          other.value == this.value &&
          other.password == this.password &&
          other.sudo == this.sudo);
}

class CommandsCompanion extends UpdateCompanion<Command> {
  final Value<String> id;
  final Value<String> title;
  final Value<String?> description;
  final Value<String> host;
  final Value<int> port;
  final Value<String> username;
  final Value<String> value;
  final Value<String> password;
  final Value<bool> sudo;
  final Value<int> rowid;
  const CommandsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.host = const Value.absent(),
    this.port = const Value.absent(),
    this.username = const Value.absent(),
    this.value = const Value.absent(),
    this.password = const Value.absent(),
    this.sudo = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CommandsCompanion.insert({
    required String id,
    required String title,
    this.description = const Value.absent(),
    required String host,
    required int port,
    required String username,
    required String value,
    required String password,
    required bool sudo,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       host = Value(host),
       port = Value(port),
       username = Value(username),
       value = Value(value),
       password = Value(password),
       sudo = Value(sudo);
  static Insertable<Command> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? host,
    Expression<int>? port,
    Expression<String>? username,
    Expression<String>? value,
    Expression<String>? password,
    Expression<bool>? sudo,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (host != null) 'host': host,
      if (port != null) 'port': port,
      if (username != null) 'username': username,
      if (value != null) 'value': value,
      if (password != null) 'NsQsWN6cCqLU': password,
      if (sudo != null) 'sudo': sudo,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CommandsCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String?>? description,
    Value<String>? host,
    Value<int>? port,
    Value<String>? username,
    Value<String>? value,
    Value<String>? password,
    Value<bool>? sudo,
    Value<int>? rowid,
  }) {
    return CommandsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      host: host ?? this.host,
      port: port ?? this.port,
      username: username ?? this.username,
      value: value ?? this.value,
      password: password ?? this.password,
      sudo: sudo ?? this.sudo,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (host.present) {
      map['host'] = Variable<String>(host.value);
    }
    if (port.present) {
      map['port'] = Variable<int>(port.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (password.present) {
      map['NsQsWN6cCqLU'] = Variable<String>(password.value);
    }
    if (sudo.present) {
      map['sudo'] = Variable<bool>(sudo.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CommandsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('host: $host, ')
          ..write('port: $port, ')
          ..write('username: $username, ')
          ..write('value: $value, ')
          ..write('password: $password, ')
          ..write('sudo: $sudo, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CommandsTable commands = $CommandsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [commands];
}

typedef $$CommandsTableCreateCompanionBuilder =
    CommandsCompanion Function({
      required String id,
      required String title,
      Value<String?> description,
      required String host,
      required int port,
      required String username,
      required String value,
      required String password,
      required bool sudo,
      Value<int> rowid,
    });
typedef $$CommandsTableUpdateCompanionBuilder =
    CommandsCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String?> description,
      Value<String> host,
      Value<int> port,
      Value<String> username,
      Value<String> value,
      Value<String> password,
      Value<bool> sudo,
      Value<int> rowid,
    });

class $$CommandsTableFilterComposer
    extends Composer<_$AppDatabase, $CommandsTable> {
  $$CommandsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get host => $composableBuilder(
    column: $table.host,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get port => $composableBuilder(
    column: $table.port,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get sudo => $composableBuilder(
    column: $table.sudo,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CommandsTableOrderingComposer
    extends Composer<_$AppDatabase, $CommandsTable> {
  $$CommandsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get host => $composableBuilder(
    column: $table.host,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get port => $composableBuilder(
    column: $table.port,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get sudo => $composableBuilder(
    column: $table.sudo,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CommandsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CommandsTable> {
  $$CommandsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get host =>
      $composableBuilder(column: $table.host, builder: (column) => column);

  GeneratedColumn<int> get port =>
      $composableBuilder(column: $table.port, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);

  GeneratedColumn<bool> get sudo =>
      $composableBuilder(column: $table.sudo, builder: (column) => column);
}

class $$CommandsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CommandsTable,
          Command,
          $$CommandsTableFilterComposer,
          $$CommandsTableOrderingComposer,
          $$CommandsTableAnnotationComposer,
          $$CommandsTableCreateCompanionBuilder,
          $$CommandsTableUpdateCompanionBuilder,
          (Command, BaseReferences<_$AppDatabase, $CommandsTable, Command>),
          Command,
          PrefetchHooks Function()
        > {
  $$CommandsTableTableManager(_$AppDatabase db, $CommandsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$CommandsTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$CommandsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$CommandsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String> host = const Value.absent(),
                Value<int> port = const Value.absent(),
                Value<String> username = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<String> password = const Value.absent(),
                Value<bool> sudo = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CommandsCompanion(
                id: id,
                title: title,
                description: description,
                host: host,
                port: port,
                username: username,
                value: value,
                password: password,
                sudo: sudo,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                Value<String?> description = const Value.absent(),
                required String host,
                required int port,
                required String username,
                required String value,
                required String password,
                required bool sudo,
                Value<int> rowid = const Value.absent(),
              }) => CommandsCompanion.insert(
                id: id,
                title: title,
                description: description,
                host: host,
                port: port,
                username: username,
                value: value,
                password: password,
                sudo: sudo,
                rowid: rowid,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          BaseReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CommandsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CommandsTable,
      Command,
      $$CommandsTableFilterComposer,
      $$CommandsTableOrderingComposer,
      $$CommandsTableAnnotationComposer,
      $$CommandsTableCreateCompanionBuilder,
      $$CommandsTableUpdateCompanionBuilder,
      (Command, BaseReferences<_$AppDatabase, $CommandsTable, Command>),
      Command,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CommandsTableTableManager get commands =>
      $$CommandsTableTableManager(_db, _db.commands);
}
