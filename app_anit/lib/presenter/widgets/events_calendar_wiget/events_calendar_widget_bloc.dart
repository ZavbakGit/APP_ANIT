import 'dart:async';

import 'package:app_anit/presenter/widgets/events_calendar_wiget/events_calendar_widget_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../arch/sr_bloc/sr_bloc.dart';
import '../../../domain/models/app_model.dart';
import '../../../domain/repositories/repository.dart';

class EventsCalendarWidgetBloc extends SrBloc<EventsCalendarWidgetEvent,
    EventsCalendarWidgetState, EventsCalendarWidgetSR> {
  final AppModel appModel;
  final Repository repository;

  late Timer? _timer;

  bool isLoading = false;

  EventsCalendarWidgetBloc({
    required this.appModel,
    required this.repository,
  }) : super(const EventsCalendarWidgetState.empty()) {
    on<EvsInit>(_init);
    on<EvsRefresh>(_refresh);
    on<EvsReload>(_reload);
    on<EvsOnTap>(_onTap);
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  FutureOr<void> _init(
    EvsInit event,
    Emitter<EventsCalendarWidgetState> emit,
  ) {
    add(const EventsCalendarWidgetEvent.reload());
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) {
      add(const EventsCalendarWidgetEvent.reload());
    });
  }

  FutureOr<void> _refresh(
    EvsRefresh event,
    Emitter<EventsCalendarWidgetState> emit,
  ) async {
    emit(
      EventsCalendarWidgetState.data(
        isLoading: isLoading,
      ),
    );
  }

  FutureOr<void> _reload(
    EvsReload event,
    Emitter<EventsCalendarWidgetState> emit,
  ) async {
    isLoading = true;
    add(const EvsRefresh());
    await Future.delayed(const Duration(seconds: 1));
    isLoading = false;
    add(const EvsRefresh());
  }

  FutureOr<void> _onTap(
    EvsOnTap event,
    Emitter<EventsCalendarWidgetState> emi,
  ) async {
    addSr(const EventsCalendarWidgetSR.openEventCalendar());
  }
}
