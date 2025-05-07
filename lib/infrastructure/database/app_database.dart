import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:ssh_button/infrastructure/database/tables/commands_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Commands])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  // @override
  // MigrationStrategy get migration {
  //   return MigrationStrategy(beforeOpen: (openingDetails) async {
  //     final m = createMigrator();
  //     for (final table in allTables) {
  //       await m.deleteTable(table.actualTableName);
  //       await m.createTable(table);
  //     }
  //     await customStatement('PRAGMA foreign_keys = ON;');
  //   });
  // }

  @override
  MigrationStrategy get migration => MigrationStrategy(
    beforeOpen: (detais) async {
      await customStatement('PRAGMA foreign_keys = ON;');
    },
  );

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'app_database',
      native: const DriftNativeOptions(shareAcrossIsolates: true),
    );
  }
}
