import 'package:flutter/material.dart';
import 'package:ssh_button/features/command/domain/entities/command_entity.dart';
import 'package:ssh_button/features/command/presentation/view/ui/command_add_form.dart';

class CommandAddScreen extends StatelessWidget {
  final void Function(Command command) onConfirm;

  const CommandAddScreen({required this.onConfirm, super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Add command')),
    body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: CommandAddForm(onConfirm: onConfirm),
        ),
      ),
    ),
  );
}
