import 'package:app_anit/core/presentation/widgets/app_bar.dart';
import 'package:app_anit/core/presentation/widgets/progres_widget.dart';
import 'package:app_anit/core/presentation/widgets/text_widget.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/injection_container.dart';
import '../../../../domain/repositories/repository.dart';

class RefCatalogDialogWidget extends StatelessWidget {
  final String type;
  final String titleDialog;

  RefCatalogDialogWidget({
    Key? key,
    required this.type,
    required this.titleDialog,
  }) : super(key: key);

  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    focusNode.requestFocus();

    final textEditingController = TextEditingController();

    return BlocProvider(
      create: (context) => RefCatalogDialogCubit(type: type, repository: sl()),
      child: BlocBuilder<RefCatalogDialogCubit, StateDialog>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomSearchAppBar(
              title: 'Строка поиска ',
              queryTextController: textEditingController,
              focusNode: focusNode,
              onChanged: (text) {
                context.read<RefCatalogDialogCubit>().search(text);
              },
              onClear: () {
                textEditingController.text = '';
                context.read<RefCatalogDialogCubit>().search('');
              },
            ),
            body: BodyWidget(state: state),
          );
        },
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  final StateDialog state;
  const BodyWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (state.isLoading) {
      return const CustomCircularProgressIndicator();
    }

    if (state.error != null) {
      return Center(
        child: CustomErrorText(text: state.error),
      );
    }

    if (state.list == null || state.list!.isEmpty) {
      return const Center(
        child: CustomTitleText(text: 'Пусто'),
      );
    }

    final List<RefCatalog> list = state.list ?? [];

    return ListView.builder(
      scrollDirection: Axis.vertical,
      //shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Card(
        child: ListTile(
          onTap: () => Navigator.of(context).pop(list[index]),
          title: Text(list[index].name ?? ''),
          subtitle: Text(list[index].code ?? ''),
        ),
      ),
      itemCount: list.length,
    );
  }
}

class StateDialog {
  final bool isLoading;
  final String? error;
  final List<RefCatalog>? list;
  final String search;

  StateDialog({
    this.isLoading = false,
    this.error,
    this.list,
    this.search = '',
  });

  StateDialog copyWith({
    bool? isLoading,
    String? error,
    List<RefCatalog>? list,
    String? search,
  }) {
    return StateDialog(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      list: list ?? this.list,
      search: search ?? this.search,
    );
  }

  @override
  String toString() {
    return 'StateDialog(isLoading: $isLoading, error: $error, list: $list, search: $search)';
  }
}

class RefCatalogDialogCubit extends Cubit<StateDialog> {
  final Repository repository;
  final String type;

  RefCatalogDialogCubit({
    required this.repository,
    required this.type,
  }) : super(StateDialog());

  void search(String search) async {
    if (search.length > 2) {
      final either = await repository.catalogSearch(
          type: type, search: search, offset: 0, count: 30);

      either.fold((fail) {
        emit(StateDialog(error: 'Ошибка'));
      }, (result) {
        emit(StateDialog(list: result));
      });
    } else {
      StateDialog(list: []);
    }
  }
}
