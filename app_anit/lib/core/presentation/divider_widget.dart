import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomDividerField extends StatelessWidget {
  const CustomDividerField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 16);
  }
}

class CustomDividerHeader extends StatelessWidget {
  const CustomDividerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 24);
  }
}
