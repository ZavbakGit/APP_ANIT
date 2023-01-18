import 'dart:async';

import 'package:app_anit/presenter/pages/event_calendar/event_calendar_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../arch/sr_bloc/sr_bloc.dart';
import '../../../../domain/models/app_model.dart';
import '../../../../domain/repositories/repository.dart';

class EventCalendarBlok
    extends SrBloc<EventCalendarEvent, EventCalendarState, EventCalendarSR> {
  final AppModel appModel;
  final Repository repository;

  bool isLoading = false;
  ViewCalendarType viewCalendarType =
      ViewCalendarType.week(day: DateTime.now());
  List<EventData> listEventCalendarData = _defaultList;

  EventCalendarBlok({
    required this.appModel,
    required this.repository,
  }) : super(const EventCalendarState.empty()) {
    on<EvInit>(_init);
    on<EvReload>(_reload);
    on<EvRefresh>(_refresh);
    on<EvExit>(_exit);
    on<EvOnTapDay>(_onTapDay);
    on<EvOnChangeViewType>(_onChangeViewType);
  }

  FutureOr<void> _init(
    EvInit event,
    Emitter<EventCalendarState> emit,
  ) {
    add(const EventCalendarEvent.reload());
  }

  FutureOr<void> _reload(
    EvReload event,
    Emitter<EventCalendarState> emit,
  ) async {
    isLoading = true;
    add(const EventCalendarEvent.refrech());
    await Future.delayed(const Duration(seconds: 1));
    add(const EventCalendarEvent.refrech());
    isLoading = false;
  }

  FutureOr<void> _refresh(
    EvRefresh event,
    Emitter<EventCalendarState> emit,
  ) async {
    emit(
      EventCalendarState.data(
        isLoading: isLoading,
        viewCalendarType: viewCalendarType,
        listEventCalendarData: listEventCalendarData,
      ),
    );
  }

  FutureOr<void> _exit(
    EvExit event,
    Emitter<EventCalendarState> emit,
  ) {
    addSr(const EventCalendarSR.exit());
  }

  FutureOr<void> _onTapDay(
    EvOnTapDay event,
    Emitter<EventCalendarState> emit,
  ) async {
    viewCalendarType = ViewCalendarType.day(day: event.day);
    add(const EventCalendarEvent.refrech());
  }

  FutureOr<void> _onChangeViewType(
    EvOnChangeViewType event,
    Emitter<EventCalendarState> emit,
  ) async {
    viewCalendarType =
        ViewCalendarType.getViewCalendarType(event.typeView, DateTime.now());
    add(const EventCalendarEvent.refrech());
  }
}

DateTime get _now => DateTime.now();

List<EventData> get _defaultList => [
      EventData(
        title: "Project meeting",
        description: "Today is project meeting.",
        startTime: DateTime(_now.year, _now.month, _now.day, 18, 30),
        endTime: DateTime(_now.year, _now.month, _now.day, 22),
      ),
      EventData(
        startTime: DateTime(_now.year, _now.month, _now.day, 18),
        endTime: DateTime(_now.year, _now.month, _now.day, 19),
        title: "Wedding anniversary",
        description: "Attend uncle's wedding anniversary.",
      ),
      EventData(
        startTime: DateTime(_now.year, _now.month, _now.day, 14),
        endTime: DateTime(_now.year, _now.month, _now.day, 17),
        title: "Football Tournament",
        description: "Go to football tournament.",
      ),
      EventData(
        startTime: DateTime(
            _now.add(Duration(days: 3)).year,
            _now.add(Duration(days: 3)).month,
            _now.add(Duration(days: 3)).day,
            10),
        endTime: DateTime(
            _now.add(Duration(days: 3)).year,
            _now.add(Duration(days: 3)).month,
            _now.add(Duration(days: 3)).day,
            14),
        title: "Sprint Meeting.",
        description: "Last day of project submission for last year.",
      ),
      EventData(
        startTime: DateTime(
            _now.subtract(Duration(days: 2)).year,
            _now.subtract(Duration(days: 2)).month,
            _now.subtract(Duration(days: 2)).day,
            14),
        endTime: DateTime(
            _now.subtract(Duration(days: 2)).year,
            _now.subtract(Duration(days: 2)).month,
            _now.subtract(Duration(days: 2)).day,
            16),
        title: "Team Meeting",
        description: "Team Meeting",
      ),
      EventData(
        startTime: DateTime(
            _now.subtract(Duration(days: 2)).year,
            _now.subtract(Duration(days: 2)).month,
            _now.subtract(Duration(days: 2)).day,
            10),
        endTime: DateTime(
            _now.subtract(Duration(days: 2)).year,
            _now.subtract(Duration(days: 2)).month,
            _now.subtract(Duration(days: 2)).day,
            12),
        title: "Chemistry Viva",
        description: "Today is Joe's birthday.",
      ),
    ];
