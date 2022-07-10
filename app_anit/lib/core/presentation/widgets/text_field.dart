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

  const CustomEditTextField({
    Key? key,
    this.controller,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: TextFormField(
        minLines: 1,
        maxLines: 2,
        controller: controller,
        decoration: InputDecoration(labelText: title, border: InputBorder.none),
      ),
    );
  }
}
