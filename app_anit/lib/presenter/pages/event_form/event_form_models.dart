import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_form_models.freezed.dart';

@freezed
class EventFormState with _$EventFormState {
  const EventFormState._();

  const factory EventFormState.data({
    required bool isLoading,
    required Event? event,
    required bool isModified,
  }) = _StData;

  const factory EventFormState.empty() = _StEmpty;
  const factory EventFormState.error({required String message}) = _StError;
}

@freezed
class EventFormEvent with _$EventFormEvent {
  const factory EventFormEvent.init() = EvInit;
  const factory EventFormEvent.reload() = EvReload;
  const factory EventFormEvent.refrech() = EvRefresh;
  const factory EventFormEvent.exit() = EvExit;
}

@freezed
class EventFormSR with _$EventFormSR {
  const factory EventFormSR.exit() = _SrExit;
  const factory EventFormSR.showSnackBar(String message) = _SrShowSnackBar;
}
