import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/repository.dart';

class TaskCubit extends Cubit<TaskPageState> {
  final Repository repository;
  final String guid;
  Task? task;
  bool modified = false;

  TaskPageState _pageState() => TaskPageState();

  TaskCubit({
    required this.repository,
    required this.guid,
  }) : super(TaskPageState().copyWith(task: Task(guid: guid)));

  init() {
    refreshData();
  }

  void changePartner(RefCatalog partner) {
    task = task?.copyWith(partner: partner);
    emit(_pageState().copyWith(task: task));
    modified = true;
  }

  void refreshData() async {
    emit(_pageState().copyWith(isLoading: true));

    final either = await repository.getTaskByGuid(guid);

    either.fold((fail) {
      emit(_pageState().copyWith(error: 'Что пошло не так'));
    }, (result) {
      task = result;
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
