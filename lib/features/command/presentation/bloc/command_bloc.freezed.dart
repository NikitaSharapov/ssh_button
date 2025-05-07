// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommandEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandEvent()';
}


}

/// @nodoc
class $CommandEventCopyWith<$Res>  {
$CommandEventCopyWith(CommandEvent _, $Res Function(CommandEvent) __);
}


/// @nodoc


class _CommandRecieveStarted implements CommandEvent {
  const _CommandRecieveStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommandRecieveStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandEvent.commandRecieveStarted()';
}


}




/// @nodoc


class _CommandUpdated implements CommandEvent {
  const _CommandUpdated({required this.command});
  

 final  Command command;

/// Create a copy of CommandEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandUpdatedCopyWith<_CommandUpdated> get copyWith => __$CommandUpdatedCopyWithImpl<_CommandUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommandUpdated&&(identical(other.command, command) || other.command == command));
}


@override
int get hashCode => Object.hash(runtimeType,command);

@override
String toString() {
  return 'CommandEvent.commandUpdated(command: $command)';
}


}

/// @nodoc
abstract mixin class _$CommandUpdatedCopyWith<$Res> implements $CommandEventCopyWith<$Res> {
  factory _$CommandUpdatedCopyWith(_CommandUpdated value, $Res Function(_CommandUpdated) _then) = __$CommandUpdatedCopyWithImpl;
@useResult
$Res call({
 Command command
});


$CommandCopyWith<$Res> get command;

}
/// @nodoc
class __$CommandUpdatedCopyWithImpl<$Res>
    implements _$CommandUpdatedCopyWith<$Res> {
  __$CommandUpdatedCopyWithImpl(this._self, this._then);

  final _CommandUpdated _self;
  final $Res Function(_CommandUpdated) _then;

/// Create a copy of CommandEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? command = null,}) {
  return _then(_CommandUpdated(
command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as Command,
  ));
}

/// Create a copy of CommandEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommandCopyWith<$Res> get command {
  
  return $CommandCopyWith<$Res>(_self.command, (value) {
    return _then(_self.copyWith(command: value));
  });
}
}

/// @nodoc


class _CommandDeleted implements CommandEvent {
  const _CommandDeleted({required this.id});
  

 final  String id;

/// Create a copy of CommandEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandDeletedCopyWith<_CommandDeleted> get copyWith => __$CommandDeletedCopyWithImpl<_CommandDeleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommandDeleted&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CommandEvent.commandDeleted(id: $id)';
}


}

/// @nodoc
abstract mixin class _$CommandDeletedCopyWith<$Res> implements $CommandEventCopyWith<$Res> {
  factory _$CommandDeletedCopyWith(_CommandDeleted value, $Res Function(_CommandDeleted) _then) = __$CommandDeletedCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$CommandDeletedCopyWithImpl<$Res>
    implements _$CommandDeletedCopyWith<$Res> {
  __$CommandDeletedCopyWithImpl(this._self, this._then);

  final _CommandDeleted _self;
  final $Res Function(_CommandDeleted) _then;

/// Create a copy of CommandEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_CommandDeleted(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CommandCreated implements CommandEvent {
  const _CommandCreated({required this.command});
  

 final  Command command;

/// Create a copy of CommandEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandCreatedCopyWith<_CommandCreated> get copyWith => __$CommandCreatedCopyWithImpl<_CommandCreated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommandCreated&&(identical(other.command, command) || other.command == command));
}


@override
int get hashCode => Object.hash(runtimeType,command);

@override
String toString() {
  return 'CommandEvent.commandCreated(command: $command)';
}


}

