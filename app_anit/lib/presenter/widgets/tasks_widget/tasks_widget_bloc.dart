import 'dart:async';

import 'package:app_anit/domain/models/task_item_extention.dart';
import 'package:app_anit/presenter/widgets/tasks_widget/tasks_widget_models.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../arch/sr_bloc/sr_bloc.dart';
import '../../../domain/models/app_model.dart';
import '../../../domain/repositories/repository.dart';

class TasksWidgetBloc
    extends SrBloc<TasksWidgetEvent, TasksWidgetState, TasksWidgetSR> {
  final AppModel appModel;
  final Repository repository;
  late Timer? _timer;

  final List<TaskItem> tasks = [];

  TasksWidgetBloc({
    required this.appModel,
    required this.repository,
  }) : super(const TasksWidgetState.empty()) {
    on<TasksWidgetInit>(_init);
    on<TasksWidgetRefresh>(_refresh);
    on<TasksWidgetOpenTasks>(_openTasks);
    on<TasksWidgetOpenAddTask>(_addTask);
    on<TasksWidgetOpenAddTaskController>(_addTaskController);
  }

  late RefCatalog curentUser;

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  FutureOr<void> _init(
    TasksWidgetInit event,
    Emitter<TasksWidgetState> emit,
  ) async {
    curentUser = appModel.remoteConfig!.user;
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) {
      add(const TasksWidgetRefresh());
    });
    add(const TasksWidgetRefresh());
  }

  FutureOr<void> _refresh(
    TasksWidgetRefresh event,
    Emitter<TasksWidgetState> emit,
  ) async {
    emit(const TasksWidgetState.empty());

    final either = await repository.tasksUserGet(curentUser.guid!);

    either.fold((fail) {
      emit(const TasksWidgetState.error());
    }, (list) {
      final countTask = list
          .where((element) => element.isResponsible! || element.isAssistants!)
          .length;

      final countControllers =
          list.where((element) => element.isControllers!).length;

      final countNeedAccept =
          list.where((element) => element.needAccept(curentUser)).length;

      emit(TasksWidgetState.data(
          countTask: countTask,
          countControlleredTask: countControllers,
          countNeedAccept: countNeedAccept));
    });
  }

  FutureOr<void> _openTasks(
    TasksWidgetOpenTasks event,
    Emitter<TasksWidgetState> emit,
  ) {
    addSr(const TasksWidgetSR.openTasks());
  }

  FutureOr<void> _addTask(
    TasksWidgetOpenAddTask event,
    Emitter<TasksWidgetState> emit,
  ) {
    addSr(const TasksWidgetSR.addTask());
  }

  FutureOr<void> _addTaskController(
    TasksWidgetOpenAddTaskController event,
    Emitter<TasksWidgetState> emit,
  ) {
    addSr(const TasksWidgetSR.addTaskController());
  }
}
