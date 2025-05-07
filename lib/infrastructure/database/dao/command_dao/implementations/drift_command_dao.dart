import 'package:drift/drift.dart';
import 'package:ssh_button/infrastructure/database/app_database.dart';
import 'package:ssh_button/infrastructure/database/dao/command_dao/command_dao.dart';
import 'package:ssh_button/infrastructure/dto/command_dto.dart';

class DriftCommandDao implements CommandDao {
  final AppDatabase _db;

  DriftCommandDao({required AppDatabase db}) : _db = db;

  @override
  Future<void> create({required CommandDto dto}) async {
    await _db.managers.commands.create(
      (commandsCompanion) => commandsCompanion(
        value: dto.value,
        id: dto.id,
        title: dto.title,
        description: Value(dto.description),
        host: dto.host,
        port: dto.port,
        username: dto.username,
        sudo: dto.sudo,
        password: dto.password,
      ),
    );
  }

  @override
  Future<void> delete({required String id}) async {
    await _db.managers.commands
        .filter(
          (commandsTableFilterComposer) => commandsTableFilterComposer.id(id),
        )
        .delete();
  }

  @override
  Future<CommandDto?> read({required String id}) async {
    final command =
        await _db.managers.commands
            .filter(
              (commandsTableFilterComposer) =>
                  commandsTableFilterComposer.id(id),
            )
            .getSingleOrNull();
    if (command != null) {
      return CommandDto(
        id: command.id,
        title: command.title,
        description: command.description,
        host: command.host,
        port: command.port,
        username: command.username,
        sudo: command.sudo,
        password: command.password,
         value: command.value
      );
    }
    return null;
  }

  @override
  Future<List<CommandDto>> readAll() async {
    final commands = await _db.managers.commands.get();

    return commands
        .map(
          (command) => CommandDto(
            id: command.id,
            title: command.title,
            description: command.description,
            host: command.host,
            port: command.port,
            username: command.username,
            sudo: command.sudo,
            password: command.password,
             value: command.value
          ),
        )
        .toList();
  }

  @override
  Future<void> update({required CommandDto dto}) async {
    await _db.managers.commands
        .filter(
          (commandsTableFilterComposer) =>
              commandsTableFilterComposer.id(dto.id),
        )
        .update(
          (commandsCompanion) => commandsCompanion(
            id: Value(dto.id),
            host: Value(dto.host),
            password: Value(dto.password),
            port: Value(dto.port),
            sudo: Value(dto.sudo),
            title: Value(dto.title),
            value: Value(dto.value),
            username: Value(dto.username),
            description: Value(dto.description),
          ),
        );
  }

  @override
  Stream<List<CommandDto>> watch() => _db.managers.commands.watch().map(
    (commands) =>
        commands
            .map(
              (command) => CommandDto(
                id: command.id,
                title: command.title,
                description: command.description,
                host: command.host,
                port: command.port,
                username: command.username,
                sudo: command.sudo,
                password: command.password, value: command.value,
              ),
            )
            .toList(),
  );
}