/// @nodoc
abstract mixin class _$CommandCreatedCopyWith<$Res> implements $CommandEventCopyWith<$Res> {
  factory _$CommandCreatedCopyWith(_CommandCreated value, $Res Function(_CommandCreated) _then) = __$CommandCreatedCopyWithImpl;
@useResult
$Res call({
 Command command
});


$CommandCopyWith<$Res> get command;

}
/// @nodoc
class __$CommandCreatedCopyWithImpl<$Res>
    implements _$CommandCreatedCopyWith<$Res> {
  __$CommandCreatedCopyWithImpl(this._self, this._then);

  final _CommandCreated _self;
  final $Res Function(_CommandCreated) _then;

/// Create a copy of CommandEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? command = null,}) {
  return _then(_CommandCreated(
command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as Command,
  ));
}

/// Create a copy of CommandEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommandCopyWith<$Res> get command {
  
  return $CommandCopyWith<$Res>(_self.command, (value) {
    return _then(_self.copyWith(command: value));
  });
}
}

/// @nodoc


class _CommandExecute implements CommandEvent {
  const _CommandExecute({required this.command});
  

 final  Command command;

/// Create a copy of CommandEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandExecuteCopyWith<_CommandExecute> get copyWith => __$CommandExecuteCopyWithImpl<_CommandExecute>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommandExecute&&(identical(other.command, command) || other.command == command));
}


@override
int get hashCode => Object.hash(runtimeType,command);

@override
String toString() {
  return 'CommandEvent.commandExecute(command: $command)';
}


}

/// @nodoc
abstract mixin class _$CommandExecuteCopyWith<$Res> implements $CommandEventCopyWith<$Res> {
  factory _$CommandExecuteCopyWith(_CommandExecute value, $Res Function(_CommandExecute) _then) = __$CommandExecuteCopyWithImpl;
@useResult
$Res call({
 Command command
});


$CommandCopyWith<$Res> get command;

}
/// @nodoc
class __$CommandExecuteCopyWithImpl<$Res>
    implements _$CommandExecuteCopyWith<$Res> {
  __$CommandExecuteCopyWithImpl(this._self, this._then);

  final _CommandExecute _self;
  final $Res Function(_CommandExecute) _then;

/// Create a copy of CommandEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? command = null,}) {
  return _then(_CommandExecute(
command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as Command,
  ));
}

/// Create a copy of CommandEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommandCopyWith<$Res> get command {
  
  return $CommandCopyWith<$Res>(_self.command, (value) {
    return _then(_self.copyWith(command: value));
  });
}
}

/// @nodoc
mixin _$CommandState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandState()';
}


}

/// @nodoc
class $CommandStateCopyWith<$Res>  {
$CommandStateCopyWith(CommandState _, $Res Function(CommandState) __);
}


/// @nodoc


class Initial implements CommandState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandState.initial()';
}


}




/// @nodoc


class CommandsSuccessRecieved implements CommandState {
  const CommandsSuccessRecieved({required final  List<Command> commands}): _commands = commands;
  

 final  List<Command> _commands;
 List<Command> get commands {
  if (_commands is EqualUnmodifiableListView) return _commands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_commands);
}


/// Create a copy of CommandState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandsSuccessRecievedCopyWith<CommandsSuccessRecieved> get copyWith => _$CommandsSuccessRecievedCopyWithImpl<CommandsSuccessRecieved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandsSuccessRecieved&&const DeepCollectionEquality().equals(other._commands, _commands));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_commands));

@override
String toString() {
  return 'CommandState.commandsSuccessRecieved(commands: $commands)';
}


}

/// @nodoc
abstract mixin class $CommandsSuccessRecievedCopyWith<$Res> implements $CommandStateCopyWith<$Res> {
  factory $CommandsSuccessRecievedCopyWith(CommandsSuccessRecieved value, $Res Function(CommandsSuccessRecieved) _then) = _$CommandsSuccessRecievedCopyWithImpl;
@useResult
$Res call({
 List<Command> commands
});




}
/// @nodoc
class _$CommandsSuccessRecievedCopyWithImpl<$Res>
    implements $CommandsSuccessRecievedCopyWith<$Res> {
  _$CommandsSuccessRecievedCopyWithImpl(this._self, this._then);

  final CommandsSuccessRecieved _self;
  final $Res Function(CommandsSuccessRecieved) _then;

/// Create a copy of CommandState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? commands = null,}) {
  return _then(CommandsSuccessRecieved(
commands: null == commands ? _self._commands : commands // ignore: cast_nullable_to_non_nullable
as List<Command>,
  ));
}


}

