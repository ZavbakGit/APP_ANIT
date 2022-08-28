import 'package:app_anit/core/presentation/widgets_design/progres_widget.dart';
import 'package:flutter/material.dart';

class CustomEmptyPage extends StatelessWidget {
  const CustomEmptyPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomCircularProgressIndicator(),
      ),
    );
  }
}
