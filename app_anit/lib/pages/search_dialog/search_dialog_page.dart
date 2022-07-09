import 'package:app_anit/pages/search_dialog/search_dialog_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/presentation/app_bar.dart';
import '../../core/presentation/progres_widget.dart';

class SearchDialogPage extends StatelessWidget {
  SearchDialogPage({Key? key}) : super(key: key);

  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    focusNode.requestFocus();

    return BlocProvider(
      create: (context) => SearchDialogCubit(),
      child: BlocBuilder<SearchDialogCubit, SearchDialogState>(
        buildWhen: (previous, current) => false,
        builder: (context, state) {
          return Scaffold(
            appBar: CustomSearchAppBar(
              title: 'Строка поиска ',
              queryTextController: textEditingController,
              focusNode: focusNode,
              onChanged: (text) {
                context.read<SearchDialogCubit>().search(text);
              },
              onClear: () {
                textEditingController.text = '';
                context.read<SearchDialogCubit>().search('');
              },
            ),
            body: const ResultWidget(),
          );
        },
      ),
    );
  }
}

class ResultWidget extends StatelessWidget {
  const ResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchDialogCubit, SearchDialogState>(
      listener: (context, state) {},
      buildWhen: (previous, current) {
        return true;
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CustomCircularProgressIndicator());
        }
        return InkWell(
          onTap: () {
            BlocProvider.of<SearchDialogCubit>(context).search('jhgjhgjh');
          },
          child: Center(child: Text(state.toString())),
        );
      },
    );
  }
}


//https://quickbirdstudios.com/blog/flutter-adaptive-search-widget/
