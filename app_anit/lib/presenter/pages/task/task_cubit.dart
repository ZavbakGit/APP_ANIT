import 'package:app_anit/core/error/failures.dart';
import 'package:app_anit/core/extencion/date_extencion.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models/app_model.dart';
import '../../../domain/repositories/repository.dart';

class TaskCubit extends Cubit<TaskState> {
  final Repository repository;
  final String? guidTask;
  final bool? isNewControllerTask;
  final AppModel appModel;
  Task? task;
  bool isModified = false;

  TaskCubit({
    required this.repository,
    required this.guidTask,
    required this.appModel,
    this.isNewControllerTask,
  }) : super(TaskState(isLoading: true, isNewTask: guidTask == null));

  init() {
    getData();
  }

  TaskState get baseState =>
      TaskState(task: task, isModified: isModified, isNewTask: isNewTask);
  TaskState get exitState => baseState.copyWith(exit: true);
  TaskState get loadingState => baseState.copyWith(isLoading: true);
  TaskState getErrorSate(Failure failure) =>
      baseState.copyWith(error: failure.error);

  bool get isNewTask => guidTask == null;

  void getData() async {
    emit(loadingState);

    final either = (!isNewTask)
        ? await repository.getTaskByGuid(guidTask!)
        : await repository.taskNewGet();

    either.fold((fail) {
      emit(getErrorSate(fail));
    }, (result) {
      task = result;
      if (isNewControllerTask ?? false) {
        addController(appModel.remoteConfig!.user);
      } else {
        emit(baseState);
      }
    });
  }

  void exit() async {
    isModified = false;
    emit(exitState);
  }

  void save() async {
    emit(loadingState);
    final either = await repository.saveTask(task: task!);

    either.fold((fail) {
      emit(getErrorSate(fail));
    }, (result) {
      emit(exitState);
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

  void dellController(String guidController) {
    task = task?.copyWith(
        controllers: task!.controllers!
            .where((element) => element.guid != guidController)
            .toList());
    isModified = true;
    emit(baseState);
  }

  void dellAssistant(String guidAssistant) {
    task = task?.copyWith(
        assistants: task!.assistants!
            .where((element) => element.guid != guidAssistant)
            .toList());
    isModified = true;
    emit(baseState);
  }

  void addController(RefCatalog value) {
    if (!task!.controllers!.map((e) => e.guid).contains(value.guid)) {
      final list = [
        ...task!.controllers!,
        value,
      ];

      task = task?.copyWith(controllers: list);
      isModified = true;
      emit(baseState);
    }
  }

  void addAssitant(RefCatalog value) {
    if (!task!.assistants!.map((e) => e.guid).contains(value.guid)) {
      final list = [
        ...task!.assistants!,
        value,
      ];

      task = task?.copyWith(assistants: list);
      isModified = true;
      emit(baseState);
    }
  }

  void setControlDone() {
    task = task?.copyWith(dateControl: DateTime.now());
    isModified = true;
    emit(baseState);
  }

  void setControl() {
    task = task?.copyWith(dateControl: getEmptyDate());
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
  final bool isNewTask;

  TaskState({
    this.isLoading = false,
    this.error,
    this.task,
    this.isModified = false,
    this.exit = false,
    required this.isNewTask,
  });

  bool get isControlDone {
    if (task?.dateControl == null) {
      return false;
    }
    if (task!.dateControl!.isEmptyDate) {
      return false;
    }

    return true;
  }

  @override
  String toString() {
    return 'TaskState(isLoading: $isLoading, error: $error, task: $task, isModified: $isModified, exit: $exit)';
  }

  TaskState copyWith({
    bool? isLoading,
    String? error,
    Task? task,
    bool? isModified,
    bool? exit,
    bool? isNewTask,
  }) {
    return TaskState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      task: task ?? this.task,
      isModified: isModified ?? this.isModified,
      exit: exit ?? this.exit,
      isNewTask: isNewTask ?? this.isNewTask,
    );
  }
}
