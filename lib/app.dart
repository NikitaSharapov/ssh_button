import 'package:flutter/material.dart';
import 'package:ssh_button/features/command/presentation/view/commands_screen.dart';
import 'package:ssh_button/features/settings/presentation/view/settings_screen.dart';
import 'package:ssh_button/infrastructure/database/app_database.dart';

final AppDatabase appDatabase = AppDatabase();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SSH Button',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.light,
        ),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Commands'),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
            ),
          ],
          // bottom: const TabBar(
          //   tabs: <Widget>[Tab(text: 'Commands'), Tab(text: 'Processes')],
          // ),
        ),
        body: CommandsScreen(),
      ),
    );
  }
}
