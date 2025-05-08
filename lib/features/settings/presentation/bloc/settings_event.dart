part of 'settings_bloc.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.loaded() = _Loaded;
  const factory SettingsEvent.languageChanged({required AppLanguage language}) = _LanguageChanged;
  const factory SettingsEvent.brightnessChanged({
    required AppBrightness brightness,
  }) = _BrightnessChanged;
  const factory SettingsEvent.colorChanged({required AppColor color}) = _ColorChanged;
}
