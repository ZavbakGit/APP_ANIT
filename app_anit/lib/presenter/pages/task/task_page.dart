import 'package:app_anit/core/presentation/widgets_design/page_widget.dart';
import 'package:app_anit/presenter/pages/task/task_page_bloc.dart';
import 'package:app_anit/presenter/pages/task/task_page_bloc_models.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../../core/presentation/widgets_design/empty_page.dart';
import '../../../core/presentation/widgets_design/error_page.dart';
import '../../widgets/catalogs/ref_catalog_dialog_widget.dart';

class TaskPage extends StatelessWidget {
  final String? guid;
  final bool? isAssignment;

  const TaskPage({
    Key? key,
    this.guid,
    this.isAssignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskPageBloc>(
        create: (context) => TaskPageBloc(
              appModel: sl(),
              repository: sl(),
              guid: guid,
              isAssignment: isAssignment,
            )..add(const TaskPageEventInit()),
        child: SrBlocBuilder<TaskPageBloc, TaskPageState, TaskPageSR>(
          onSR: _onSingleResult,
          builder: (_, blocState) => blocState.map(
            data: (state) => _PageContent(
              isModified: state.isModified,
              task: state.task,
            ),
            empty: (state) => const CustomEmptyPage(),
            error: (state) => ErrorPage(
              message: state.message,
              onClick: () =>
                  context.read<TaskPageBloc>().add(const TaskPageEvent.load()),
            ),
          ),
        ));
  }

  void _onSingleResult(BuildContext context, TaskPageSR sr) {
    sr.when(
        exit: () {},
        openSaveDialog: () {},
        chooseAnResponsible: () {
          Navigator.push<RefCatalog>(
            context,
            MaterialPageRoute(
              builder: (context) => RefCatalogDialogWidget(
                type: 'Пользователи',
                titleDialog: 'Ответственный',
              ),
            ),
          ).then((val) {
            if (val != null) {
              context
                  .read<TaskPageBloc>()
                  .add(TaskPageEvent.changeResponsible(val));
            }
          });
        });
  }
}

class _PageContent extends StatelessWidget {
  final Task task;
  final bool isModified;
  const _PageContent({
    Key? key,
    required this.task,
    required this.isModified,
  }) : super(key: key);

  String get title =>
      '${isModified ? '*' : ''}${task.$number} от ${DateFormat('dd.MM.yy HH:mm').format(task.date!)}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageWidget(child: Text(task.toString())),
      appBar: AppBar(title: Text(title), actions: [
        if (isModified &&
            task.partner != null &&
            task.responsible != null &&
            task.title!.isNotEmpty)
          IconButton(
            onPressed: () {
              context.read<TaskPageBloc>().add(const TaskPageEvent.save());
            },
            icon: const Icon(Icons.check),
          ),
      ]),
    );
  }
}
