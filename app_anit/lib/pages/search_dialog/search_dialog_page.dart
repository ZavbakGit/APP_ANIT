import 'package:flutter/material.dart';

import '../../core/presentation/app_bar.dart';
import '../../core/presentation/page_widget.dart';

class SearchDialogPage extends StatelessWidget {
  const SearchDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    focusNode.requestFocus();

    final appBar = CustomSearchAppBar(
      title: 'Строка поиска ',
      queryTextController: TextEditingController(),
      focusNode: focusNode,
    );
    return CustomPageWidget(
      child: Scaffold(
        appBar: appBar,
        body: ListView(),
      ),
    );
  }
}

//https://quickbirdstudios.com/blog/flutter-adaptive-search-widget/
