import 'package:flutter/material.dart';

import '../../core/presentation/button_widgets.dart';
import '../../core/presentation/page_widget.dart';
import 'package:go_router/go_router.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: CustomPrimaryButton(
                text: 'Настройки соеденения',
                onPressed: () {
                  context.goNamed('config_connection');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
