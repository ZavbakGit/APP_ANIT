import 'package:flutter/material.dart';

import '../../core/presentation/app_bar.dart';
import '../../core/presentation/page_widget.dart';

class SearchDialogPage extends StatelessWidget {
  const SearchDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = CustomSearchAppBar(title: 'Строка поиска ');
    return CustomPageWidget(
      child: Scaffold(
        appBar: appBar,
        body: ListView(),
      ),
    );
  }
}
