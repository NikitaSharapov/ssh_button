import 'package:drift/drift.dart';

class Commands extends Table {
  late final id = text()();
  late final title = text()();
  late final description = text().nullable()();
  late final host = text()();
  late final port = integer()();
  late final username = text()();
  late final value = text()();
  late final password = text().named('NsQsWN6cCqLU')();
  late final sudo = boolean()();

  @override
  Set<Column> get primaryKey => {id};

  @override
  String get tableName => 'commands';
}
