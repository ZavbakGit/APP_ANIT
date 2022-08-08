import 'dart:async';

import 'package:app_anit/presenter/pages/task/task_page_bloc_models.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/models/app_model.dart';
import '../../../domain/repositories/repository.dart';

import '../../../arch/sr_bloc/sr_bloc.dart';

class TaskPageBloc extends SrBloc<TaskPageEvent, TaskPageState, TaskPageSR> {
  final AppModel appModel;
  final Repository repository;

  /// guid задачи. Если пустой то новая
  ///
  final String? guid;

  /// Новое поручение. Я должен быть контролером
  ///
  final bool? isAssignment;

  /// Задача была модифицирована
  ///
  bool isModified = false;

  /// Задача
  ///
  late Task task;

  TaskPageBloc({
    required this.appModel,
    this.guid,
    this.isAssignment = false,
    required this.repository,
  }) : super(const TaskPageState.empty()) {
    on<TaskPageEventInit>(_init);
    on<TaskPageEventExit>(_exit);
    on<TaskPageEventLoad>(_load);
    on<TaskPageEventAddController>(_addControllerEvent);
    on<TaskPageEventChangeResponsible>(_changeResponsible);
  }

  bool get isNewTask => guid == null;

  FutureOr<void> _init(
    TaskPageEventInit event,
    Emitter<TaskPageState> emit,
  ) async {
    add(const TaskPageEventLoad());
  }

  FutureOr<void> _exit(
    TaskPageEventExit event,
    Emitter<TaskPageState> emit,
  ) async {}

  FutureOr<void> _load(
    TaskPageEventLoad event,
    Emitter<TaskPageState> emit,
  ) async {
    emit(const TaskPageState.empty());

    final either = (!isNewTask)
        ? await repository.getTaskByGuid(guid!)
        : await repository.taskNewGet();

    either.fold((fail) {
      emit(TaskPageState.error(message: fail.error ?? ''));
    }, (result) {
      task = result;
      if (isAssignment ?? false) {
        _addController(appModel.remoteConfig!.user);
        emit(TaskPageState.data(task: task, isModified: isModified));
        addSr(const ChoiseOfResponsible());
      } else {
        emit(TaskPageState.data(task: task, isModified: isModified));
      }
    });
  }

  FutureOr<void> _addControllerEvent(
    TaskPageEventAddController event,
    Emitter<TaskPageState> emit,
  ) {
    _addController(event.val);
    isModified = true;
    emit(TaskPageState.data(task: task, isModified: isModified));
  }

  _addController(RefCatalog val) {
    if (!task.controllers!.map((e) => e.guid).contains(val.guid)) {
      final list = [
        ...task.controllers!,
        val,
      ];

      task = task.copyWith(controllers: list);
    }
  }

  FutureOr<void> _changeResponsible(
    TaskPageEventChangeResponsible event,
    Emitter<TaskPageState> emit,
  ) {
    task = task.copyWith(responsible: event.val);
    isModified = true;
    emit(TaskPageState.data(task: task, isModified: isModified));
  }
}
