import 'package:flutter/material.dart';

import 'ds_text.dart';

class DsField extends StatelessWidget {
  final String? title;
  final String? subtitle;

  const DsField({
    Key? key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: DsText.headingThree(title ?? ''),
      subtitle: DsText.text1(subtitle ?? ''),
    );
  }
}
