import 'package:app_anit/presenter/disign_system/widgets_design/custom_empty_page.dart';
import 'package:app_anit/presenter/pages/main/main_page_bloc.dart';
import 'package:app_anit/presenter/pages/main/main_page_bloc_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../disign_system/widgets_design/custom_page_widget.dart';
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
          return state.map(
            empty: (_) => const CustomEmptyPage(),
            data: (value) => _MainPageContent(title: value.user),
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
        PopupMenuItem(
          value: 2,
          child: const Text("Дизайн система"),
          onTap: () {
            context.push('/design_system');
          },
        ),
        PopupMenuItem(
          value: 2,
          child: const Text("Test silver app bar"),
          onTap: () {
            context.push('/test_silver_app_bar');
          },
        ),
      ],
    )
  ];
}

class _MainPageContent extends StatelessWidget {
  final String title;

  const _MainPageContent({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: _getPopupMenu(),
        ),
        body: CustomPageWidget(
          child: SingleChildScrollView(
            child: Wrap(
              children: const [
                TasksWidget(),
                TasksWidget(),
                TasksWidget(),
                TasksWidget(),
                TasksWidget(),
                TasksWidget(),
                TasksWidget(),
                TasksWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