/// @nodoc


class CommandUpdateInProgress implements CommandState {
  const CommandUpdateInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandUpdateInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandState.commandUpdateInProgress()';
}


}




/// @nodoc


class CommandUpdateSuccess implements CommandState {
  const CommandUpdateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandUpdateSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandState.commandUpdateSuccess()';
}


}




/// @nodoc


class CommandUpdateFailed implements CommandState {
  const CommandUpdateFailed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandUpdateFailed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandState.commandUpdateFailed()';
}


}




/// @nodoc


class CommandDeleteInProgress implements CommandState {
  const CommandDeleteInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandDeleteInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandState.commandDeleteInProgress()';
}


}




/// @nodoc


class CommandDeleteSuccess implements CommandState {
  const CommandDeleteSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandDeleteSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandState.commandDeleteSuccess()';
}


}




/// @nodoc


class CommandDeleteFailed implements CommandState {
  const CommandDeleteFailed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandDeleteFailed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandState.commandDeleteFailed()';
}


}




/// @nodoc


class CommandCreateInProgress implements CommandState {
  const CommandCreateInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandCreateInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandState.commandCreateInProgress()';
}


}




/// @nodoc


class CommandCreateSuccess implements CommandState {
  const CommandCreateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandCreateSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandState.commandCreateSuccess()';
}


}




/// @nodoc


class CommandCreateFailed implements CommandState {
  const CommandCreateFailed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandCreateFailed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandState.commandCreateFailed()';
}


}




/// @nodoc


class CommandExecuteInProgress implements CommandState {
  const CommandExecuteInProgress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandExecuteInProgress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommandState.commandExecuteInProgress()';
}


}




/// @nodoc


class CommandExecuteSuccess implements CommandState {
  const CommandExecuteSuccess({required this.message});
  

 final  String message;

/// Create a copy of CommandState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandExecuteSuccessCopyWith<CommandExecuteSuccess> get copyWith => _$CommandExecuteSuccessCopyWithImpl<CommandExecuteSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandExecuteSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CommandState.commandExecuteSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $CommandExecuteSuccessCopyWith<$Res> implements $CommandStateCopyWith<$Res> {
  factory $CommandExecuteSuccessCopyWith(CommandExecuteSuccess value, $Res Function(CommandExecuteSuccess) _then) = _$CommandExecuteSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CommandExecuteSuccessCopyWithImpl<$Res>
    implements $CommandExecuteSuccessCopyWith<$Res> {
  _$CommandExecuteSuccessCopyWithImpl(this._self, this._then);

  final CommandExecuteSuccess _self;
  final $Res Function(CommandExecuteSuccess) _then;

/// Create a copy of CommandState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CommandExecuteSuccess(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CommandExecuteFailed implements CommandState {
  const CommandExecuteFailed({required this.message});
  

 final  String message;

/// Create a copy of CommandState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandExecuteFailedCopyWith<CommandExecuteFailed> get copyWith => _$CommandExecuteFailedCopyWithImpl<CommandExecuteFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandExecuteFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CommandState.commandExecuteFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class $CommandExecuteFailedCopyWith<$Res> implements $CommandStateCopyWith<$Res> {
  factory $CommandExecuteFailedCopyWith(CommandExecuteFailed value, $Res Function(CommandExecuteFailed) _then) = _$CommandExecuteFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CommandExecuteFailedCopyWithImpl<$Res>
    implements $CommandExecuteFailedCopyWith<$Res> {
  _$CommandExecuteFailedCopyWithImpl(this._self, this._then);

  final CommandExecuteFailed _self;
  final $Res Function(CommandExecuteFailed) _then;

/// Create a copy of CommandState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CommandExecuteFailed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
