import 'package:app_anit/core/presentation/widgets_design/custom_page_widget.dart';
import 'package:flutter/material.dart';

import 'custom_error_widget.dart';

class CustomErrorPage extends StatelessWidget {
  const CustomErrorPage({
    Key? key,
    this.onClick,
    this.message,
    this.buttonTitle = 'Повторить',
  }) : super(key: key);

  final void Function()? onClick;
  final String? message;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageWidget(
        child: CustomErrorWidget(
            buttonTitle: buttonTitle, message: message, onClick: onClick),
      ),
    );
  }
}
