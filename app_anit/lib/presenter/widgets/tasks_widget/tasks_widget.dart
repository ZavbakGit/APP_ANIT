import 'package:app_anit/core/presentation/widgets_design/custom_progres_widgets.dart';
import 'package:app_anit/presenter/widgets/tasks_widget/tasks_widget_bloc.dart';
import 'package:app_anit/presenter/widgets/tasks_widget/tasks_widget_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../disign_system/ui_helpers.dart';
import '../../pages/task/task_page.dart';
import '../../pages/tasks_user/tasks_user_page.dart';

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
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              child: SizedBox(
                height: screenHeight(context) / 4,
                width: screenWidth(context) / 2 - 16,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: state.map(
                    data: (state) => Column(
                      children: [
                        Expanded(
                          flex: 10,
                          child: Column(
                            children: [
                              Text(
                                'Задачи',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                '${state.data.countTask}/${state.data.countControlleredTask}',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Column(
                            children: [
                              const Divider(),
                              Row(
                                children: [
                                  Expanded(
                                    child: IconButton(
                                        onPressed: () => context
                                            .read<TasksWidgetBloc>()
                                            .add(const TasksWidgetEvent
                                                .addTaskController()),
                                        icon: const Icon(Icons.add_task)),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                        onPressed: () => context
                                            .read<TasksWidgetBloc>()
                                            .add(const TasksWidgetEvent
                                                .addTask()),
                                        icon: const Icon(Icons.add)),
                                  ),
                                ],
                              ),
                            ],
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
          builder: (context) => const TasksUserPage(),
        ),
      ).then((value) => context
          .read<TasksWidgetBloc>()
          .add(const TasksWidgetEvent.refresh())),
      addTaskController: () {
        Navigator.push<bool>(
          context,
          MaterialPageRoute(
            builder: (context) => const TaskPage(isAssignment: true),
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
