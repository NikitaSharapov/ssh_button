import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommandTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final List<TextInputFormatter> textInputFormatters;
  final TextEditingController textEditingController;
  final String? Function(String? value) validator;

  const CommandTextField({
    required this.label,
    required this.obscureText,
    required this.keyboardType,
    required this.textInputAction,
    required this.textInputFormatters,
    required this.textEditingController,
    required this.validator,

    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) => TextFormField(
    controller: textEditingController,
    inputFormatters: textInputFormatters,
    textInputAction: textInputAction,
    obscureText: obscureText,
    keyboardType: keyboardType,

    validator: validator,
    onTapOutside: (PointerDownEvent event) {
      FocusManager.instance.primaryFocus?.unfocus();
    },

    decoration: InputDecoration(
      labelText: label,
      border: InputBorder.none,
      prefixIcon: Icon(icon),
    ),
  );
}
