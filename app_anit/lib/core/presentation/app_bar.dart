import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final List<Widget>? actions;
  final String? title;

  @override
  final Size preferredSize;

  CustomAppBar({
    Key? key,
    this.actions,
    this.title,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? '', style: const TextStyle(color: Colors.grey)),
      actions: actions,
    );
  }
}

class CustomSearchAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;

  @override
  final Size preferredSize;

  CustomSearchAppBar({
    Key? key,
    this.title,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextField(
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(hintText: title),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.clear),
        ),
      ],
    );
  }
}
