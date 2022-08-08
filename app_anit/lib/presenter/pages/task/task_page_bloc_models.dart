import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'task_page_bloc_models.freezed.dart';

@freezed
class TaskPageState with _$TaskPageState {
  const TaskPageState._();

  const factory TaskPageState.data({
    required Task task,
    required bool isModified,
  }) = TaskPageStateData;

  const factory TaskPageState.empty() = Empty;
  const factory TaskPageState.error({
    required String message,
  }) = Error;
}

@freezed
class TaskPageEvent with _$TaskPageEvent {
  const factory TaskPageEvent.init() = TaskPageEventInit;
  const factory TaskPageEvent.exit() = TaskPageEventExit;
  const factory TaskPageEvent.save() = TaskPageEventSave;
  const factory TaskPageEvent.changeTitle(String val) =
      TaskPageEventChangeTitle;
  const factory TaskPageEvent.changePartner(RefCatalog val) =
      TaskPageEventChangePartner;
  const factory TaskPageEvent.changeResponsible(RefCatalog val) =
      TaskPageEventChangeResponsible;
  const factory TaskPageEvent.changeProducer(RefCatalog val) =
      TaskPageEventChangeProducer;
  const factory TaskPageEvent.changeCondition(RefEnum val) =
      TaskPageEventChangeCondition;
  const factory TaskPageEvent.changeImportance(RefEnum val) =
      TaskPageEventChangeImportance;
  const factory TaskPageEvent.dellController(RefCatalog val) =
      TaskPageEventDellController;
  const factory TaskPageEvent.dellAssistant(RefCatalog val) =
      TaskPageEventDellAssistant;
  const factory TaskPageEvent.addController(RefCatalog val) =
      TaskPageEventAddController;
  const factory TaskPageEvent.addAssitant(RefCatalog val) =
      TaskPageEventAddAssitant;
  const factory TaskPageEvent.setControlDone() = TaskPageEventSetControlDone;
  const factory TaskPageEvent.setControl() = TaskPageEventSetControl;
  const factory TaskPageEvent.saveDialogResult(bool val) =
      TaskPageEventSaveDialogResult;
}

@freezed
class TaskPageSR with _$TaskPageSR {
  const factory TaskPageSR.exit() = Exit;
  const factory TaskPageSR.openSaveDialog() = OpenSaveDialog;
}
