import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_booking_widget_models.freezed.dart';

@freezed
class RoomBookingWidgetState with _$RoomBookingWidgetState {
  const factory RoomBookingWidgetState.data({
    required bool isLoading,
  }) = _StData;

  const factory RoomBookingWidgetState.empty() = _StEmpty;
  const factory RoomBookingWidgetState.error({String? message}) = _StError;
}

@freezed
class RoomBookingWidgetEvent with _$RoomBookingWidgetEvent {
  const factory RoomBookingWidgetEvent.init() = EvInit;
  const factory RoomBookingWidgetEvent.reload() = EvReload;
  const factory RoomBookingWidgetEvent.refrech() = EvRefresh;
  const factory RoomBookingWidgetEvent.onTap() = EvOnTap;
}

@freezed
class RoomBookingWidgetSR with _$RoomBookingWidgetSR {
  const factory RoomBookingWidgetSR.openRoomBooking() = _OpenRoomBooking;
}
