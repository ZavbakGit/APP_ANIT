import 'package:app_anit/presenter/disign_system/widgets_design/custom_progres_widgets.dart';
import 'package:app_anit/presenter/widgets/tasks_widget/tasks_widget_bloc.dart';
import 'package:app_anit/presenter/widgets/tasks_widget/tasks_widget_models.dart';
import 'package:badges/badges.dart';
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
    double? heightWidget() {
      if (orientationLandscape(context)) {
        return screenHeight(context) / 2;
      } else {
        return screenHeight(context) / 4;
      }
    }

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
                height: heightWidget(),
                width: screenWidth(context) / 2 - 16,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: state.map(
                    data: (state) => Column(
                      children: [
                        Expanded(
                          flex: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Задачи',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                '${state.data.countTask}/${state.data.countControlleredTask}',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              if (state.countNeedAccept > 0)
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Badge(
                                    badgeContent: Text(
                                      '${state.data.countNeedAccept}',
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    toAnimate: true,
                                    animationDuration:
                                        const Duration(milliseconds: 1000),
                                    badgeColor:
                                        Theme.of(context).colorScheme.primary,
                                    child:
                                        const Icon(Icons.notifications_active),
                                  ),
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
