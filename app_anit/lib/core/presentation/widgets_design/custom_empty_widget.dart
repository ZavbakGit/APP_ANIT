import 'package:app_anit/core/presentation/widgets_design/custom_progres_widgets.dart';
import 'package:flutter/material.dart';

class CustomEmptyWidget extends StatelessWidget {
  const CustomEmptyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomCircularProgressIndicator(),
    );
  }
}
