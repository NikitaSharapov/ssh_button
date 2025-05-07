import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                onTap: () {},
                title: Text('Theme mode'),
                trailing: Text('Light', style: TextTheme.of(context).bodyLarge),
              ),
              ListTile(
                onTap: () {},
                title: Text('Seed color'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Purple', style: TextTheme.of(context).bodyLarge),
                    SizedBox(width: 8),
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text('Language'),
                trailing: Text('EN', style: TextTheme.of(context).bodyLarge),
              ),
            ],
          ),
          Spacer(),
          Text('App version: 1.0.0'),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Made with ❤️ by @nikitaSharapov'),
          ),
        ],
      ),
    );
  }
}
