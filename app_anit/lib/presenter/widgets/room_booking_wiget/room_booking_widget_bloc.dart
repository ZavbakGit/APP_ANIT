import 'dart:async';

import 'package:app_anit/presenter/widgets/room_booking_wiget/room_booking_widget_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../arch/sr_bloc/sr_bloc.dart';
import '../../../domain/models/app_model.dart';
import '../../../domain/repositories/repository.dart';

class RoomBookingWidgetBloc extends SrBloc<RoomBookingWidgetEvent,
    RoomBookingWidgetState, RoomBookingWidgetSR> {
  final AppModel appModel;
  final Repository repository;

  late Timer? _timer;

  bool isLoading = false;

  RoomBookingWidgetBloc({
    required this.appModel,
    required this.repository,
  }) : super(const RoomBookingWidgetState.empty()) {
    on<EvInit>(_init);
    on<EvRefresh>(_refresh);
    on<EvReload>(_reload);
    on<EvOnTap>(_onTap);
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  FutureOr<void> _init(
    EvInit event,
    Emitter<RoomBookingWidgetState> emit,
  ) {
    add(const RoomBookingWidgetEvent.reload());
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) {
      add(const RoomBookingWidgetEvent.reload());
    });
  }

  FutureOr<void> _refresh(
    EvRefresh event,
    Emitter<RoomBookingWidgetState> emit,
  ) async {
    emit(
      RoomBookingWidgetState.data(
        isLoading: isLoading,
      ),
    );
  }

  FutureOr<void> _reload(
    EvReload event,
    Emitter<RoomBookingWidgetState> emit,
  ) async {
    isLoading = true;
    add(const EvRefresh());
    await Future.delayed(const Duration(seconds: 1));
    isLoading = false;
    add(const EvRefresh());
  }

  FutureOr<void> _onTap(
    EvOnTap event,
    Emitter<RoomBookingWidgetState> emi,
  ) async {
    addSr(const RoomBookingWidgetSR.openRoomBooking());
  }
}
