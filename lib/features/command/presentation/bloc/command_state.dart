part of 'command_bloc.dart';

@freezed
sealed class CommandState with _$CommandState {
  const factory CommandState.initial() = Initial;
  const factory CommandState.commandsSuccessRecieved({
    required List<Command> commands,
  }) = CommandsSuccessRecieved;
  const factory CommandState.commandUpdateInProgress() =
      CommandUpdateInProgress;
  const factory CommandState.commandUpdateSuccess() = CommandUpdateSuccess;
  const factory CommandState.commandUpdateFailed() = CommandUpdateFailed;

  const factory CommandState.commandDeleteInProgress() =
      CommandDeleteInProgress;
  const factory CommandState.commandDeleteSuccess() = CommandDeleteSuccess;
  const factory CommandState.commandDeleteFailed() = CommandDeleteFailed;

  const factory CommandState.commandCreateInProgress() =
      CommandCreateInProgress;
  const factory CommandState.commandCreateSuccess() = CommandCreateSuccess;
  const factory CommandState.commandCreateFailed() = CommandCreateFailed;

  const factory CommandState.commandExecuteInProgress() =
      CommandExecuteInProgress;
  const factory CommandState.commandExecuteSuccess({required String message}) = CommandExecuteSuccess;
  const factory CommandState.commandExecuteFailed({required String message}) = CommandExecuteFailed;
}
