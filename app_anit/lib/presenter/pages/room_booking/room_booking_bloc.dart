import 'dart:async';

import 'package:app_anit/presenter/pages/room_booking/room_booking_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../arch/sr_bloc/sr_bloc.dart';
import '../../../../domain/models/app_model.dart';
import '../../../../domain/repositories/repository.dart';

class RoomBookingBlok
    extends SrBloc<RoomBookingEvent, RoomBookingState, RoomBookingSR> {
  final AppModel appModel;
  final Repository repository;

  bool isLoading = false;
  ViewCalendarType viewCalendarType =
      ViewCalendarType.week(day: DateTime.now());

  RoomBookingBlok({
    required this.appModel,
    required this.repository,
  }) : super(const RoomBookingState.empty()) {
    on<EvInit>(_init);
    on<EvReload>(_reload);
    on<EvRefresh>(_refresh);
    on<EvExit>(_exit);
    on<EvOnTapDay>(_onTapDay);

    on<EVOnTapMenuDay>(_onTapMenuDay);
    on<EVOnTapMenuMonth>(_onTapMenuMonth);
    on<EVOnTapMenuWeek>(_onTapMenuWeek);
  }

  FutureOr<void> _init(
    EvInit event,
    Emitter<RoomBookingState> emit,
  ) {
    add(const RoomBookingEvent.reload());
  }

  FutureOr<void> _reload(
    EvReload event,
    Emitter<RoomBookingState> emit,
  ) async {
    isLoading = true;
    add(const RoomBookingEvent.refrech());
    await Future.delayed(const Duration(seconds: 1));
    add(const RoomBookingEvent.refrech());
    isLoading = false;
  }

  FutureOr<void> _refresh(
    EvRefresh event,
    Emitter<RoomBookingState> emit,
  ) async {
    emit(
      RoomBookingState.data(
          isLoading: isLoading, viewCalendarType: viewCalendarType),
    );
  }

  FutureOr<void> _exit(
    EvExit event,
    Emitter<RoomBookingState> emit,
  ) {
    addSr(const RoomBookingSR.exit());
  }

  FutureOr<void> _onTapDay(
    EvOnTapDay event,
    Emitter<RoomBookingState> emit,
  ) async {
    viewCalendarType = ViewCalendarType.day(day: event.day);
    add(const RoomBookingEvent.refrech());
  }

  FutureOr<void> _onTapMenuDay(
    EVOnTapMenuDay event,
    Emitter<RoomBookingState> emit,
  ) {
    viewCalendarType = ViewCalendarType.day(day: DateTime.now());
    add(const RoomBookingEvent.refrech());
  }

  FutureOr<void> _onTapMenuMonth(
    EVOnTapMenuMonth event,
    Emitter<RoomBookingState> emit,
  ) {
    viewCalendarType = ViewCalendarType.month(day: DateTime.now());
    add(const RoomBookingEvent.refrech());
  }

  FutureOr<void> _onTapMenuWeek(
    EVOnTapMenuWeek event,
    Emitter<RoomBookingState> emit,
  ) {
    viewCalendarType = ViewCalendarType.week(day: DateTime.now());
    add(const RoomBookingEvent.refrech());
  }
}
