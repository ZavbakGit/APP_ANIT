import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repositories/repository.dart';

class TaskCubit extends Cubit<TaskState> {
  final Repository repository;
  final String guid;
  Task? task;
  bool isModified = false;

  TaskCubit({
    required this.repository,
    required this.guid,
  }) : super(TaskState(isLoading: true));

  init() {
    refreshData();
  }

  TaskState get baseState => TaskState(task: task, isModified: isModified);

  void refreshData() async {
    emit(TaskState(isLoading: true));

    final either = await repository.getTaskByGuid(guid);

    either.fold((fail) {
      emit(TaskState(error: fail.error));
    }, (result) {
      task = result;
      emit(baseState);
    });
  }

  void exit() async {
    isModified = false;
    emit(TaskState(task: task, exit: true, isModified: isModified));
  }

  void save() async {
    emit(TaskState(isLoading: true));
    final either = await repository.saveTask(task: task!);

    either.fold((fail) {
      emit(TaskState(error: fail.error));
    }, (result) {
      emit(TaskState(task: task, exit: true, isModified: isModified));
    });
  }

  void changeTitle(String val) {
    task = task!.copyWith(title: val);
    isModified = true;
    emit(baseState);
  }

  void changePartner(RefCatalog val) {
    task = task?.copyWith(partner: val);
    isModified = true;
    emit(baseState);
  }

  void changeResponsible(RefCatalog val) {
    task = task?.copyWith(responsible: val);
    isModified = true;
    emit(baseState);
  }

  void changeProducer(RefCatalog val) {
    task = task?.copyWith(producer: val);
    isModified = true;
    emit(baseState);
  }

  void changeCondition(RefEnum val) {
    task = task?.copyWith(condition: val);
    isModified = true;
    emit(baseState);
  }

  void changeImportance(RefEnum val) {
    task = task?.copyWith(importance: val);
    isModified = true;
    emit(baseState);
  }
}

class TaskState {
  final bool isLoading;
  final String? error;
  final Task? task;
  final bool isModified;
  final bool exit;

  TaskState({
    this.isLoading = false,
    this.error,
    this.task,
    this.isModified = false,
    this.exit = false,
  });

  @override
  String toString() {
    return 'TaskState(isLoading: $isLoading, error: $error, task: $task, isModified: $isModified)';
  }
}
