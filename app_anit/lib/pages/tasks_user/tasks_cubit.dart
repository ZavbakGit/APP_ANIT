import 'dart:async';

import 'package:app_anit/domain/repositories/repository.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/app_model.dart';

class TasksCubit extends Cubit<TasksPageState> {
  final Repository repository;
  final AppModel appModel;
  final List<TaskItem> tasks = [];

  late Timer? _timer;

  TasksCubit({
    required this.repository,
    required this.appModel,
  }) : super(TasksPageState(user: appModel.remoteConfig!.user));

  TasksPageState _pageState() =>
      TasksPageState(user: appModel.remoteConfig!.user, tasks: tasks);

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

  void clear() {
    tasks.clear();
    emit(_pageState());
  }

  void refreshData() async {
    emit(_pageState().copyWith(isLoading: true));
    final either =
        await repository.tasksUserGet(appModel.remoteConfig!.user!.guid!);

    tasks.clear();
    either.fold((fail) {
      emit(_pageState().copyWith(error: 'Что пошло не так'));
    }, (list) {
      tasks.addAll(list);
      emit(_pageState());
    });
  }

  onClick(String? guid) {
    emit(_pageState().copyWith(goGuidTask: guid));
  }
}

class TasksPageState {
  final bool isLoading;
  final RefCatalog user;
  final List<TaskItem> tasks;
  final String error;
  final String? goGuidTask;

  TasksPageState({
    required this.user,
    this.isLoading = false,
    this.tasks = const [],
    this.error = '',
    this.goGuidTask,
  });

  TasksPageState copyWith({
    bool? isLoading,
    RefCatalog? user,
    List<TaskItem>? tasks,
    String? error,
    String? goGuidTask,
  }) {
    return TasksPageState(
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
      tasks: tasks ?? this.tasks,
      error: error ?? this.error,
      goGuidTask: goGuidTask ?? this.goGuidTask,
    );
  }
}
