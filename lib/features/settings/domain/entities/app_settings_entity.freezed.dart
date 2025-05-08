// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppSettings {

 AppBrightness get brightness; AppColor get color; AppLanguage get language;
/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<AppSettings> get copyWith => _$AppSettingsCopyWithImpl<AppSettings>(this as AppSettings, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettings&&(identical(other.brightness, brightness) || other.brightness == brightness)&&(identical(other.color, color) || other.color == color)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,brightness,color,language);

@override
String toString() {
  return 'AppSettings(brightness: $brightness, color: $color, language: $language)';
}


}

/// @nodoc
abstract mixin class $AppSettingsCopyWith<$Res>  {
  factory $AppSettingsCopyWith(AppSettings value, $Res Function(AppSettings) _then) = _$AppSettingsCopyWithImpl;
@useResult
$Res call({
 AppBrightness brightness, AppColor color, AppLanguage language
});




}
/// @nodoc
class _$AppSettingsCopyWithImpl<$Res>
    implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._self, this._then);

  final AppSettings _self;
  final $Res Function(AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brightness = null,Object? color = null,Object? language = null,}) {
  return _then(_self.copyWith(
brightness: null == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as AppBrightness,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as AppColor,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguage,
  ));
}

}


/// @nodoc


class _AppSettings extends AppSettings {
  const _AppSettings({required this.brightness, required this.color, required this.language}): super._();
  

@override final  AppBrightness brightness;
@override final  AppColor color;
@override final  AppLanguage language;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppSettingsCopyWith<_AppSettings> get copyWith => __$AppSettingsCopyWithImpl<_AppSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppSettings&&(identical(other.brightness, brightness) || other.brightness == brightness)&&(identical(other.color, color) || other.color == color)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,brightness,color,language);

@override
String toString() {
  return 'AppSettings(brightness: $brightness, color: $color, language: $language)';
}


}

/// @nodoc
abstract mixin class _$AppSettingsCopyWith<$Res> implements $AppSettingsCopyWith<$Res> {
  factory _$AppSettingsCopyWith(_AppSettings value, $Res Function(_AppSettings) _then) = __$AppSettingsCopyWithImpl;
@override @useResult
$Res call({
 AppBrightness brightness, AppColor color, AppLanguage language
});




}
/// @nodoc
class __$AppSettingsCopyWithImpl<$Res>
    implements _$AppSettingsCopyWith<$Res> {
  __$AppSettingsCopyWithImpl(this._self, this._then);

  final _AppSettings _self;
  final $Res Function(_AppSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brightness = null,Object? color = null,Object? language = null,}) {
  return _then(_AppSettings(
brightness: null == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as AppBrightness,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as AppColor,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguage,
  ));
}


}

/// @nodoc


class _AppDefaultSettings extends AppSettings {
  const _AppDefaultSettings({this.brightness = AppBrightness.system, this.color = AppColor.purple, this.language = AppLanguage.en}): super._();
  

@override@JsonKey() final  AppBrightness brightness;
@override@JsonKey() final  AppColor color;
@override@JsonKey() final  AppLanguage language;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppDefaultSettingsCopyWith<_AppDefaultSettings> get copyWith => __$AppDefaultSettingsCopyWithImpl<_AppDefaultSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppDefaultSettings&&(identical(other.brightness, brightness) || other.brightness == brightness)&&(identical(other.color, color) || other.color == color)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,brightness,color,language);

@override
String toString() {
  return 'AppSettings.defaultSettings(brightness: $brightness, color: $color, language: $language)';
}


}

/// @nodoc
abstract mixin class _$AppDefaultSettingsCopyWith<$Res> implements $AppSettingsCopyWith<$Res> {
  factory _$AppDefaultSettingsCopyWith(_AppDefaultSettings value, $Res Function(_AppDefaultSettings) _then) = __$AppDefaultSettingsCopyWithImpl;
@override @useResult
$Res call({
 AppBrightness brightness, AppColor color, AppLanguage language
});




}
/// @nodoc
class __$AppDefaultSettingsCopyWithImpl<$Res>
    implements _$AppDefaultSettingsCopyWith<$Res> {
  __$AppDefaultSettingsCopyWithImpl(this._self, this._then);

  final _AppDefaultSettings _self;
  final $Res Function(_AppDefaultSettings) _then;

/// Create a copy of AppSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brightness = null,Object? color = null,Object? language = null,}) {
  return _then(_AppDefaultSettings(
brightness: null == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as AppBrightness,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as AppColor,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguage,
  ));
}


}

// dart format on
