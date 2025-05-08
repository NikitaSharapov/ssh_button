import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssh_button/features/settings/domain/entities/app_settings_entity.dart';
import 'package:ssh_button/features/settings/presentation/bloc/settings_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder:
          (context, state) => switch (state) {
            Settings(:final settings) => Scaffold(
              appBar: AppBar(title: Text('Settings')),
              body: Column(
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        onTap: () {
                          showDialog<String>(
                            context: context,
                            builder:
                                (BuildContext newContext) => AlertDialog(
                                  title: const Text('Theme mode'),
                                  content: BlocBuilder<
                                    SettingsBloc,
                                    SettingsState
                                  >(
                                    builder:
                                        (context, state) => switch (state) {
                                          Settings(:final settings) => Wrap(
                                            spacing: 8,
                                            children:
                                                AppBrightness.values
                                                    .map(
                                                      (
                                                        appBrightnessItem,
                                                      ) => ChoiceChip(
                                                        label: Text(
                                                          appBrightnessItem
                                                              .displayName,
                                                        ),
                                                        selected:
                                                            appBrightnessItem ==
                                                            settings.brightness,
                                                        onSelected: (
                                                          bool selected,
                                                        ) {
                                                          if (selected) {
                                                            context
                                                                .read<
                                                                  SettingsBloc
                                                                >()
                                                                .add(
                                                                  SettingsEvent.brightnessChanged(
                                                                    brightness:
                                                                        appBrightnessItem,
                                                                  ),
                                                                );
                                                          }
                                                        },
                                                      ),
                                                    )
                                                    .toList(),
                                          ),
                                          _ => Wrap(
                                            spacing: 8,
                                            children:
                                                AppBrightness.values
                                                    .map(
                                                      (
                                                        appBrightnessItem,
                                                      ) => ChoiceChip(
                                                        label: Text(
                                                          appBrightnessItem
                                                              .displayName,
                                                        ),
                                                        selected: false,
                                                        onSelected: (
                                                          bool selected,
                                                        ) {
                                                          if (selected) {
                                                            context
                                                                .read<
                                                                  SettingsBloc
                                                                >()
                                                                .add(
                                                                  SettingsEvent.brightnessChanged(
                                                                    brightness:
                                                                        appBrightnessItem,
                                                                  ),
                                                                );
                                                          }
                                                        },
                                                      ),
                                                    )
                                                    .toList(),
                                          ),
                                        },
                                  ),
                                ),
                          );
                        },
                        title: Text('Theme mode'),
                        trailing: Text(
                          settings.brightness.displayName,
                          style: TextTheme.of(context).bodyLarge,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          showDialog<String>(
                            context: context,
                            builder:
                                (BuildContext newContext) => AlertDialog(
                                  title: const Text('Seed color'),
                                  content: BlocBuilder<
                                    SettingsBloc,
                                    SettingsState
                                  >(
                                    builder:
                                        (context, state) => switch (state) {
                                          Settings(:final settings) => Wrap(
                                            spacing: 8,
                                            children:
                                                AppColor.values
                                                    .map(
                                                      (
                                                        appColorItem,
                                                      ) => ChoiceChip(
                                                        label: Text(
                                                          appColorItem
                                                              .displayName,
                                                        ),
                                                        selected:
                                                            appColorItem ==
                                                            settings.color,
                                                        onSelected: (
                                                          bool selected,
                                                        ) {
                                                          if (selected) {
                                                            context
                                                                .read<
                                                                  SettingsBloc
                                                                >()
                                                                .add(
                                                                  SettingsEvent.colorChanged(
                                                                    color:
                                                                        appColorItem,
                                                                  ),
                                                                );
                                                          }
                                                        },
                                                      ),
                                                    )
                                                    .toList(),
                                          ),
                                          _ => Wrap(
                                            spacing: 8,
                                            children:
                                                AppBrightness.values
                                                    .map(
                                                      (
                                                        appBrightnessItem,
                                                      ) => ChoiceChip(
                                                        label: Text(
                                                          appBrightnessItem
                                                              .displayName,
                                                        ),
                                                        selected: false,
                                                        onSelected: (
                                                          bool selected,
                                                        ) {
                                                          if (selected) {
                                                            context
                                                                .read<
                                                                  SettingsBloc
                                                                >()
                                                                .add(
                                                                  SettingsEvent.brightnessChanged(
                                                                    brightness:
                                                                        appBrightnessItem,
                                                                  ),
                                                                );
                                                          }
                                                        },
                                                      ),
                                                    )
                                                    .toList(),
                                          ),
                                        },
                                  ),
                                ),
                          );
                        },
                        title: Text('Seed color'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              settings.color.displayName,
                              style: TextTheme.of(context).bodyLarge,
                            ),
                            SizedBox(width: 8),
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: switch (settings.color) {
                                    AppColor.purple => Colors.purple,
                                    AppColor.orange => Colors.orange,
                                    AppColor.teal => Colors.teal,
                                    AppColor.red => Colors.red,
                                  },
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
                        trailing: Text(
                          'EN',
                          style: TextTheme.of(context).bodyLarge,
                        ),
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
            ),
            _ => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Loading', style: TextTheme.of(context).bodyLarge),
                  SizedBox(height: 8),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          },
    );
  }
}
