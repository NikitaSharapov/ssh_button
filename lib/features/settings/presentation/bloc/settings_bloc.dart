import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ssh_button/features/settings/domain/entities/app_settings_entity.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(Initial()) {
    on<SettingsEvent>(
      (event, emit) => switch (event) {
        _Loaded() => _load(emit: emit),
        _LanguageChanged() => throw UnimplementedError(),
        _BrightnessChanged(:final brightness) => _changeBrightness(
          emit: emit,
          newBrightness: brightness,
        ),
        _ColorChanged(:final color) => _changeColor(
          emit: emit,
          newColor: color,
        ),
      },
    );
  }

  _changeColor({
    required Emitter<SettingsState> emit,
    required AppColor newColor,
  }) async {
    try {
      if (state is Settings) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt('appColor', newColor.index);
        final updatedSettings = (state as Settings).settings.copyWith(
          color: newColor,
        );
        emit(SettingsState.settings(settings: updatedSettings));
      }
    } on Object catch (error, stackTrace) {
      rethrow; // or Error.throwWithStackTrace(error, stackTrace);
    } finally {
      // ...
    }
  }

  _changeBrightness({
    required Emitter<SettingsState> emit,
    required AppBrightness newBrightness,
  }) async {
    try {
      if (state is Settings) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt('appBrightness', newBrightness.index);
        final updatedSettings = (state as Settings).settings.copyWith(
          brightness: newBrightness,
        );
        emit(SettingsState.settings(settings: updatedSettings));
      }
    } on Object catch (error, stackTrace) {
      rethrow; // or Error.throwWithStackTrace(error, stackTrace);
    } finally {
      // ...
    }
  }

  Future<void> _load({required Emitter<SettingsState> emit}) async {
    try {
      final prefs = await SharedPreferences.getInstance();

      AppBrightness appBrightness = AppSettings.defaultSettings().brightness;
      final savedAppBrightness = prefs.getInt('appBrightness');
      if (savedAppBrightness == null) {
        await prefs.setInt('appBrightness', appBrightness.index);
      } else {
        appBrightness = AppBrightness.values[savedAppBrightness];
      }
      AppLanguage appLanguage = AppSettings.defaultSettings().language;
      final savedAppLanguage = prefs.getInt('appLanguage');
      if (savedAppLanguage == null) {
        await prefs.setInt('appLanguage', appLanguage.index);
      } else {
        appLanguage = AppLanguage.values[savedAppLanguage];
      }

      AppColor appColor = AppSettings.defaultSettings().color;
      final savedAppColor = prefs.getInt('appColor');
      if (savedAppColor == null) {
        await prefs.setInt('appColor', appColor.index);
      } else {
        appColor = AppColor.values[savedAppColor];
      }

      emit(
        SettingsState.settings(
          settings: AppSettings(
            brightness: appBrightness,
            color: appColor,
            language: appLanguage,
          ),
        ),
      );
    } on Object catch (error, stackTrace) {
      emit(SettingsState.settings(settings: AppSettings.defaultSettings()));
      rethrow; // or Error.throwWithStackTrace(error, stackTrace);
    } finally {
      // ...
    }
  }
}
