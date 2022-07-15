import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  final String? text;

  const CustomErrorMessage({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Icon(Icons.error, color: Colors.redAccent, size: 48),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              text ?? '',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
