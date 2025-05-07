part of 'command_bloc.dart';

@freezed
sealed class CommandEvent with _$CommandEvent {
  const factory CommandEvent.commandRecieveStarted() = _CommandRecieveStarted;
  const factory CommandEvent.commandUpdated({required Command command}) =
      _CommandUpdated;
  const factory CommandEvent.commandDeleted({required String id}) =
      _CommandDeleted;
  const factory CommandEvent.commandCreated({required Command command}) =
      _CommandCreated;

  const factory CommandEvent.commandExecute({required Command command}) =
      _CommandExecute;
}
