import 'dart:async';

import 'package:app_anit/domain/models/task_extention.dart';
import 'package:app_anit/presenter/pages/task/task_page_bloc_models.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/extencion/date_extencion.dart';
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
    on<TaskPageEventChangeTitle>(_changeTask);
    on<TaskPageEventChangePartner>(_changeTask);
    on<TaskPageEventChangeResponsible>(_changeTask);
    on<TaskPageEventChangeProducer>(_changeTask);
    on<TaskPageEventChangeCondition>(_changeTask);
    on<TaskPageEventChangeImportance>(_changeTask);
    on<TaskPageEventAddController>(_changeTask);
    on<TaskPageEventDellController>(_changeTask);
    on<TaskPageEventAddAssitant>(_changeTask);
    on<TaskPageEventDellAssistant>(_changeTask);
    on<TaskPageEventSetControl>(_changeTask);
    on<TaskPageEventSetControlDone>(_changeTask);
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
        emit(TaskPageState.data(
            task: task,
            isModified: isModified,
            userIsController:
                task.userIsController(appModel.remoteConfig!.user)));
        addSr(const TaskPageSR.chooseAnResponsible());
      } else {
        emit(TaskPageState.data(
            task: task,
            isModified: isModified,
            userIsController:
                task.userIsController(appModel.remoteConfig!.user)));
      }
    });
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

  FutureOr<void> _changeTask(
    TaskPageEvent event,
    Emitter<TaskPageState> emit,
  ) {
    isModified = true;
    event.mapOrNull(
      changeTitle: (value) => task = task.copyWith(title: value.val),
      changePartner: (value) => task = task.copyWith(partner: value.val),
      changeResponsible: (value) =>
          task = task.copyWith(responsible: value.val),
      changeProducer: (value) => task = task.copyWith(producer: value.val),
      changeCondition: (value) => task = task.copyWith(condition: value.val),
      changeImportance: (value) => task = task.copyWith(importance: value.val),
      addController: (value) {
        if (!task.controllers!.map((e) => e.guid).contains(value.val.guid)) {
          final list = <RefCatalog>[
            ...task.controllers ?? [],
            value.val,
          ];

          task = task.copyWith(controllers: list);
        }
      },
      addAssitant: (value) {
        if (!task.assistants!.map((e) => e.guid).contains(value.val.guid)) {
          final list = <RefCatalog>[
            ...task.assistants ?? [],
            value.val,
          ];

          task = task.copyWith(assistants: list);
        }
      },
      dellController: (value) {
        task = task.copyWith(
          controllers: task.controllers!
              .where((element) => element.guid != value.val.guid)
              .toList(),
        );
      },
      dellAssistant: (value) {
        task = task.copyWith(
          controllers: task.assistants!
              .where((element) => element.guid != value.val.guid)
              .toList(),
        );
      },
      setControl: (value) => task = task.copyWith(dateControl: getEmptyDate()),
      setControlDone: (value) =>
          task = task.copyWith(dateControl: DateTime.now()),
    );

    emit(TaskPageState.data(
        task: task,
        isModified: isModified,
        userIsController: task.userIsController(appModel.remoteConfig!.user)));
  }
}
