import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ssh_button/features/command/domain/entities/command_entity.dart';
import 'package:ssh_button/features/command/presentation/view/ui/command_text_field.dart';

class CommandEditForm extends StatefulWidget {
  final Command command;
  final void Function(Command command) onConfirm;
  const CommandEditForm({
    required this.onConfirm,
    super.key,
    required this.command,
  });

  @override
  State<CommandEditForm> createState() => _CommandEditFormState();
}

class _CommandEditFormState extends State<CommandEditForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleTextEditingController = TextEditingController();
  final _descriptionTextEditingController = TextEditingController();
  final _valueTextEditingController = TextEditingController();
  final _hostTextEditingController = TextEditingController();
  final _portTextEditingController = TextEditingController();
  final _usernameTextEditingController = TextEditingController();
  bool _sudo = false;

  @override
  void initState() {
    super.initState();

    _titleTextEditingController.value = TextEditingValue(
      text: widget.command.title,
    );
    if (widget.command.description != null) {
      _descriptionTextEditingController.value = TextEditingValue(
        text: widget.command.description!,
      );
    }

    _valueTextEditingController.value = TextEditingValue(
      text: widget.command.value,
    );
    _hostTextEditingController.value = TextEditingValue(
      text: widget.command.host,
    );
    _portTextEditingController.value = TextEditingValue(
      text: widget.command.port.toString(),
    );
    _usernameTextEditingController.value = TextEditingValue(
      text: widget.command.username,
    );
    _sudo = widget.command.sudo;
  }

  @override
  Widget build(BuildContext context) => Form(
    key: _formKey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Info', style: TextTheme.of(context).bodyLarge),
        const SizedBox(height: 8),
        CommandTextField(
          textInputAction: TextInputAction.next,
          label: 'Title*',
          obscureText: false,
          keyboardType: TextInputType.text,
          textInputFormatters: const [],
          textEditingController: _titleTextEditingController,
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Title is required';
            }
            return null;
          },
          icon: Icons.title,
        ),
        const SizedBox(height: 8),
        CommandTextField(
          textInputAction: TextInputAction.next,
          label: 'Description',
          obscureText: false,
          keyboardType: TextInputType.text,
          textInputFormatters: const [],
          textEditingController: _descriptionTextEditingController,
          validator: (String? value) {
            return null;
          },
          icon: Icons.description_outlined,
        ),
        const SizedBox(height: 8),
        CommandTextField(
          textInputAction: TextInputAction.next,
          label: 'Command*',
          obscureText: false,
          keyboardType: TextInputType.text,
          textInputFormatters: const [],
          textEditingController: _valueTextEditingController,
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Command is required';
            }
            return null;
          },
          icon: Icons.terminal_outlined,
        ),
        const SizedBox(height: 8),
        Divider(height: 0),
        const SizedBox(height: 16),
        Text('Connection', style: TextTheme.of(context).bodyLarge),
        const SizedBox(height: 8),
        CommandTextField(
          textInputAction: TextInputAction.next,
          label: 'Host*',
          obscureText: false,
          keyboardType: TextInputType.visiblePassword,
          textEditingController: _hostTextEditingController,
          textInputFormatters: const [],
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Host is required';
            }
            return null;
          },
          icon: Icons.dns_outlined,
        ),
        const SizedBox(height: 8),
        CommandTextField(
          textInputAction: TextInputAction.next,
          label: 'Port*',
          obscureText: false,
          textEditingController: _portTextEditingController,
          keyboardType: TextInputType.number,
          textInputFormatters: [
            FilteringTextInputFormatter.allow(RegExp('[0-9]')),
          ],
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Port is required';
            }
            if (int.tryParse(value) == null) {
              return 'Port must be number';
            }
            return null;
          },
          icon: Icons.anchor_outlined,
        ),
        const SizedBox(height: 8),
        Divider(height: 0),
        const SizedBox(height: 16),
        Text('Credential', style: TextTheme.of(context).bodyLarge),
        const SizedBox(height: 8),
        CommandTextField(
          textInputAction: TextInputAction.next,
          label: 'Username*',
          obscureText: false,
          textEditingController: _usernameTextEditingController,
          keyboardType: TextInputType.text,
          textInputFormatters: const [],
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Username is required';
            }
            return null;
          },
          icon: Icons.person_outline,
        ),
        const SizedBox(height: 8),

        Row(
          children: [
            Text('Run as sudo', style: TextTheme.of(context).bodyLarge),
            const Spacer(),
            Switch(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.zero,
              value: _sudo,
              onChanged: (value) {
                setState(() {
                  _sudo = value;
                });
              },
            ),
          ],
        ),
        const SizedBox(height: 20),

        SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                widget.onConfirm(
                  Command(
                    id: widget.command.id,
                    title: _titleTextEditingController.text,
                    description: _descriptionTextEditingController.text,
                    host: _hostTextEditingController.text,
                    value: _valueTextEditingController.text
                        .replaceAll('sudo', '')
                        .replaceAll('sudo ', ''),
                    port: int.parse(_portTextEditingController.text),
                    username: _usernameTextEditingController.text,
                    sudo: _sudo,
                    password: widget.command.password,
                  ),
                );
              }
            },
            child: Text('Confirm'),
          ),
        ),
      ],
    ),
  );
}
