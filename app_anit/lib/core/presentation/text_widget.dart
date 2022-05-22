import 'package:flutter/material.dart';

class MessageErrorText extends StatelessWidget {
  final String? text;

  const MessageErrorText({
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

class TitleText extends StatelessWidget {
  final String? text;

  const TitleText({
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

class HeadLinText extends StatelessWidget {
  final String? text;

  const HeadLinText({
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
