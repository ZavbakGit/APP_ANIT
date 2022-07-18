import 'package:flutter/material.dart';

class CustomCatalogField extends StatelessWidget {
  final String title;
  final String name;
  const CustomCatalogField({
    Key? key,
    required this.title,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(name),
    );
  }
}

//Использую для логин
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

class CustomEditTextField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final String? errorText;
  final FocusNode? focusNode;

  final ValueChanged<String>? onChanged;

  const CustomEditTextField({
    Key? key,
    required this.title,
    this.controller,
    this.errorText,
    this.focusNode,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: TextFormField(
        focusNode: focusNode,
        textCapitalization: TextCapitalization.sentences,
        minLines: 1,
        maxLines: 10,
        controller: controller,
        decoration: InputDecoration(
            labelText: title, border: InputBorder.none, errorText: errorText),
        onChanged: onChanged,
      ),
    );
  }
}
