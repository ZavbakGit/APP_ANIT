import 'package:flutter/material.dart';

class CustomBaseProgressIndicator extends StatelessWidget {
  const CustomBaseProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
