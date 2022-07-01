import 'package:app_anit/pages/task/task_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/injection_container.dart';
import '../../core/presentation/page_widget.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TaskCubit>(),
      child: const CustomPageWidget(
        child: TaskBodyWidget(),
      ),
    );
  }
}

class TaskBodyWidget extends StatelessWidget {
  const TaskBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskCubit, TaskPageState>(
        listener: (context, state) {},
        buildWhen: (previous, current) {
          return true;
        },
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Text(state.title),
            ),
          );
        });
  }
}
