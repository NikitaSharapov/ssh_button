import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssh_button/app.dart';
import 'package:ssh_button/features/command/data/repositories/command_repository_impl.dart';
import 'package:ssh_button/features/command/domain/entities/command_entity.dart';
import 'package:ssh_button/features/command/domain/repositories/command_repository.dart';
import 'package:ssh_button/features/command/presentation/bloc/command_bloc.dart';
import 'package:ssh_button/features/command/presentation/view/command_add_screen.dart';
import 'package:ssh_button/features/command/presentation/view/command_edit_screen.dart';
import 'package:ssh_button/features/command/presentation/view/ui/command_card.dart';
import 'package:ssh_button/infrastructure/database/dao/command_dao/command_dao.dart';
import 'package:ssh_button/infrastructure/database/dao/command_dao/implementations/drift_command_dao.dart';
import 'package:ssh_button/infrastructure/services/ssh_service/implementations/dartssh2_ssh_service.dart';
import 'package:ssh_button/infrastructure/services/ssh_service/ssh_service.dart';
import 'package:ssh_button/main.dart';

class CommandsScreen extends StatelessWidget {
  const CommandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<SshService>(
      create: (context) => Dartssh2SshService(),
      child: RepositoryProvider<CommandDao>(
        create: (context) => DriftCommandDao(db: appDatabase),
        child: RepositoryProvider<CommandRepository>(
          create:
              (context) => CommandRepositoryImpl(
                commandDao: context.read<CommandDao>(),
                sshService: context.read<SshService>(),
              ),
          child: BlocProvider(
            create:
                (context) => CommandBloc(
                  commandRepository: context.read<CommandRepository>(),
                )..add(CommandEvent.commandRecieveStarted()),
            child: BlocListener<CommandBloc, CommandState>(
              listener: (context, state) {
                switch (state) {
                  case CommandExecuteInProgress():
                    {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            children: [
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
                              SizedBox(width: 16),
                              const Text('Command executing'),
                            ],
                          ),
                          duration: const Duration(seconds: 9999),
                        ),
                      );
                      break;
                    }
                  case CommandExecuteFailed(:final message):
                    {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Command execute failed: $message'),
                          duration: const Duration(seconds: 10),
                        ),
                      );
                      break;
                    }
                  case CommandExecuteSuccess(:final message):
                    {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: SelectableText('Command executed: $message'),
                          duration: const Duration(seconds: 30),
                          showCloseIcon: true,
                        ),
                      );
                      break;
                    }
                  default:
                    null;
                }
              },

              child: BlocBuilder<CommandBloc, CommandState>(
                buildWhen: (previous, current) {
                  if (current is CommandsSuccessRecieved) {
                    return true;
                  }
                  return false;
                },
                builder:
                    (context, state) => switch (state) {
                      CommandsSuccessRecieved(:final commands) => Builder(
                        builder: (context) {
                          if (commands.isEmpty) {
                            return Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'No commands',
                                    style: TextTheme.of(context).bodyLarge,
                                  ),
                                  SizedBox(height: 8),
                                  FilledButton.icon(
                                    icon: const Icon(Icons.add_outlined),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (newContext) => CommandAddScreen(
                                                onConfirm: (Command command) {
                                                  Navigator.of(
                                                    newContext,
                                                  ).pop();
                                                  context.read<CommandBloc>().add(
                                                    CommandEvent.commandCreated(
                                                      command: command,
                                                    ),
                                                  );
                                                },
                                              ),
                                        ),
                                      );
                                    },
                                    label: Text('Add command'),
                                  ),
                                ],
                              ),
                            );
                          }
                          return Stack(
                            children: [
                              ListView.separated(
                                padding: EdgeInsets.all(8),
                                itemCount: commands.length,
                                separatorBuilder: (
                                  BuildContext context,
                                  int index,
                                ) {
                                  return SizedBox(height: 8);
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return CommandCard(
                                    command: commands[index],
                                    onTap: (Command command) {
                                      context.read<CommandBloc>().add(
                                        CommandEvent.commandExecute(
                                          command: command,
                                        ),
                                      );
                                    },
                                    onLongPress: (Command command) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (newContext) => CommandEditScreen(
                                                onConfirm: (Command command) {
                                                  Navigator.of(
                                                    newContext,
                                                  ).pop();
                                                  context.read<CommandBloc>().add(
                                                    CommandEvent.commandUpdated(
                                                      command: command,
                                                    ),
                                                  );
                                                },
                                                command: command,
                                                onDeleteConfirm: (String id) {
                                                  Navigator.of(
                                                    newContext,
                                                  ).pop();
                                                  context.read<CommandBloc>().add(
                                                    CommandEvent.commandDeleted(
                                                      id: id,
                                                    ),
                                                  );
                                                },
                                              ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              Positioned(
                                bottom: 20,
                                right: 20,
                                child: FloatingActionButton.extended(
                                  disabledElevation: 0,
                                  focusElevation: 0,
                                  highlightElevation: 0,
                                  elevation: 0,
                                  icon: const Icon(Icons.add_outlined),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (newContext) => CommandAddScreen(
                                              onConfirm: (Command command) {
                                                Navigator.of(newContext).pop();
                                                context.read<CommandBloc>().add(
                                                  CommandEvent.commandCreated(
                                                    command: command,
                                                  ),
                                                );
                                              },
                                            ),
                                      ),
                                    );
                                  },
                                  label: Text('Add command'),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      _ => Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Loading',
                              style: TextTheme.of(context).bodyLarge,
                            ),
                            SizedBox(height: 8),
                            CircularProgressIndicator(),
                          ],
                        ),
                      ),
                    },
                // {
                // return Stack(
                //   children: [
                //     ListView.separated(
                //       padding: EdgeInsets.all(8),
                //       itemCount: 12,
                //       separatorBuilder: (BuildContext context, int index) {
                //         return SizedBox(height: 8);
                //       },
                //       itemBuilder: (BuildContext context, int index) {
                //         return CommandCard();
                //       },
                //     ),
                //     // Positioned(
                //     //   bottom: 20,
                //     //   right: 20,
                //     //   child: FloatingActionButton.extended(
                //     //     disabledElevation: 0,
                //     //     focusElevation: 0,
                //     //     highlightElevation: 0,
                //     //     elevation: 0,
                //     //     icon: const Icon(Icons.add_outlined),
                //     //     onPressed: () {},
                //     //     label: Text('Add command'),
                //     //   ),
                //     // ),
                //   ],
                // );
                // },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
