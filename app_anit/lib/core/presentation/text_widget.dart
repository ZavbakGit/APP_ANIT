import 'package:flutter/material.dart';

class CustomMessageErrorText extends StatelessWidget {
  final String? text;

  const CustomMessageErrorText({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: const TextStyle(color: Colors.redAccent),
    );
  }
}

class CustomTitleText extends StatelessWidget {
  final String? text;

  const CustomTitleText({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: const TextStyle(
        color: Color(0xdd000000),
        fontSize: 20,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class CustomHeadLinText extends StatelessWidget {
  final String? text;

  const CustomHeadLinText({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: const TextStyle(
        color: Color(0xdd000000),
        fontSize: 24,
      ),
    );
  }
}
