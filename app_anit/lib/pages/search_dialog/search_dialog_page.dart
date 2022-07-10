import 'package:app_anit/pages/search_dialog/search_dialog_cubit.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/injection_container.dart';
import '../../core/presentation/widgets/app_bar.dart';
import '../../core/presentation/widgets/progres_widget.dart';
import '../../core/presentation/widgets/text_widget.dart';

class SearchCatalogDialogPage extends StatelessWidget {
  SearchCatalogDialogPage({
    Key? key,
    required this.type,
  }) : super(key: key);

  final String type;

  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    focusNode.requestFocus();

    return BlocProvider(
      create: (context) => SearchDialogCubit(repository: sl(), type: type),
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

        if (state.error != null) {
          return Center(child: CustomMessageErrorText(text: state.error ?? ''));
        }

        if (state.list != null) {
          if (state.list!.isEmpty) {
            return const Center(child: CustomTitleText(text: 'Пусто'));
          } else {
            return ListWidget(
              list: state.list!,
            );
          }
        } else {
          return const Center(child: CustomTitleText(text: 'Нет списка'));
        }
      },
    );
  }
}

class ListWidget extends StatelessWidget {
  final List<RefCatalog> list;
  const ListWidget({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      scrollDirection: Axis.vertical,
      //shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => ItemWidget(
        item: list[index],
      ),
      itemCount: list.length,
    );
  }
}

class ItemWidget extends StatelessWidget {
  final RefCatalog item;

  const ItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop(item);
      },
      child: Card(
        child: ListTile(
          title: Text(item.name ?? ''),
          subtitle: Text(item.code ?? ''),
        ),
      ),
    );
  }
}




//https://quickbirdstudios.com/blog/flutter-adaptive-search-widget/
