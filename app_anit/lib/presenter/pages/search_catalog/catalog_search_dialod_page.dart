import 'package:app_anit/presenter/pages/search_catalog/catalog_search_dialod_models.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../../core/presentation/widgets_design/base_snackbar.dart';
import '../../../core/presentation/widgets_design/empty_page.dart';
import '../../../core/presentation/widgets_design/error_page.dart';
import '../../../core/presentation/widgets_design/page_widget.dart';
import 'catalog_search_dialod_bloc.dart';

class CatalogSearchDialogPage extends StatelessWidget {
  const CatalogSearchDialogPage({
    Key? key,
    required this.type,
    required this.title,
  }) : super(key: key);

  final String type;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CatalogSearchDialogBloc>(
      create: (context) => CatalogSearchDialogBloc(repository: sl(), type: type)
        ..add(const SearchDialogEvent.init()),
      child: SrBlocBuilder<CatalogSearchDialogBloc, SearchDialogState,
          SearchDialogSR>(
        onSR: _onSingleResult,
        builder: (context, state) => state.map(
            data: (state) => _PageContent(
                title: title,
                list: state.list,
                isLoadingList: state.isLoadingList,
                searchStr: state.searchStr),
            empty: (state) => const CustomEmptyPage(),
            error: (state) => ErrorPage(
                  message: state.message,
                  onClick: () => context
                      .read<CatalogSearchDialogBloc>()
                      .add(const SearchDialogEvent.search()),
                )),
      ),
    );
  }

  void _onSingleResult(BuildContext context, SearchDialogSR sr) {
    sr.when(
      exit: (value) => Navigator.of(context).pop(value),
      showSnackBar: (message) =>
          BaseSnackbar.show(context: context, text: message),
    );
  }
}

class _PageContent extends StatelessWidget {
  const _PageContent({
    Key? key,
    required this.list,
    required this.isLoadingList,
    required this.searchStr,
    required this.title,
  }) : super(key: key);

  final List<RefCatalog> list;
  final bool isLoadingList;
  final String searchStr;
  final String title;

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    focusNode.requestFocus();
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(hintText: title),
          focusNode: focusNode,
          onChanged: (value) => context
              .read<CatalogSearchDialogBloc>()
              .add(SearchDialogEvent.changeSearchStr(value)),
        ),
      ),
      body: CustomPageWidget(
        child: BodyWidget(list: list),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  final List<RefCatalog> list;
  const BodyWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return Center(
        child: Text('Пусто', style: Theme.of(context).textTheme.displayMedium),
      );
    } else {
      return ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemBuilder: (BuildContext context, int index) => Card(
          child: ListTile(
            onTap: () => context
                .read<CatalogSearchDialogBloc>()
                .add(SearchDialogEvent.pressedCatalog(list[index])),
            title: Text(list[index].name ?? ''),
            subtitle: Text(list[index].code ?? ''),
          ),
        ),
        itemCount: list.length,
      );
    }
  }
}
