import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssh_button/app.dart';
import 'package:ssh_button/features/settings/presentation/bloc/settings_bloc.dart';

void main() {
  runApp(BlocProvider(create: (context) => SettingsBloc()..add(SettingsEvent.loaded()), child: const App()));
}
