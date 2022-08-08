import 'package:app_anit/core/presentation/widgets_design/page_widget.dart';
import 'package:app_anit/presenter/pages/task/task_page_bloc.dart';
import 'package:app_anit/presenter/pages/task/task_page_bloc_models.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
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
          builder: (_, blocState) => Scaffold(
            body: CustomPageWidget(
              child: blocState.map(
                data: (state) => _PageContent(state: state),
                empty: (state) => _PageEmpty(state: state),
                error: (state) => _PageError(state: state),
              ),
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
  final TaskPageStateData state;
  const _PageContent({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(state.toString()),
    );
  }
}

class _PageEmpty extends StatelessWidget {
  final Empty state;
  const _PageEmpty({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(state.toString()),
    );
  }
}

class _PageError extends StatelessWidget {
  final Error state;
  const _PageError({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(state.toString()),
    );
  }
}
