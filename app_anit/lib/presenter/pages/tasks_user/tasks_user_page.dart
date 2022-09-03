import 'package:app_anit/core/extencion/date_extencion.dart';
import 'package:app_anit/domain/models/task_item_extention.dart';
import 'package:app_anit/presenter/pages/tasks_user/tasks_user_bloc.dart';
import 'package:app_anit/presenter/pages/tasks_user/tasks_user_models.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../disign_system/widgets_design/custom_base_snackbar.dart';
import '../../disign_system/widgets_design/custom_empty_page.dart';
import '../../disign_system/widgets_design/custom_error_page.dart';
import '../../disign_system/widgets_design/custom_page_widget.dart';
import '../../disign_system/widgets_design/custom_progres_widgets.dart';
import '../../disign_system/widgets_design/dialogs/show_dialog_choice_catalog.dart';
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
              isCurentUser: value.isCurentUser,
              appUser: value.appUser,
            ),
            error: (value) => CustomErrorPage(
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
        openChooseUserDialog: () => showDialogChoiceCatalog(
              context: context,
              title: 'Ответственный',
              type: 'Пользователи',
              choice: (refCatalog) => context
                  .read<TasksUserBlok>()
                  .add(TasksUserEvent.onChangeUser(refCatalog)),
            ),
        exit: () {},
        showSnackBar: (message) =>
            CustomBaseSnackbar.show(context: context, text: message),
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
  final bool isCurentUser;
  final RefCatalog appUser;

  const _PageContent({
    Key? key,
    required this.tasks,
    required this.controlledTasks,
    required this.isLoading,
    required this.title,
    required this.isCurentUser,
    required this.appUser,
  }) : super(key: key);

  @override
  State<_PageContent> createState() => _TestSilverAppBarState();
}

class _TestSilverAppBarState extends State<_PageContent>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  //https://www.youtube.com/watch?v=xzPXqQ-Pe2g

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.read<TasksUserBlok>().add(const TasksUserEvent.onTapFab());
        },
      ),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: true,
              title: Text(widget.title),
              //expandedHeight: 58,
              //pinned: false,
              snap: true,
              actions: <Widget>[
                if (widget.isCurentUser)
                  IconButton(
                    icon: const Icon(Icons.filter_alt),
                    onPressed: () async {
                      context
                          .read<TasksUserBlok>()
                          .add(const TasksUserEvent.onTapFilter());
                    },
                  ),
                if (!widget.isCurentUser)
                  IconButton(
                    icon: const Icon(Icons.filter_alt_off),
                    onPressed: () async {
                      context
                          .read<TasksUserBlok>()
                          .add(const TasksUserEvent.onTapFilterOff());
                    },
                  ),
              ],
            ),
            SliverPersistentHeader(
              floating: true,
              delegate: _SliverAppBarDelegate(
                TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(child: Text('Делаю ${widget.tasks.length}')),
                    Tab(
                      child: Text('Контроль ${widget.controlledTasks.length}'),
                    ),
                  ],
                ),
              ),
              pinned: true,
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            TaskListWidget(
              list: widget.tasks,
              isLoading: widget.isLoading,
              appUser: widget.appUser,
              isControlledTasks: false,
            ),
            TaskListWidget(
              list: widget.controlledTasks,
              isLoading: widget.isLoading,
              appUser: widget.appUser,
              isControlledTasks: true,
            )
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height + 8;
  @override
  double get maxExtent => _tabBar.preferredSize.height + 8;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: CustomPageWidget(child: _tabBar),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return true;
  }
}

class TaskListWidget extends StatelessWidget {
  final List<TaskItem> list;
  final bool isLoading;
  final RefCatalog appUser;
  final bool isControlledTasks;
  const TaskListWidget({
    Key? key,
    required this.list,
    required this.isLoading,
    required this.appUser,
    required this.isControlledTasks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<TasksUserBlok>().add(const TasksUserEvent.refresh());
      },
      child: Column(
        children: [
          if (isLoading)
            const SizedBox(
                height: 8,
                child: Center(child: CustomLinearProgressIndicator())),
          if (!isLoading) const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return TaskItemWidget(
                  item: list[index],
                  appUser: appUser,
                  isControlledTasks: isControlledTasks,
                );
              },
              itemCount: list.length,
            ),
          ),
        ],
      ),
    );
  }
}

class TaskItemWidget extends StatelessWidget {
  final TaskItem item;
  final RefCatalog appUser;
  final bool isControlledTasks;

  const TaskItemWidget({
    Key? key,
    required this.item,
    required this.appUser,
    required this.isControlledTasks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleTitle = item.condition!.name == 'Завершено'
        ? const TextStyle(decoration: TextDecoration.lineThrough)
        : null;

    Widget? getLeading() {
      if (item.needAccept(appUser)) {
        return IconButton(
          icon: const Icon(Icons.notifications_active),
          onPressed: () async {
            if (!isControlledTasks) {
              context
                  .read<TasksUserBlok>()
                  .add(TasksUserEvent.onAcceptTask(item.guid!));
            } else {}
          },
        );
      }

      return null;
    }

    Widget? getTrailing() {
      if (!item.needAccept(appUser)) {
        return IconButton(
          icon: const Icon(Icons.check),
          onPressed: () async {
            if (isControlledTasks) {
              context
                  .read<TasksUserBlok>()
                  .add(TasksUserEvent.onSetControlDoneTask(item.guid!));
            } else {
              context
                  .read<TasksUserBlok>()
                  .add(TasksUserEvent.onCompleteTask(item.guid!));
            }
          },
        );
      }

      return null;
    }

    return Card(
      child: ListTile(
        onTap: () => context
            .read<TasksUserBlok>()
            .add(TasksUserEvent.onTapItem(item.guid!)),
        title: Text(
          item.title ?? '',
          style: textStyleTitle,
        ),
        leading: getLeading(),
        trailing: getTrailing(),
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
