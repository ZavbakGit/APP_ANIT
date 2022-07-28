import 'dart:async';

import 'package:app_anit/domain/repositories/repository.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models/app_model.dart';

class TasksCubit extends Cubit<TasksPageState> {
  final Repository repository;
  final AppModel appModel;
  final List<TaskItem> tasks = [];
  final List<TaskItem> controlleredTasks = [];

  late Timer? _timer;

  TasksCubit({
    required this.repository,
    required this.appModel,
  }) : super(TasksPageState(user: appModel.remoteConfig!.user));

  TasksPageState get _baseState => TasksPageState(
        user: appModel.remoteConfig!.user,
        tasks: tasks,
        controlledTasks: controlleredTasks,
      );

  RefCatalog get user => appModel.remoteConfig!.user;

  void exit() {
    appModel.logout();
  }

  void init() {
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) {
      refreshData();
    });
    refreshData();
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  void refreshData() async {
    emit(_baseState.copyWith(isLoading: true));

    //await Future.delayed(const Duration(milliseconds: 500));
    final either =
        await repository.tasksUserGet(appModel.remoteConfig!.user.guid!);

    tasks.clear();
    controlleredTasks.clear();
    either.fold((fail) {
      emit(_baseState.copyWith(error: fail.error));
    }, (list) {
      tasks.addAll(
        list.where(
            (element) => element.isResponsible! || element.isAssistants!),
      );
      controlleredTasks.addAll(
        list.where((element) => element.isControllers!),
      );

      emit(_baseState);
    });
  }

  void onClickAddTask({bool isControled = false}) {
    emit(_baseState.copyWith(addTask: true, notRebuild: true));
  }

  void onClick(String? guid) {
    emit(_baseState.copyWith(goGuidTask: guid, notRebuild: true));
  }
}

class TasksPageState {
  final bool isLoading;
  final RefCatalog user;
  final List<TaskItem> tasks;
  final List<TaskItem> controlledTasks;
  final String error;
  final String? goGuidTask;
  final bool addTask;
  final bool notRebuild;

  TasksPageState({
    required this.user,
    this.isLoading = false,
    this.tasks = const [],
    this.controlledTasks = const [],
    this.error = '',
    this.addTask = false,
    this.notRebuild = false,
    this.goGuidTask,
  });

  TasksPageState copyWith({
    bool? isLoading,
    RefCatalog? user,
    List<TaskItem>? tasks,
    List<TaskItem>? controlledTasks,
    String? error,
    String? goGuidTask,
    bool? addTask,
    bool? notRebuild,
  }) {
    return TasksPageState(
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
      tasks: tasks ?? this.tasks,
      controlledTasks: controlledTasks ?? this.controlledTasks,
      error: error ?? this.error,
      goGuidTask: goGuidTask ?? this.goGuidTask,
      addTask: addTask ?? this.addTask,
      notRebuild: notRebuild ?? this.notRebuild,
    );
  }
}
