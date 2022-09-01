import 'package:flutter/material.dart';

import 'custom_empty_widget.dart';

class CustomEmptyPage extends StatelessWidget {
  const CustomEmptyPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomEmptyWidget(),
    );
  }
}
