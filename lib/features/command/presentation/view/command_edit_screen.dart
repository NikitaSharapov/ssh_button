import 'package:flutter/material.dart';
import 'package:ssh_button/features/command/domain/entities/command_entity.dart';
import 'package:ssh_button/features/command/presentation/view/ui/command_add_form.dart';
import 'package:ssh_button/features/command/presentation/view/ui/command_edit_form.dart';

class CommandEditScreen extends StatelessWidget {
  final void Function(Command command) onConfirm;
  final void Function(String id) onDeleteConfirm;
  final Command command;
  const CommandEditScreen({
    required this.onConfirm,
    super.key,
    required this.command,
    required this.onDeleteConfirm,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Edit command'),
      actions: [
        IconButton(
          icon: const Icon(Icons.delete_outlined),
          tooltip: 'Delete',
          onPressed: () async {
            final isDelete = await showDialog<bool>(
              context: context,
              builder:
                  (BuildContext context) => AlertDialog(
                    title: const Text('Delete command ?'),
                    content: const Text(
                      'This will result in the loss of all data.',
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, true),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
            );
            if (isDelete != null && isDelete) {
              onDeleteConfirm(command.id);
            }
          },
        ),
      ],
    ),
    body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: CommandEditForm(command: command, onConfirm: onConfirm),
        ),
      ),
    ),
  );
}
