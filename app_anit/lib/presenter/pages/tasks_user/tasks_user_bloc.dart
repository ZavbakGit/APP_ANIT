import 'dart:async';

import 'package:app_anit/domain/models/task_item_extention.dart';
import 'package:app_anit/presenter/pages/tasks_user/tasks_user_models.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../arch/sr_bloc/sr_bloc.dart';
import '../../../domain/models/app_model.dart';
import '../../../domain/repositories/repository.dart';

class TasksUserBlok
    extends SrBloc<TasksUserEvent, TasksUserState, TasksUserSR> {
  final AppModel appModel;
  final Repository repository;

  final List<TaskItem> tasks = [];
  final List<TaskItem> controlledTasks = [];

  late RefCatalog curentUser;

  bool get isCurentUser => curentUser.guid == appModel.remoteConfig!.user.guid!;

  late Timer? _timer;

  int curentPageBotomBar = 0;
  bool isLoading = false;

  TasksUserBlok({
    required this.appModel,
    required this.repository,
  }) : super(const TasksUserState.empty()) {
    on<EvInit>(_init);
    on<EvRefresh>(_refresh);
    on<EvReload>(_reload);
    on<EvOnTapItem>(_onTapItem);
    on<EvOnTapFab>(_onTapFab);
    on<EvOnTapFilter>(_onTapFilter);
    on<EvOnChangeUser>(_onChangeUser);
    on<EvOnTapFilterOff>(_onTapFilterOff);
    on<EvOnAcceptTask>(_onAcceptTask);
    on<EvOnCompleteTask>(_onCompleteTask);
    on<EvOnSetControlDoneTask>(_onSetControlDoneTask);
    on<EvOnTapNavBottomBar>(_onTapNavBottomBar);
  }

  FutureOr<void> _init(
    EvInit event,
    Emitter<TasksUserState> emit,
  ) {
    curentUser = appModel.remoteConfig!.user;
    add(const TasksUserEvent.reload());
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) {
      add(const TasksUserEvent.reload());
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  FutureOr<void> _refresh(
    EvRefresh event,
    Emitter<TasksUserState> emit,
  ) async {
    emit(
      TasksUserState.data(
        title: curentUser.name!,
        isLoading: isLoading,
        tasks: tasks,
        controlledTasks: controlledTasks,
        isCurentUser: isCurentUser,
        appUser: appModel.remoteConfig!.user,
        curentIndexTab: curentPageBotomBar,
      ),
    );
  }

  FutureOr<void> _reload(
    EvReload event,
    Emitter<TasksUserState> emit,
  ) async {
    isLoading = true;
    add(const EvRefresh());

    final either = await repository.tasksUserGet(curentUser.guid!);

    tasks.clear();
    controlledTasks.clear();

    either.fold((fail) {
      emit(TasksUserState.error(message: 'Ошибка: ${fail.error}'));
    }, (list) {
      list.sort((a, b) {
        final aNeedAccept = a.needAccept(curentUser);

        if (aNeedAccept) {
          return -1;
        } else {
          return 1;
        }
      });

      list.sort(
        (a, b) {
          return (a.importance?.index ?? 1).compareTo(b.importance?.index ?? 1);
        },
      );

      tasks.addAll(
        list.where(
            (element) => element.isResponsible! || element.isAssistants!),
      );

      controlledTasks.addAll(
        list.where((element) => element.isControllers!),
      );

      isLoading = false;
      add(const EvRefresh());
    });
  }

  FutureOr<void> _onTapItem(
    EvOnTapItem event,
    Emitter<TasksUserState> emit,
  ) {
    addSr(TasksUserSR.openTask(event.guid));
  }

  FutureOr<void> _onTapFab(
    EvOnTapFab event,
    Emitter<TasksUserState> emit,
  ) {
    addSr(const TasksUserSR.openNewTask());
  }

  FutureOr<void> _onTapFilter(
    EvOnTapFilter event,
    Emitter<TasksUserState> emit,
  ) {
    addSr(const TasksUserSR.openChooseUserDialog());
  }

  FutureOr<void> _onChangeUser(
    EvOnChangeUser event,
    Emitter<TasksUserState> emit,
  ) {
    curentUser = event.user;
    add(const EvReload());
  }

  FutureOr<void> _onTapFilterOff(
    EvOnTapFilterOff event,
    Emitter<TasksUserState> emit,
  ) {
    curentUser = appModel.remoteConfig!.user;
    add(const EvReload());
  }

  FutureOr<void> _onAcceptTask(
    EvOnAcceptTask event,
    Emitter<TasksUserState> emit,
  ) async {
    final either = (await (await repository.getTaskByGuid(event.guidTask))
            .map((task) => task.copyWith(
                condition: RefEnum(
                    index: 1, name: 'Принято', type: 'АН_СостоянияСобытия')))
            .traverseFuture((task) => repository.saveTask(task: task)))
        .flatMap(id);

    either.fold((fail) {
      emit(TasksUserState.error(message: 'Ошибка: ${fail.error}'));
      add(const EvReload());
    }, (task) {
      add(const EvReload());
    });
  }

  FutureOr<void> _onCompleteTask(
    EvOnCompleteTask event,
    Emitter<TasksUserState> emit,
  ) async {
    final either = (await (await repository.getTaskByGuid(event.guidTask))
            .map((task) => task.copyWith(
                condition: RefEnum(
                    index: 4, name: 'Принято', type: 'АН_СостоянияСобытия')))
            .traverseFuture((task) => repository.saveTask(task: task)))
        .flatMap(id);

    either.fold((fail) {
      emit(TasksUserState.error(message: 'Ошибка: ${fail.error}'));
      add(const EvReload());
    }, (task) {
      add(const EvReload());
    });
  }

  FutureOr<void> _onSetControlDoneTask(
    EvOnSetControlDoneTask event,
    Emitter<TasksUserState> emit,
  ) async {
    final either = (await (await repository.getTaskByGuid(event.guidTask))
            .map((task) => task.copyWith(dateControl: DateTime.now()))
            .traverseFuture((task) => repository.saveTask(task: task)))
        .flatMap(id);

    either.fold((fail) {
      emit(TasksUserState.error(message: 'Ошибка: ${fail.error}'));
      add(const EvReload());
    }, (task) {
      add(const EvReload());
    });
  }

  FutureOr<void> _onTapNavBottomBar(
    EvOnTapNavBottomBar event,
    Emitter<TasksUserState> emit,
  ) async {
    curentPageBotomBar = event.index;
    add(const EvRefresh());
  }
}
