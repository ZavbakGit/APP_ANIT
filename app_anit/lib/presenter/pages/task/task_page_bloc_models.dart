import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'task_page_bloc_models.freezed.dart';

@freezed
class TaskPageState with _$TaskPageState {
  const TaskPageState._();

  const factory TaskPageState.data({
    required Task task,
    required bool isModified,
    required bool userIsController,
  }) = _StData;

  const factory TaskPageState.empty() = _StEmpty;
  const factory TaskPageState.error({
    required String message,
  }) = _StError;
}

@freezed
class TaskPageEvent with _$TaskPageEvent {
  const factory TaskPageEvent.init() = TaskPageEventInit;
  const factory TaskPageEvent.load() = TaskPageEventLoad;
  const factory TaskPageEvent.exit() = TaskPageEventExit;
  const factory TaskPageEvent.pressedSave() = TaskPageEventPressedSave;
  const factory TaskPageEvent.confirmedSave() = TaskPageEventConfirmedSave;
  const factory TaskPageEvent.notConfirmedSave() =
      TaskPageEventNotConfirmedSave;
  const factory TaskPageEvent.presBack() = TaskPageEventPressedBack;
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
  const factory TaskPageSR.exit(bool isModified) = _SrExit;
  const factory TaskPageSR.openSaveDialog() = _SrOpenSaveDialog;
  const factory TaskPageSR.chooseAnResponsible() = _SrChoiseOfResponsible;
  const factory TaskPageSR.showSnackBar(String message) = _SrShowSnackBar;
  const factory TaskPageSR.showSaveDialog() = _SrShowSaveDialog;
}
