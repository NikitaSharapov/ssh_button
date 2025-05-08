import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_entity.freezed.dart';

@freezed
abstract class AppSettings with _$AppSettings {
  const AppSettings._();
  const factory AppSettings({
    required AppBrightness brightness,
    required AppColor color,
    required AppLanguage language,
  }) = _AppSettings;

  const factory AppSettings.defaultSettings({
    @Default(AppBrightness.system) AppBrightness brightness,
    @Default(AppColor.purple) AppColor color,
    @Default(AppLanguage.en) AppLanguage language,
  }) = _AppDefaultSettings;
}

enum AppBrightness { light, dark, system }

extension AppBrightnessDisplayName on AppBrightness {
  String get displayName => switch (this) {
    AppBrightness.light => 'Light',
    AppBrightness.dark => 'Dark',
    AppBrightness.system => 'System',
  };
}

enum AppLanguage { ru, en, kz }

enum AppColor { purple, orange, teal, red }

extension AppColorDisplayName on AppColor {
  String get displayName => switch (this) {
    AppColor.purple => 'Purple',
    AppColor.orange => 'Orange',
    AppColor.teal => 'Teal',
    AppColor.red => 'Red',
  };
}
