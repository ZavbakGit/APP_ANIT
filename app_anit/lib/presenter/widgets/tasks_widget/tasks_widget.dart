import 'package:app_anit/core/presentation/widgets_design/progres_widget.dart';
import 'package:app_anit/presenter/widgets/tasks_widget/tasks_widget_bloc.dart';
import 'package:app_anit/presenter/widgets/tasks_widget/tasks_widget_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../pages/task/task_page.dart';
import '../../pages/tasks_user/tasks_page.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TasksWidgetBloc>(
      create: (context) => TasksWidgetBloc(appModel: sl(), repository: sl())
        ..add(const TasksWidgetEvent.init()),
      child: SrBlocBuilder<TasksWidgetBloc, TasksWidgetState, TasksWidgetSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          return GestureDetector(
            onTap: () => context
                .read<TasksWidgetBloc>()
                .add(const TasksWidgetEvent.openTasks()),
            child: Card(
              borderOnForeground: false,
              child: SizedBox(
                height: 150,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: state.map(
                    data: (state) => Column(
                      children: [
                        Text(
                            'Задачи ${state.data.countTask}/ ${state.data.countControlleredTask}'),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: IconButton(
                                onPressed: () => context
                                    .read<TasksWidgetBloc>()
                                    .add(const TasksWidgetEvent.addTask()),
                                icon: const Icon(Icons.add)),
                          ),
                        )
                      ],
                    ),
                    empty: (state) => const CustomCircularProgressIndicator(),
                    error: (state) => const Text('Error'),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, TasksWidgetSR sr) {
    sr.when(
      openTasks: () => Navigator.push<bool>(
        context,
        MaterialPageRoute(
          builder: (context) => const TasksPage(),
        ),
      ).then((value) => context
          .read<TasksWidgetBloc>()
          .add(const TasksWidgetEvent.refresh())),
      addTask: () {
        Navigator.push<bool>(
          context,
          MaterialPageRoute(
            builder: (context) => const TaskPage(),
          ),
        ).then((value) {
          if (value != null) {
            if (value) {
              context
                  .read<TasksWidgetBloc>()
                  .add(const TasksWidgetEvent.refresh());
            }
          }
        });
      },
    );
  }
}
