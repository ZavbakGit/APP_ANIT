import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? text;

  const CustomErrorWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.error, color: Colors.redAccent, size: 48),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text ?? '',
            style: const TextStyle(fontSize: 18),
            maxLines: 5,
          ),
        ),
      ],
    );
  }
}
