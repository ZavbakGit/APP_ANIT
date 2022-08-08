import 'package:freezed_annotation/freezed_annotation.dart';
part 'tasks_widget_models.freezed.dart';

@freezed
class TasksWidgetState with _$TasksWidgetState {
  TasksWidgetStateData get data => this as TasksWidgetStateData;

  const TasksWidgetState._();

  const factory TasksWidgetState.data({
    required int countTask,
    required int countControlleredTask,
  }) = TasksWidgetStateData;

  const factory TasksWidgetState.empty() = _Empty;
  const factory TasksWidgetState.error() = _Error;
}

@freezed
class TasksWidgetEvent with _$TasksWidgetEvent {
  const factory TasksWidgetEvent.init() = TasksWidgetInit;
  const factory TasksWidgetEvent.refresh() = TasksWidgetRefresh;
  const factory TasksWidgetEvent.openTasks() = TasksWidgetOpenTasks;
  const factory TasksWidgetEvent.addTask() = TasksWidgetOpenAddTask;
  const factory TasksWidgetEvent.addTaskController() =
      TasksWidgetOpenAddTaskController;
}

@freezed
class TasksWidgetSR with _$TasksWidgetSR {
  const factory TasksWidgetSR.openTasks() = _OpenTasks;
  const factory TasksWidgetSR.addTask() = _AddTask;
  const factory TasksWidgetSR.addTaskController() = _AddTaskController;
}
