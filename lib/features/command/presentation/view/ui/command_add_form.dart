import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ssh_button/features/command/domain/entities/command_entity.dart';
import 'package:ssh_button/features/command/presentation/view/ui/command_text_field.dart';

class CommandAddForm extends StatefulWidget {
  final void Function(Command command) onConfirm;
  const CommandAddForm({required this.onConfirm, super.key});

  @override
  State<CommandAddForm> createState() => _CommandAddFormState();
}

class _CommandAddFormState extends State<CommandAddForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleTextEditingController = TextEditingController();
  final _descriptionTextEditingController = TextEditingController();
  final _valueTextEditingController = TextEditingController();
  final _hostTextEditingController = TextEditingController();
  final _portTextEditingController = TextEditingController();
  final _usernameTextEditingController = TextEditingController();
  final _passwordTextEditingController = TextEditingController();
  bool _sudo = false;

  @override
  void initState() {
    super.initState();
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
        CommandTextField(
          textInputAction: TextInputAction.next,
          label: 'Password*',
          obscureText: true,
          textEditingController: _passwordTextEditingController,
          keyboardType: TextInputType.text,
          textInputFormatters: const [],
          validator: (String? value) => null,
          icon: Icons.password,
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
                    id: '',
                    title: _titleTextEditingController.text,
                    description: _descriptionTextEditingController.text,
                    host: _hostTextEditingController.text,
                    value: _valueTextEditingController.text
                        .replaceAll('sudo', '')
                        .replaceAll('sudo ', ''),
                    port: int.parse(_portTextEditingController.text),
                    username: _usernameTextEditingController.text,
                    sudo: _sudo,
                    password: _passwordTextEditingController.text,
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
