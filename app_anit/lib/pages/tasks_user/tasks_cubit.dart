import 'package:app_anit/domain/repositories/repository.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/app_model.dart';
import 'dart:async';

class TasksCubit extends Cubit<TasksPageState> {
  final Repository repository;
  final AppModel appModel;
  final List<TaskItem> tasks = [];

  late Timer? _timer;

  TasksCubit({
    required this.repository,
    required this.appModel,
  }) : super(TasksPageState());

  TasksPageState _pageState() =>
      TasksPageState(user: appModel.remoteConfig?.nameUser ?? '', tasks: tasks);

  void exit() {
    appModel.logout();
  }

  void init() {
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
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
    await Future.delayed(const Duration(seconds: 1));
    final either =
        await repository.tasksUserGet(appModel.remoteConfig!.guidUser);

    tasks.clear();
    either.fold((fail) {
      emit(_pageState().copyWith(error: 'Что пошло не так'));
    }, (list) {
      tasks.addAll(list);
      emit(_pageState());
    });
  }
}

class TasksPageState {
  final bool isLoading;
  final String user;
  final List<TaskItem> tasks;
  final String error;

  TasksPageState({
    this.user = '',
    this.isLoading = false,
    this.tasks = const [],
    this.error = '',
  });

  TasksPageState copyWith({
    bool? isLoading,
    String? user,
    List<TaskItem>? tasks,
    String? error,
  }) {
    return TasksPageState(
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
      tasks: tasks ?? this.tasks,
      error: error ?? this.error,
    );
  }

  @override
  String toString() {
    return 'TasksPageState(isLoading: $isLoading, user: $user, tasks: $tasks, error: $error)';
  }
}
