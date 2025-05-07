// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Command {

 String get id; String get title; String? get description; String get host; String get value; int get port; String get username; bool get sudo; String get password;
/// Create a copy of Command
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandCopyWith<Command> get copyWith => _$CommandCopyWithImpl<Command>(this as Command, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Command&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.host, host) || other.host == host)&&(identical(other.value, value) || other.value == value)&&(identical(other.port, port) || other.port == port)&&(identical(other.username, username) || other.username == username)&&(identical(other.sudo, sudo) || other.sudo == sudo)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,host,value,port,username,sudo,password);

@override
String toString() {
  return 'Command(id: $id, title: $title, description: $description, host: $host, value: $value, port: $port, username: $username, sudo: $sudo, password: $password)';
}


}

/// @nodoc
abstract mixin class $CommandCopyWith<$Res>  {
  factory $CommandCopyWith(Command value, $Res Function(Command) _then) = _$CommandCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? description, String host, String value, int port, String username, bool sudo, String password
});




}
/// @nodoc
class _$CommandCopyWithImpl<$Res>
    implements $CommandCopyWith<$Res> {
  _$CommandCopyWithImpl(this._self, this._then);

  final Command _self;
  final $Res Function(Command) _then;

/// Create a copy of Command
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? host = null,Object? value = null,Object? port = null,Object? username = null,Object? sudo = null,Object? password = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,sudo: null == sudo ? _self.sudo : sudo // ignore: cast_nullable_to_non_nullable
as bool,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _Command implements Command {
  const _Command({required this.id, required this.title, required this.description, required this.host, required this.value, required this.port, required this.username, required this.sudo, required this.password});
  

@override final  String id;
@override final  String title;
@override final  String? description;
@override final  String host;
@override final  String value;
@override final  int port;
@override final  String username;
@override final  bool sudo;
@override final  String password;

/// Create a copy of Command
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandCopyWith<_Command> get copyWith => __$CommandCopyWithImpl<_Command>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Command&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.host, host) || other.host == host)&&(identical(other.value, value) || other.value == value)&&(identical(other.port, port) || other.port == port)&&(identical(other.username, username) || other.username == username)&&(identical(other.sudo, sudo) || other.sudo == sudo)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,host,value,port,username,sudo,password);

@override
String toString() {
  return 'Command(id: $id, title: $title, description: $description, host: $host, value: $value, port: $port, username: $username, sudo: $sudo, password: $password)';
}


}

/// @nodoc
abstract mixin class _$CommandCopyWith<$Res> implements $CommandCopyWith<$Res> {
  factory _$CommandCopyWith(_Command value, $Res Function(_Command) _then) = __$CommandCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? description, String host, String value, int port, String username, bool sudo, String password
});




}
/// @nodoc
class __$CommandCopyWithImpl<$Res>
    implements _$CommandCopyWith<$Res> {
  __$CommandCopyWithImpl(this._self, this._then);

  final _Command _self;
  final $Res Function(_Command) _then;

/// Create a copy of Command
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? host = null,Object? value = null,Object? port = null,Object? username = null,Object? sudo = null,Object? password = null,}) {
  return _then(_Command(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,sudo: null == sudo ? _self.sudo : sudo // ignore: cast_nullable_to_non_nullable
as bool,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
