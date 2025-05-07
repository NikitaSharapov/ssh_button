import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ssh_button/features/command/domain/entities/command_entity.dart';
import 'package:ssh_button/features/command/domain/repositories/command_repository.dart';
import 'package:ssh_button/infrastructure/services/crypt_service.dart';
import 'package:uuid/uuid.dart';

part 'command_event.dart';
part 'command_state.dart';
part 'command_bloc.freezed.dart';

class CommandBloc extends Bloc<CommandEvent, CommandState> {
  final CommandRepository _commandRepository;
  CommandBloc({required CommandRepository commandRepository})
    : _commandRepository = commandRepository,
      super(Initial()) {
    on<CommandEvent>(
      (event, emit) => switch (event) {
        _CommandRecieveStarted() => emit.forEach(
          _commandRepository.watch(),
          onData:
              (commands) =>
                  CommandState.commandsSuccessRecieved(commands: commands),
        ),
        _CommandUpdated(:final command) => _update(
          command: command,
          emit: emit,
        ),
        _CommandDeleted(:final id) => _delete(id: id, emit: emit),
        _CommandCreated(:final command) => _create(
          command: command,
          emit: emit,
        ),

        _CommandExecute(:final command) => _execute(
          command: command,
          emit: emit,
        ),
      },
    );
  }

  Future<void> _create({
    required Command command,
    required Emitter<CommandState> emit,
  }) async {
    try {
      emit(CommandState.commandCreateInProgress());
      await _commandRepository.create(
        command: command.copyWith(
          id: Uuid().v4(),
          password: await CryptService.encryptData(data: command.password),
        ),
      );
      emit(CommandState.commandCreateSuccess());
    } on Object catch (error, stackTrace) {
      emit(CommandState.commandCreateSuccess());
      rethrow; // or Error.throwWithStackTrace(error, stackTrace);
    } finally {
      // ...
    }
  }

  Future<void> _update({
    required Command command,
    required Emitter<CommandState> emit,
  }) async {
    try {
      emit(CommandState.commandUpdateInProgress());
      await _commandRepository.update(command: command);
      emit(CommandState.commandUpdateSuccess());
    } on Object catch (error, stackTrace) {
      emit(CommandState.commandUpdateFailed());
      rethrow; // or Error.throwWithStackTrace(error, stackTrace);
    } finally {
      // ...
    }
  }

  Future<void> _delete({
    required String id,
    required Emitter<CommandState> emit,
  }) async {
    try {
      emit(CommandState.commandDeleteInProgress());
      await _commandRepository.delete(id: id);
      emit(CommandState.commandDeleteSuccess());
    } on Object catch (error, stackTrace) {
      emit(CommandState.commandDeleteFailed());
      rethrow; // or Error.throwWithStackTrace(error, stackTrace);
    } finally {
      // ...
    }
  }

  Future<void> _execute({
    required Command command,
    required Emitter<CommandState> emit,
  }) async {
    try {
      emit(CommandState.commandExecuteInProgress());
      final result = await _commandRepository.execute(command: command);
      emit(CommandState.commandExecuteSuccess(message: result));
    } on Object catch (error, stackTrace) {
      emit(CommandState.commandExecuteFailed(message: error.toString()));
      rethrow; // or Error.throwWithStackTrace(error, stackTrace);
    } finally {
      // ...
    }
  }
}
