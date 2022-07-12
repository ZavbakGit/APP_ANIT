import 'package:app_anit/pages/tasks_user/tasks_cubit.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../app/injection_container.dart';
import '../../core/presentation/widgets/app_bar.dart';
import '../../core/presentation/widgets/divider_widget.dart';
import '../../core/presentation/widgets/page_widget.dart';
import '../../core/presentation/widgets/progres_widget.dart';
import '../../core/presentation/widgets/text_widget.dart';
import '../task/task_page.dart';

class TasksPage extends ConsumerWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocProvider(
      create: (context) => sl<TasksCubit>()..init(),
      child: const CustomPageWidget(
        child: TasksBodyWidget(),
      ),
    );
  }
}

class TasksBodyWidget extends StatelessWidget {
  const TasksBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TasksCubit, TasksPageState>(
      listener: (context, state) {
        if (state.goGuidTask != null) {
          Navigator.push<bool>(
            context,
            MaterialPageRoute(
              builder: (context) => TaskPage(guid: state.goGuidTask!),
            ),
          ).then((value) {
            if (value != null) {
              if (value) {
                context.read<TasksCubit>().refreshData();
              }
            }
          });
        }
      },
      buildWhen: (previous, current) {
        return current.goGuidTask == null;
      },
      builder: (context, state) {
        final popupMenuButton = PopupMenuButton(
          icon: const Icon(Icons.more_vert),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: const Text("Выйти"),
              onTap: () {
                BlocProvider.of<TasksCubit>(context).exit();
              },
            ),
            PopupMenuItem(
              value: 1,
              child: const Text("Обновить"),
              onTap: () {
                BlocProvider.of<TasksCubit>(context).refreshData();
              },
            ),
            PopupMenuItem(
              value: 1,
              child: const Text("Очистить"),
              onTap: () {
                BlocProvider.of<TasksCubit>(context).clear();
              },
            ),
          ],
        );

        final appBar = CustomAppBar(
          title: Text(state.user),
          actions: [popupMenuButton],
        );
        return Scaffold(
          appBar: appBar,
          body: RefreshIndicator(
            onRefresh: () async {
              BlocProvider.of<TasksCubit>(context).refreshData();
            },
            child: Column(
              children: [
                Expanded(
                  flex: 0,
                  child: Column(
                    children: [
                      if (state.isLoading)
                        const CustomLinearProgressIndicator(),
                      if (state.error.isNotEmpty)
                        Column(
                          children: [
                            const CustomDividerHeader(),
                            Center(
                              child: CustomErrorText(text: state.error),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TaskListWidget(list: state.tasks),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TaskListWidget extends StatelessWidget {
  final List<TaskItem> list;
  const TaskListWidget({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      scrollDirection: Axis.vertical,
      //shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => TaskItemWidget(
        item: list[index],
      ),
      itemCount: list.length,
    );
  }
}

class TaskItemWidget extends StatelessWidget {
  final TaskItem item;

  const TaskItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => BlocProvider.of<TasksCubit>(context).onClick(item.guid),
      child: Card(
        child: ListTile(
          title: Text(item.title ?? ''),
          subtitle: Row(
            children: [
              Expanded(
                  child: Text(DateFormat('dd.MM.yy HH:mm').format(item.date!))),
              Expanded(
                child: Chip(
                  backgroundColor: Colors.amber[50],
                  avatar: const CircleAvatar(
                    child: Icon(Icons.account_circle),
                    backgroundColor: Colors.blue,
                  ),
                  label: Text(item.partner?.name ?? ''),
                  elevation: 2,
                  shadowColor: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
