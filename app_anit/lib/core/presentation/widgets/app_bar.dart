import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final List<Widget>? actions;
  final Widget? title;
  final PreferredSizeWidget? bottom;

  @override
  final Size preferredSize;

  CustomAppBar({Key? key, this.actions, this.title, this.bottom})
      : preferredSize = const Size.fromHeight(75.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: actions,
      bottom: bottom,
    );
  }
}

class CustomSearchAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;

  @override
  final Size preferredSize;

  final TextEditingController queryTextController;
  final FocusNode? focusNode;

  final ValueChanged<String>? onChanged;
  final VoidCallback onClear;

  CustomSearchAppBar(
      {Key? key,
      this.title,
      required this.queryTextController,
      required this.focusNode,
      this.onChanged,
      required this.onClear})
      : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextField(
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(hintText: title),
        controller: queryTextController,
        focusNode: focusNode,
        onChanged: onChanged,
      ),
      actions: [
        IconButton(
          onPressed: onClear,
          icon: const Icon(Icons.clear),
        ),
      ],
    );
  }
}
