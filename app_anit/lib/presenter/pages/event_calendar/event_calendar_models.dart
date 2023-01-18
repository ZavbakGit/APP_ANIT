import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_calendar_models.freezed.dart';

@freezed
class EventCalendarState with _$EventCalendarState {
  const EventCalendarState._();

  const factory EventCalendarState.data({
    required bool isLoading,
    required ViewCalendarType viewCalendarType,
    required List<EventData> listEventCalendarData,
  }) = _StData;

  const factory EventCalendarState.empty() = _StEmpty;
  const factory EventCalendarState.error({
    required String message,
  }) = _StError;
}

@freezed
class EventData with _$EventData {
  const EventData._();
  factory EventData({
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
class EventCalendarEvent with _$EventCalendarEvent {
  const factory EventCalendarEvent.init() = EvInit;
  const factory EventCalendarEvent.reload() = EvReload;
  const factory EventCalendarEvent.refrech() = EvRefresh;
  const factory EventCalendarEvent.exit() = EvExit;
  const factory EventCalendarEvent.onTapDay(DateTime day) = EvOnTapDay;
  const factory EventCalendarEvent.onChangeViewType(int typeView) =
      EvOnChangeViewType;
}

@freezed
class EventCalendarSR with _$EventCalendarSR {
  const factory EventCalendarSR.exit() = _SrExit;
  const factory EventCalendarSR.showSnackBar(String message) = _SrShowSnackBar;
}
