import 'package:flutter/material.dart';

Widget _getDecorationContainer() {
  return Container();
}

class CustomPageWidget extends StatelessWidget {
  final Widget child;

  const CustomPageWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(Object context) {
    return SafeArea(
        child: Stack(children: [
      _getDecorationContainer(),
      child,
    ]));
  }
}
