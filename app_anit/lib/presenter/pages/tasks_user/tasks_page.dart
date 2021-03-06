import 'package:app_anit/core/extencion/date_extencion.dart';
import 'package:app_anit/core/presentation/widgets_design/app_bar.dart';
import 'package:app_anit/presenter/pages/tasks_user/tasks_cubit.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../core/presentation/widgets_design/custom_error_widget.dart';
import '../../../core/presentation/widgets_design/page_widget.dart';
import '../../../core/presentation/widgets_design/progres_widget.dart';
import '../../../core/presentation/widgets_design/text_widget.dart';
import '../task/task_page.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<TasksCubit>()..init(),
      child: CustomPageWidget(
        child: TasksBodyWidget(tabController: _tabController),
      ),
    );
  }
}

class TasksBodyWidget extends StatelessWidget {
  final TabController tabController;

  const TasksBodyWidget({
    super.key,
    required this.tabController,
  });

  List<Widget> getPopupMenu() {
    return [
      PopupMenuButton(
        icon: const Icon(Icons.more_vert),
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: const Text("Выйти"),
            onTap: () {
              context.read<TasksCubit>().exit();
            },
          ),
        ],
      )
    ];
  }

  CustomAppBar getAppBar(TasksPageState state) {
    final controled = state.controlledTasks.isNotEmpty
        ? '(${state.controlledTasks.length})'
        : '';

    final tasks = state.tasks.isNotEmpty ? '(${state.tasks.length})' : '';

    return CustomAppBar(
      title: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
        child: CustomAppBarTitleText(
          text: state.user.name!,
        ),
      ),
      actions: getPopupMenu(),
      bottom: TabBar(
        controller: tabController,
        tabs: [
          Tab(
            child: Text('Делаю $tasks'),
          ),
          Tab(
            child: Text('Контроль $controled'),
          ),
        ],
      ),
    );
  }

  RefreshIndicator getTabWidget(
    BuildContext context, {
    required TasksPageState state,
    bool isControllTask = false,
  }) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<TasksCubit>().refreshData();
      },
      child: Column(
        children: [
          Expanded(
            flex: 0,
            child: Column(
              children: [
                if (state.isLoading) const CustomLinearProgressIndicator(),
                if (state.error.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 32, 8, 8),
                    child: CustomErrorWidget(text: state.error),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: isControllTask
                    ? TaskListWidget(list: state.controlledTasks)
                    : TaskListWidget(list: state.tasks)),
          ),
        ],
      ),
    );
  }

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
        if (state.addTask) {
          Navigator.push<bool>(
            context,
            MaterialPageRoute(
              builder: (context) => const TaskPage(),
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
        return !current.notRebuild;
      },
      builder: (context, state) {
        return Scaffold(
          appBar: getAppBar(state),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<TasksCubit>().onClickAddTask();
            },
          ),
          body: TabBarView(
            controller: tabController,
            children: [
              getTabWidget(context, state: state),
              getTabWidget(context, state: state, isControllTask: true),
            ],
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
      itemBuilder: (BuildContext context, int index) =>
          TaskItemWidget(item: list[index]),
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
    final textStyleTitle = item.condition!.name == 'Завершено'
        ? const TextStyle(decoration: TextDecoration.lineThrough)
        : null;

    return GestureDetector(
      onTap: () => context.read<TasksCubit>().onClick(item.guid),
      child: Card(
        child: ListTile(
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
                child: Chip(
                  backgroundColor: Colors.amber[50],
                  avatar: const CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.account_circle),
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
