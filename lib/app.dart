import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssh_button/features/command/presentation/view/commands_screen.dart';
import 'package:ssh_button/features/settings/domain/entities/app_settings_entity.dart';
import 'package:ssh_button/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:ssh_button/features/settings/presentation/view/settings_screen.dart';
import 'package:ssh_button/infrastructure/database/app_database.dart';

final AppDatabase appDatabase = AppDatabase();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'SSH Button',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: switch (state) {
                Settings(:final settings) => switch (settings.color) {
                  AppColor.purple => Colors.purple,
                  AppColor.orange => Colors.orange,
                  AppColor.teal => Colors.teal,
                  AppColor.red => Colors.red,
                },
                _ => Colors.deepPurple,
              },
              brightness: switch (state) {
                Settings(:final settings) => switch (settings.brightness) {
                  AppBrightness.light => Brightness.light,
                  AppBrightness.dark => Brightness.dark,
                  AppBrightness.system =>
                    PlatformDispatcher.instance.platformBrightness,
                },
                _ => PlatformDispatcher.instance.platformBrightness,
              },
            ),
          ),
          home: MainScreen(),
        );
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Commands'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
        // bottom: const TabBar(
        //   tabs: <Widget>[Tab(text: 'Commands'), Tab(text: 'Processes')],
        // ),
      ),
      body: CommandsScreen(),
    );
  }
}
