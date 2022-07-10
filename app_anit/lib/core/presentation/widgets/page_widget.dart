import 'package:flutter/material.dart';

Widget _getDecorationContainer() {
  return Container(
    decoration: BoxDecoration(color: Colors.blue[30]
        // gradient: LinearGradient(
        //   begin: Alignment.topLeft,
        //   end: Alignment.bottomRight,
        //   colors: [
        //     Color.fromRGBO(248, 248, 248, 1),
        //     Color.fromARGB(255, 25, 189, 99),
        //   ],
        // ),
        ),
  );
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
