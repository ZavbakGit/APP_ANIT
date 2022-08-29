import 'dart:async';

import 'package:app_anit/presenter/pages/tasks_user/tasks_user_models.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
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

  late Timer? _timer;

  TasksUserBlok({
    required this.appModel,
    required this.repository,
  }) : super(const TasksUserState.empty()) {
    on<EvInit>(_init);
    on<EvRefresh>(_refresh);
    on<EvOnTapItem>(_onTapItem);
    on<EvOnTapFab>(_onTapFab);
  }

  FutureOr<void> _init(
    EvInit event,
    Emitter<TasksUserState> emit,
  ) {
    add(const TasksUserEvent.refresh());
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) {
      add(const TasksUserEvent.refresh());
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
    emit(TasksUserState.data(
      title: appModel.remoteConfig?.user.name ?? '',
      isLoading: true,
      tasks: tasks,
      controlledTasks: controlledTasks,
    ));

    final either =
        await repository.tasksUserGet(appModel.remoteConfig!.user.guid!);

    tasks.clear();
    controlledTasks.clear();

    either.fold((fail) {
      emit(TasksUserState.error('Ошибка: ${fail.error}'));
    }, (list) {
      tasks.addAll(list
          .where((element) => element.isResponsible! || element.isAssistants!));
      controlledTasks.addAll(
        list.where((element) => element.isControllers!),
      );

      emit(TasksUserState.data(
        isLoading: false,
        title: appModel.remoteConfig?.user.name ?? '',
        tasks: tasks,
        controlledTasks: controlledTasks,
      ));
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
}
