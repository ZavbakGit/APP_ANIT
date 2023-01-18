import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_calendar_widget_models.freezed.dart';

@freezed
class EventCalendarWidgetState with _$EventCalendarWidgetState {
  const factory EventCalendarWidgetState.data({
    required bool isLoading,
  }) = _StData;

  const factory EventCalendarWidgetState.empty() = _StEmpty;
  const factory EventCalendarWidgetState.error({String? message}) = _StError;
}

@freezed
class EventCalendarWidgetEvent with _$EventCalendarWidgetEvent {
  const factory EventCalendarWidgetEvent.init() = EvInit;
  const factory EventCalendarWidgetEvent.reload() = EvReload;
  const factory EventCalendarWidgetEvent.refrech() = EvRefresh;
  const factory EventCalendarWidgetEvent.onTap() = EvOnTap;
}

@freezed
class EventCalendarWidgetSR with _$EventCalendarWidgetSR {
  const factory EventCalendarWidgetSR.openEventCalendar() = _OpenEventCalendar;
}
