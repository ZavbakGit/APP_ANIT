import 'package:flutter/material.dart';

import '../../../core/presentation/page_widget.dart';
import '../../../core/presentation/text_widget.dart';

class ConfigConnectionPage extends StatelessWidget {
  const ConfigConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(Object context) {
    return PageWidget(
      child: Column(
        children: [
          const Center(
            child: TitleText(
              text: 'Настройка',
            ),
          ),
        ],
      ),
    );
  }
}
