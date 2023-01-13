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

  RoomBookingBlok({
    required this.appModel,
    required this.repository,
  }) : super(const RoomBookingState.empty()) {
    on<EvInit>(_init);
    on<EvReload>(_reload);
    on<EvRefresh>(_refresh);
    on<EvExit>(_exit);
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
    Future.delayed(const Duration(seconds: 1));
    add(const RoomBookingEvent.refrech());
    isLoading = false;
  }

  FutureOr<void> _refresh(
    EvRefresh event,
    Emitter<RoomBookingState> emit,
  ) async {
    emit(
      RoomBookingState.data(isLoading: isLoading),
    );
  }

  FutureOr<void> _exit(
    EvExit event,
    Emitter<RoomBookingState> emit,
  ) {
    addSr(const RoomBookingSR.exit());
  }
}
