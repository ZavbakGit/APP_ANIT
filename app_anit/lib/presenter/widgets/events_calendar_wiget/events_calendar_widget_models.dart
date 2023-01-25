import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_calendar_widget_models.freezed.dart';

@freezed
class EventsCalendarWidgetState with _$EventsCalendarWidgetState {
  const factory EventsCalendarWidgetState.data({
    required bool isLoading,
  }) = _StData;

  const factory EventsCalendarWidgetState.empty() = _StEmpty;
  const factory EventsCalendarWidgetState.error({String? message}) = _StError;
}

@freezed
class EventsCalendarWidgetEvent with _$EventsCalendarWidgetEvent {
  const factory EventsCalendarWidgetEvent.init() = EvsInit;
  const factory EventsCalendarWidgetEvent.reload() = EvsReload;
  const factory EventsCalendarWidgetEvent.refrech() = EvsRefresh;
  const factory EventsCalendarWidgetEvent.onTap() = EvsOnTap;
}

@freezed
class EventsCalendarWidgetSR with _$EventsCalendarWidgetSR {
  const factory EventsCalendarWidgetSR.openEventCalendar() =
      _OpenEventsCalendar;
}
