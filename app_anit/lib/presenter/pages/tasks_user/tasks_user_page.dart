import 'package:app_anit/core/extencion/date_extencion.dart';
import 'package:app_anit/core/presentation/widgets_design/error_page.dart';
import 'package:app_anit/presenter/pages/tasks_user/tasks_user_bloc.dart';
import 'package:app_anit/presenter/pages/tasks_user/tasks_user_models.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../../core/presentation/widgets_design/base_snackbar.dart';
import '../../../core/presentation/widgets_design/empty_page.dart';
import '../../../core/presentation/widgets_design/page_widget.dart';
import '../../../core/presentation/widgets_design/progres_widget.dart';
import '../task/task_page.dart';

class TasksUserPage extends StatelessWidget {
  const TasksUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TasksUserBlok>(
      create: (context) => TasksUserBlok(appModel: sl(), repository: sl())
        ..add(const TasksUserEvent.init()),
      child: SrBlocBuilder<TasksUserBlok, TasksUserState, TasksUserSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          return state.map(
            empty: (_) => const CustomEmptyPage(),
            data: (value) => _PageContent(
              tasks: value.tasks,
              controlledTasks: value.controlledTasks,
              title: value.title,
              isLoading: value.isLoading,
            ),
            error: (value) => ErrorPage(
                message: value.message,
                onClick: () => context
                    .read<TasksUserBlok>()
                    .add(const TasksUserEvent.refresh())),
          );
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, TasksUserSR sr) {
    sr.when(
        exit: () {},
        showSnackBar: (message) =>
            BaseSnackbar.show(context: context, text: message),
        openTask: (guid) {
          Navigator.push<bool>(
            context,
            MaterialPageRoute(
              builder: (context) => TaskPage(guid: guid),
            ),
          ).then((value) {
            if (value != null) {
              if (value) {
                context
                    .read<TasksUserBlok>()
                    .add(const TasksUserEvent.refresh());
              }
            }
          });
        },
        openNewTask: () {
          Navigator.push<bool>(
            context,
            MaterialPageRoute(
              builder: (context) => const TaskPage(),
            ),
          ).then((value) {
            if (value != null) {
              if (value) {
                context
                    .read<TasksUserBlok>()
                    .add(const TasksUserEvent.refresh());
              }
            }
          });
        });
  }
}

class _PageContent extends StatefulWidget {
  final List<TaskItem> tasks;
  final List<TaskItem> controlledTasks;
  final bool isLoading;
  final String title;

  const _PageContent({
    Key? key,
    required this.tasks,
    required this.controlledTasks,
    required this.isLoading,
    required this.title,
  }) : super(key: key);

  @override
  State<_PageContent> createState() => _PageContentState();
}

class _PageContentState extends State<_PageContent>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(widget.title),
            if (widget.isLoading)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: CustomCircularProgressIndicator(),
                ),
              ),
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Text('Делаю ${widget.tasks.length}'),
            ),
            Tab(
              child: Text('Контроль ${widget.controlledTasks.length}'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.read<TasksUserBlok>().add(const TasksUserEvent.onTapFab());
        },
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          TaskListWidget(
            list: widget.tasks,
            isLoading: widget.isLoading,
          ),
          TaskListWidget(
            list: widget.controlledTasks,
            isLoading: widget.isLoading,
          )
        ],
      ),
    );
  }
}

class TaskListWidget extends StatelessWidget {
  final List<TaskItem> list;
  final bool isLoading;
  const TaskListWidget({
    Key? key,
    required this.list,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<TasksUserBlok>().add(const TasksUserEvent.refresh());
      },
      child: CustomPageWidget(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.vertical,
          //shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return TaskItemWidget(item: list[index]);
          },
          itemCount: list.length,
        ),
      ),
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
    final textStyleTitle = item.condition!.name == 'Завершено'
        ? const TextStyle(decoration: TextDecoration.lineThrough)
        : null;

    return Card(
      child: ListTile(
        onTap: () => context
            .read<TasksUserBlok>()
            .add(TasksUserEvent.onTapItem(item.guid!)),
        title: Text(
          item.title ?? '',
          style: textStyleTitle,
        ),
        subtitle: Row(
          children: [
            Expanded(
              child: Text(item.date!.getStrDateTime()),
            ),
            Expanded(
              child: Text(item.partner?.name ?? ''),
            ),
          ],
        ),
      ),
    );
  }
}
