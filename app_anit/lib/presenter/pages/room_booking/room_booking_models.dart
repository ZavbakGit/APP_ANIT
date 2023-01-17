import 'package:freezed_annotation/freezed_annotation.dart';
part 'room_booking_models.freezed.dart';

@freezed
class RoomBookingState with _$RoomBookingState {
  const RoomBookingState._();

  const factory RoomBookingState.data({
    required bool isLoading,
    required ViewCalendarType viewCalendarType,
  }) = _StData;

  const factory RoomBookingState.empty() = _StEmpty;
  const factory RoomBookingState.error({
    required String message,
  }) = _StError;
}

@freezed
class ViewCalendarType with _$ViewCalendarType {
  const ViewCalendarType._();
  const factory ViewCalendarType.month({required DateTime day}) = _VctMonth;
  const factory ViewCalendarType.day({required DateTime day}) = _VctDay;
  const factory ViewCalendarType.week({required DateTime day}) = _VctWeek;
}

@freezed
class RoomBookingEvent with _$RoomBookingEvent {
  const factory RoomBookingEvent.init() = EvInit;
  const factory RoomBookingEvent.reload() = EvReload;
  const factory RoomBookingEvent.refrech() = EvRefresh;
  const factory RoomBookingEvent.exit() = EvExit;
  const factory RoomBookingEvent.onTapDay(DateTime day) = EvOnTapDay;
  const factory RoomBookingEvent.onTapMenuDay() = EVOnTapMenuDay;
  const factory RoomBookingEvent.onTapMenuMonth() = EVOnTapMenuMonth;
  const factory RoomBookingEvent.onTapMenuWeek() = EVOnTapMenuWeek;
}

@freezed
class RoomBookingSR with _$RoomBookingSR {
  const factory RoomBookingSR.exit() = _SrExit;
  const factory RoomBookingSR.showSnackBar(String message) = _SrShowSnackBar;
}

class Event {
  final String title;

  const Event({this.title = "Title"});

  @override
  bool operator ==(Object other) => other is Event && title == other.title;

  @override
  int get hashCode => super.hashCode;

  @override
  String toString() => title;
}
