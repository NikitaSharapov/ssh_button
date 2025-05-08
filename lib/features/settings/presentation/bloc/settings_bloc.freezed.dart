// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent()';
}


}

/// @nodoc
class $SettingsEventCopyWith<$Res>  {
$SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}


/// @nodoc


class _Loaded implements SettingsEvent {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.loaded()';
}


}




/// @nodoc


class _LanguageChanged implements SettingsEvent {
  const _LanguageChanged({required this.language});
  

 final  AppLanguage language;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageChangedCopyWith<_LanguageChanged> get copyWith => __$LanguageChangedCopyWithImpl<_LanguageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageChanged&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,language);

@override
String toString() {
  return 'SettingsEvent.languageChanged(language: $language)';
}


}

/// @nodoc
abstract mixin class _$LanguageChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$LanguageChangedCopyWith(_LanguageChanged value, $Res Function(_LanguageChanged) _then) = __$LanguageChangedCopyWithImpl;
@useResult
$Res call({
 AppLanguage language
});




}
/// @nodoc
class __$LanguageChangedCopyWithImpl<$Res>
    implements _$LanguageChangedCopyWith<$Res> {
  __$LanguageChangedCopyWithImpl(this._self, this._then);

  final _LanguageChanged _self;
  final $Res Function(_LanguageChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? language = null,}) {
  return _then(_LanguageChanged(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguage,
  ));
}


}

/// @nodoc


class _BrightnessChanged implements SettingsEvent {
  const _BrightnessChanged({required this.brightness});
  

 final  AppBrightness brightness;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrightnessChangedCopyWith<_BrightnessChanged> get copyWith => __$BrightnessChangedCopyWithImpl<_BrightnessChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrightnessChanged&&(identical(other.brightness, brightness) || other.brightness == brightness));
}


@override
int get hashCode => Object.hash(runtimeType,brightness);

@override
String toString() {
  return 'SettingsEvent.brightnessChanged(brightness: $brightness)';
}


}

/// @nodoc
abstract mixin class _$BrightnessChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$BrightnessChangedCopyWith(_BrightnessChanged value, $Res Function(_BrightnessChanged) _then) = __$BrightnessChangedCopyWithImpl;
@useResult
$Res call({
 AppBrightness brightness
});




}
/// @nodoc
class __$BrightnessChangedCopyWithImpl<$Res>
    implements _$BrightnessChangedCopyWith<$Res> {
  __$BrightnessChangedCopyWithImpl(this._self, this._then);

  final _BrightnessChanged _self;
  final $Res Function(_BrightnessChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? brightness = null,}) {
  return _then(_BrightnessChanged(
brightness: null == brightness ? _self.brightness : brightness // ignore: cast_nullable_to_non_nullable
as AppBrightness,
  ));
}


}

/// @nodoc


class _ColorChanged implements SettingsEvent {
  const _ColorChanged({required this.color});
  

 final  AppColor color;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColorChangedCopyWith<_ColorChanged> get copyWith => __$ColorChangedCopyWithImpl<_ColorChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ColorChanged&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,color);

@override
String toString() {
  return 'SettingsEvent.colorChanged(color: $color)';
}


}

/// @nodoc
abstract mixin class _$ColorChangedCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$ColorChangedCopyWith(_ColorChanged value, $Res Function(_ColorChanged) _then) = __$ColorChangedCopyWithImpl;
@useResult
$Res call({
 AppColor color
});




}
/// @nodoc
class __$ColorChangedCopyWithImpl<$Res>
    implements _$ColorChangedCopyWith<$Res> {
  __$ColorChangedCopyWithImpl(this._self, this._then);

  final _ColorChanged _self;
  final $Res Function(_ColorChanged) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? color = null,}) {
  return _then(_ColorChanged(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as AppColor,
  ));
}


}

/// @nodoc
mixin _$SettingsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsState()';
}


}

/// @nodoc
class $SettingsStateCopyWith<$Res>  {
$SettingsStateCopyWith(SettingsState _, $Res Function(SettingsState) __);
}


/// @nodoc


class Initial implements SettingsState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsState.initial()';
}


}




/// @nodoc


class Settings implements SettingsState {
  const Settings({required this.settings});
  

 final  AppSettings settings;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsCopyWith<Settings> get copyWith => _$SettingsCopyWithImpl<Settings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Settings&&(identical(other.settings, settings) || other.settings == settings));
}


@override
int get hashCode => Object.hash(runtimeType,settings);

@override
String toString() {
  return 'SettingsState.settings(settings: $settings)';
}


}

/// @nodoc
abstract mixin class $SettingsCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) _then) = _$SettingsCopyWithImpl;
@useResult
$Res call({
 AppSettings settings
});


$AppSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$SettingsCopyWithImpl<$Res>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._self, this._then);

  final Settings _self;
  final $Res Function(Settings) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? settings = null,}) {
  return _then(Settings(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as AppSettings,
  ));
}

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get settings {
  
  return $AppSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}

// dart format on
