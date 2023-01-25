import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'events_calendar_models.freezed.dart';

@freezed
class EventsCalendarState with _$EventsCalendarState {
  const EventsCalendarState._();

  const factory EventsCalendarState.data({
    required bool isLoading,
    required ViewCalendarType viewCalendarType,
    required List<EventsData> listEventCalendarData,
  }) = _StData;

  const factory EventsCalendarState.empty() = _StEmpty;
  const factory EventsCalendarState.error({
    required String message,
  }) = _StError;
}

@freezed
class EventsData with _$EventsData {
  const EventsData._();
  factory EventsData({
    required String title,
    String? description,
    @Default(Colors.blue) Color color,
    required DateTime startTime,
    required DateTime endTime,
  }) = _EventData;
}

@freezed
class ViewCalendarType with _$ViewCalendarType {
  const ViewCalendarType._();
  const factory ViewCalendarType.month({required DateTime day}) = _VctMonth;
  const factory ViewCalendarType.day({required DateTime day}) = _VctDay;
  const factory ViewCalendarType.week({required DateTime day}) = _VctWeek;
  const factory ViewCalendarType.list({required DateTime day}) = _VctList;

  int getViewTypeInt() {
    return when(
      month: (day) => 0,
      week: (day) => 1,
      day: (day) => 2,
      list: (day) => 3,
    );
  }

  static ViewCalendarType getViewCalendarType(int value, DateTime day) {
    switch (value) {
      case 0:
        return ViewCalendarType.month(day: day);
      case 1:
        return ViewCalendarType.week(day: day);
      case 2:
        return ViewCalendarType.day(day: day);
      case 3:
        return ViewCalendarType.list(day: day);
      default:
        return ViewCalendarType.month(day: day);
    }
  }
}

@freezed
class EventsCalendarEvent with _$EventsCalendarEvent {
  const factory EventsCalendarEvent.init() = EvsInit;
  const factory EventsCalendarEvent.reload() = EvsReload;
  const factory EventsCalendarEvent.refrech() = EvsRefresh;
  const factory EventsCalendarEvent.exit() = EvsExit;
  const factory EventsCalendarEvent.onTapDay(DateTime day) = EvsOnTapDay;
  const factory EventsCalendarEvent.onChangeViewType(int typeView) =
      EvsOnChangeViewType;
  const factory EventsCalendarEvent.onTapHour(DateTime hour) = EvsOnTapHour;
}

@freezed
class EventsCalendarSR with _$EventsCalendarSR {
  const factory EventsCalendarSR.exit() = _SrExit;
  const factory EventsCalendarSR.showSnackBar(String message) = _SrShowSnackBar;
  const factory EventsCalendarSR.openNewTask(DateTime startTime) =
      _SrOpenNewTask;
}
