import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'tasks_user_models.freezed.dart';

@freezed
class TasksUserState with _$TasksUserState {
  const factory TasksUserState.data({
    required bool isLoading,
    required String title,
    required List<TaskItem> tasks,
    required List<TaskItem> controlledTasks,
  }) = _StData;

  const factory TasksUserState.empty() = _StEmpty;
  const factory TasksUserState.error({String? message}) = _StError;
}

@freezed
class TasksUserEvent with _$TasksUserEvent {
  const factory TasksUserEvent.init() = EvInit;
  const factory TasksUserEvent.refresh() = EvRefresh;
  const factory TasksUserEvent.onTapItem(String guid) = EvOnTapItem;
  const factory TasksUserEvent.onTapFab() = EvOnTapFab;
}

@freezed
class TasksUserSR with _$TasksUserSR {
  const factory TasksUserSR.exit() = _SrExit;
  const factory TasksUserSR.showSnackBar(String message) = _SrShowSnackBar;
  const factory TasksUserSR.openTask(String guid) = _SrOpenTask;
  const factory TasksUserSR.openNewTask() = _SrOpenNewTask;
}
