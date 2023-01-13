import 'package:freezed_annotation/freezed_annotation.dart';
part 'room_booking_models.freezed.dart';

@freezed
class RoomBookingState with _$RoomBookingState {
  const RoomBookingState._();

  const factory RoomBookingState.data({
    required bool isLoading,
  }) = _StData;

  const factory RoomBookingState.empty() = _StEmpty;
  const factory RoomBookingState.error({
    required String message,
  }) = _StError;
}

@freezed
class RoomBookingEvent with _$RoomBookingEvent {
  const factory RoomBookingEvent.init() = EvInit;
  const factory RoomBookingEvent.reload() = EvReload;
  const factory RoomBookingEvent.refrech() = EvRefresh;
  const factory RoomBookingEvent.exit() = EvExit;
}

@freezed
class RoomBookingSR with _$RoomBookingSR {
  const factory RoomBookingSR.exit() = _SrExit;
  const factory RoomBookingSR.showSnackBar(String message) = _SrShowSnackBar;
}
