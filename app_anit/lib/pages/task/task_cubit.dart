import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/app_model.dart';
import '../../domain/repositories/repository.dart';

class TaskCubit extends Cubit<TaskPageState> {
  final Repository repository;
  final AppModel appModel;
  final String guid;

  TaskPageState _pageState() => TaskPageState(task: Task(guid: guid));

  TaskCubit({
    required this.repository,
    required this.appModel,
    required this.guid,
  }) : super(TaskPageState().copyWith(task: Task(guid: guid)));

  init() {
    refreshData();
  }

  void refreshData() async {
    emit(_pageState().copyWith(isLoading: true));

    final either = await repository.getTaskByGuid(guid);

    either.fold((fail) {
      emit(_pageState().copyWith(error: 'Что пошло не так'));
    }, (task) {
      emit(_pageState().copyWith(task: task));
    });
  }
}

class TaskPageState {
  final bool isLoading;
  final String error;
  final Task? task;

  TaskPageState({
    this.isLoading = false,
    this.error = '',
    this.task,
  });

  TaskPageState copyWith({
    bool? isLoading,
    String? error,
    Task? task,
  }) {
    return TaskPageState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      task: task ?? this.task,
    );
  }
}
