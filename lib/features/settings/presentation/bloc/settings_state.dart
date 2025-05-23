part of 'settings_bloc.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = Initial;
  const factory SettingsState.settings({required AppSettings settings}) =
      Settings;
}
