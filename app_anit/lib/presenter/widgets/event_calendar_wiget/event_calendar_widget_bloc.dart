import 'dart:async';

import 'package:app_anit/presenter/widgets/event_calendar_wiget/event_calendar_widget_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../arch/sr_bloc/sr_bloc.dart';
import '../../../domain/models/app_model.dart';
import '../../../domain/repositories/repository.dart';

class EventCalendarWidgetBloc extends SrBloc<EventCalendarWidgetEvent,
    EventCalendarWidgetState, EventCalendarWidgetSR> {
  final AppModel appModel;
  final Repository repository;

  late Timer? _timer;

  bool isLoading = false;

  EventCalendarWidgetBloc({
    required this.appModel,
    required this.repository,
  }) : super(const EventCalendarWidgetState.empty()) {
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
    Emitter<EventCalendarWidgetState> emit,
  ) {
    add(const EventCalendarWidgetEvent.reload());
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) {
      add(const EventCalendarWidgetEvent.reload());
    });
  }

  FutureOr<void> _refresh(
    EvRefresh event,
    Emitter<EventCalendarWidgetState> emit,
  ) async {
    emit(
      EventCalendarWidgetState.data(
        isLoading: isLoading,
      ),
    );
  }

  FutureOr<void> _reload(
    EvReload event,
    Emitter<EventCalendarWidgetState> emit,
  ) async {
    isLoading = true;
    add(const EvRefresh());
    await Future.delayed(const Duration(seconds: 1));
    isLoading = false;
    add(const EvRefresh());
  }

  FutureOr<void> _onTap(
    EvOnTap event,
    Emitter<EventCalendarWidgetState> emi,
  ) async {
    addSr(const EventCalendarWidgetSR.openEventCalendar());
  }
}
