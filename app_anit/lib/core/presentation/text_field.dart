import 'package:flutter/material.dart';

class CustomCatalogView extends StatelessWidget {
  final String title;
  final String name;
  const CustomCatalogView({
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
