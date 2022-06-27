import 'package:flutter/material.dart';

class CustomTextFormWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final bool enabled;
  const CustomTextFormWidget({
    Key? key,
    this.controller,
    this.labelText,
    this.validator,
    this.obscureText = false,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      validator: validator,
      obscureText: obscureText,
    );
  }
}
