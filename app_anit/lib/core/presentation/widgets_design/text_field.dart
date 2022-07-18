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

class CustomEditTextField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final String? errorText;

  final ValueChanged<String>? onChanged;

  const CustomEditTextField({
    Key? key,
    this.controller,
    required this.title,
    this.onChanged,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: TextFormField(
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
