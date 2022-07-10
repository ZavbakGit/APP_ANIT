import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/repository.dart';

class TaskCubit extends Cubit<TaskPageState> {
  final Repository repository;
  final String guid;
  Task? task;
  bool isModified = false;

  TaskPageState _pageState() =>
      TaskPageState(isModified: isModified, task: task);

  TaskCubit({
    required this.repository,
    required this.guid,
  }) : super(TaskPageState().copyWith(task: Task(guid: guid)));

  init() {
    refreshData();
  }

  void changePartner(RefCatalog partner) {
    task = task?.copyWith(partner: partner);
    isModified = true;
    emit(_pageState());
  }

  void changeResponsible(RefCatalog responsible) {
    task = task?.copyWith(responsible: responsible);
    isModified = true;
    emit(_pageState());
  }

  void changeCondition(TaskCondition condition) {
    task = task?.copyWith(condition: condition);
    isModified = true;
    emit(_pageState());
  }

  void changeImportance(TaskImportance importance) {
    task = task?.copyWith(importance: importance);
    isModified = true;
    emit(_pageState());
  }

  void changeProducer(RefCatalog producer) {
    task = task?.copyWith(producer: producer);
    isModified = true;
    emit(_pageState());
  }

  void changeTitle(String title) {
    task = task?.copyWith(title: title);
    isModified = true;
  }

  void refreshData() async {
    emit(_pageState().copyWith(isLoading: true));

    final either = await repository.getTaskByGuid(guid);

    either.fold((fail) {
      emit(_pageState().copyWith(error: 'Что пошло не так'));
    }, (result) {
      task = result;
      emit(_pageState());
    });
  }
}

class TaskPageState {
  final bool isLoading;
  final String error;
  final Task? task;
  final bool isModified;

  TaskPageState({
    this.isLoading = false,
    this.error = '',
    this.task,
    this.isModified = false,
  });

  TaskPageState copyWith({
    bool? isLoading,
    String? error,
    Task? task,
    bool? isModified,
  }) {
    return TaskPageState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      task: task ?? this.task,
      isModified: isModified ?? this.isModified,
    );
  }
}
