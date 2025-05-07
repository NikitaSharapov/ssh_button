import 'package:ssh_button/features/command/domain/entities/command_entity.dart';

abstract interface class CommandRepository {
  Stream<List<Command>> watch();

  Future<void> create({required Command command});

  Future<String> execute({required Command command});

  Future<void> update({required Command command});

  Future<void> delete({required String id});

  Future<List<Command>> readAll();

  Future<Command?> read({required String id});
}
