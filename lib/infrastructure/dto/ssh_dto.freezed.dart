// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ssh_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExecuteSshCommandDto {

 String get host; int get port; String get username; String get password; String get command; bool get sudo;
/// Create a copy of ExecuteSshCommandDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExecuteSshCommandDtoCopyWith<ExecuteSshCommandDto> get copyWith => _$ExecuteSshCommandDtoCopyWithImpl<ExecuteSshCommandDto>(this as ExecuteSshCommandDto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExecuteSshCommandDto&&(identical(other.host, host) || other.host == host)&&(identical(other.port, port) || other.port == port)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.command, command) || other.command == command)&&(identical(other.sudo, sudo) || other.sudo == sudo));
}


@override
int get hashCode => Object.hash(runtimeType,host,port,username,password,command,sudo);

@override
String toString() {
  return 'ExecuteSshCommandDto(host: $host, port: $port, username: $username, password: $password, command: $command, sudo: $sudo)';
}


}

/// @nodoc
abstract mixin class $ExecuteSshCommandDtoCopyWith<$Res>  {
  factory $ExecuteSshCommandDtoCopyWith(ExecuteSshCommandDto value, $Res Function(ExecuteSshCommandDto) _then) = _$ExecuteSshCommandDtoCopyWithImpl;
@useResult
$Res call({
 String host, int port, String username, String password, String command, bool sudo
});




}
/// @nodoc
class _$ExecuteSshCommandDtoCopyWithImpl<$Res>
    implements $ExecuteSshCommandDtoCopyWith<$Res> {
  _$ExecuteSshCommandDtoCopyWithImpl(this._self, this._then);

  final ExecuteSshCommandDto _self;
  final $Res Function(ExecuteSshCommandDto) _then;

/// Create a copy of ExecuteSshCommandDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? host = null,Object? port = null,Object? username = null,Object? password = null,Object? command = null,Object? sudo = null,}) {
  return _then(_self.copyWith(
host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as String,sudo: null == sudo ? _self.sudo : sudo // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _ExecuteSshCommandDto implements ExecuteSshCommandDto {
  const _ExecuteSshCommandDto({required this.host, required this.port, required this.username, required this.password, required this.command, required this.sudo});
  

@override final  String host;
@override final  int port;
@override final  String username;
@override final  String password;
@override final  String command;
@override final  bool sudo;

/// Create a copy of ExecuteSshCommandDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExecuteSshCommandDtoCopyWith<_ExecuteSshCommandDto> get copyWith => __$ExecuteSshCommandDtoCopyWithImpl<_ExecuteSshCommandDto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExecuteSshCommandDto&&(identical(other.host, host) || other.host == host)&&(identical(other.port, port) || other.port == port)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.command, command) || other.command == command)&&(identical(other.sudo, sudo) || other.sudo == sudo));
}


@override
int get hashCode => Object.hash(runtimeType,host,port,username,password,command,sudo);

@override
String toString() {
  return 'ExecuteSshCommandDto(host: $host, port: $port, username: $username, password: $password, command: $command, sudo: $sudo)';
}


}

/// @nodoc
abstract mixin class _$ExecuteSshCommandDtoCopyWith<$Res> implements $ExecuteSshCommandDtoCopyWith<$Res> {
  factory _$ExecuteSshCommandDtoCopyWith(_ExecuteSshCommandDto value, $Res Function(_ExecuteSshCommandDto) _then) = __$ExecuteSshCommandDtoCopyWithImpl;
@override @useResult
$Res call({
 String host, int port, String username, String password, String command, bool sudo
});




}
/// @nodoc
class __$ExecuteSshCommandDtoCopyWithImpl<$Res>
    implements _$ExecuteSshCommandDtoCopyWith<$Res> {
  __$ExecuteSshCommandDtoCopyWithImpl(this._self, this._then);

  final _ExecuteSshCommandDto _self;
  final $Res Function(_ExecuteSshCommandDto) _then;

/// Create a copy of ExecuteSshCommandDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? host = null,Object? port = null,Object? username = null,Object? password = null,Object? command = null,Object? sudo = null,}) {
  return _then(_ExecuteSshCommandDto(
host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as String,sudo: null == sudo ? _self.sudo : sudo // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
