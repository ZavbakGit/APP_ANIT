import 'package:app_anit/core/presentation/widgets_design/progres_widget.dart';
import 'package:app_anit/core/presentation/widgets_design/text_widget.dart';
import 'package:app_anit/presenter/pages/main/main_page_bloc.dart';
import 'package:app_anit/presenter/pages/main/main_page_bloc_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../../core/presentation/widgets_design/app_bar.dart';
import '../../../core/presentation/widgets_design/page_widget.dart';
import '../../widgets/tasks_widget/tasks_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainPageBloc>(
      create: (context) =>
          MainPageBloc(appModel: sl())..add(const MainPageEvent.init()),
      child: SrBlocBuilder<MainPageBloc, MainPageState, MainPageSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          return Scaffold(
            appBar: state.mapOrNull(data: (state) => _getAppBar(state)),
            body: CustomPageWidget(
              child: state.map(
                empty: (state) => const _MainPageEmpty(),
                data: (state) => _MainPageContent(state: state),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, MainPageSR singleResult) {}
}

List<Widget> _getPopupMenu() {
  return [
    PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: const Text("Выйти"),
          onTap: () {
            context.read<MainPageBloc>().add(const MainPageEvent.exit());
          },
        ),
      ],
    )
  ];
}

CustomAppBar _getAppBar(MainPageStateData state) {
  return CustomAppBar(
    title: CustomAppBarTitleText(
      text: state.user,
    ),
    actions: _getPopupMenu(),
  );
}

class _MainPageEmpty extends StatelessWidget {
  const _MainPageEmpty({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomCircularProgressIndicator(),
    );
  }
}

class _MainPageContent extends StatelessWidget {
  final MainPageStateData state;

  const _MainPageContent({
    required this.state,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [TasksWidget()],
    );
  }
}
