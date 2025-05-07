// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'command_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommandDto {

 String get id; String get title; String? get description; String get host; int get port; String get value; String get username; bool get sudo; String get password;
/// Create a copy of CommandDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommandDtoCopyWith<CommandDto> get copyWith => _$CommandDtoCopyWithImpl<CommandDto>(this as CommandDto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommandDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.host, host) || other.host == host)&&(identical(other.port, port) || other.port == port)&&(identical(other.value, value) || other.value == value)&&(identical(other.username, username) || other.username == username)&&(identical(other.sudo, sudo) || other.sudo == sudo)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,host,port,value,username,sudo,password);

@override
String toString() {
  return 'CommandDto(id: $id, title: $title, description: $description, host: $host, port: $port, value: $value, username: $username, sudo: $sudo, password: $password)';
}


}

/// @nodoc
abstract mixin class $CommandDtoCopyWith<$Res>  {
  factory $CommandDtoCopyWith(CommandDto value, $Res Function(CommandDto) _then) = _$CommandDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? description, String host, int port, String value, String username, bool sudo, String password
});




}
/// @nodoc
class _$CommandDtoCopyWithImpl<$Res>
    implements $CommandDtoCopyWith<$Res> {
  _$CommandDtoCopyWithImpl(this._self, this._then);

  final CommandDto _self;
  final $Res Function(CommandDto) _then;

/// Create a copy of CommandDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? host = null,Object? port = null,Object? value = null,Object? username = null,Object? sudo = null,Object? password = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,sudo: null == sudo ? _self.sudo : sudo // ignore: cast_nullable_to_non_nullable
as bool,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _CommandDto implements CommandDto {
  const _CommandDto({required this.id, required this.title, required this.description, required this.host, required this.port, required this.value, required this.username, required this.sudo, required this.password});
  

@override final  String id;
@override final  String title;
@override final  String? description;
@override final  String host;
@override final  int port;
@override final  String value;
@override final  String username;
@override final  bool sudo;
@override final  String password;

/// Create a copy of CommandDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommandDtoCopyWith<_CommandDto> get copyWith => __$CommandDtoCopyWithImpl<_CommandDto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommandDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.host, host) || other.host == host)&&(identical(other.port, port) || other.port == port)&&(identical(other.value, value) || other.value == value)&&(identical(other.username, username) || other.username == username)&&(identical(other.sudo, sudo) || other.sudo == sudo)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,host,port,value,username,sudo,password);

@override
String toString() {
  return 'CommandDto(id: $id, title: $title, description: $description, host: $host, port: $port, value: $value, username: $username, sudo: $sudo, password: $password)';
}


}

/// @nodoc
abstract mixin class _$CommandDtoCopyWith<$Res> implements $CommandDtoCopyWith<$Res> {
  factory _$CommandDtoCopyWith(_CommandDto value, $Res Function(_CommandDto) _then) = __$CommandDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? description, String host, int port, String value, String username, bool sudo, String password
});




}
/// @nodoc
class __$CommandDtoCopyWithImpl<$Res>
    implements _$CommandDtoCopyWith<$Res> {
  __$CommandDtoCopyWithImpl(this._self, this._then);

  final _CommandDto _self;
  final $Res Function(_CommandDto) _then;

/// Create a copy of CommandDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? host = null,Object? port = null,Object? value = null,Object? username = null,Object? sudo = null,Object? password = null,}) {
  return _then(_CommandDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,sudo: null == sudo ? _self.sudo : sudo // ignore: cast_nullable_to_non_nullable
as bool,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
