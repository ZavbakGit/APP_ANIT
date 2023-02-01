import 'dart:async';

import 'package:app_anit/presenter/pages/events_calendar/events_calendar_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../arch/sr_bloc/sr_bloc.dart';
import '../../../../domain/models/app_model.dart';
import '../../../../domain/repositories/repository.dart';

class EventsCalendarBlok
    extends SrBloc<EventsCalendarEvent, EventsCalendarState, EventsCalendarSR> {
  final AppModel appModel;
  final Repository repository;

  bool isLoading = false;
  ViewCalendarType viewCalendarType =
      ViewCalendarType.week(day: DateTime.now());
  List<EventsData> listEventsCalendarData = _defaultList;

  EventsCalendarBlok({
    required this.appModel,
    required this.repository,
  }) : super(const EventsCalendarState.empty()) {
    on<EvsInit>(_init);
    on<EvsReload>(_reload);
    on<EvsRefresh>(_refresh);
    on<EvsExit>(_exit);
    on<EvsOnTapDay>(_onTapDay);
    on<EvsOnChangeViewType>(_onChangeViewType);
    on<EvsOnTapHour>(_onTapHour);
  }

  FutureOr<void> _init(
    EvsInit events,
    Emitter<EventsCalendarState> emit,
  ) {
    add(const EventsCalendarEvent.reload());
  }

  FutureOr<void> _reload(
    EvsReload events,
    Emitter<EventsCalendarState> emit,
  ) async {
    isLoading = true;
    add(const EventsCalendarEvent.refrech());

    final either = await repository.getEvents(DateTime.now());
    listEventsCalendarData.clear();

    either.fold((fail) {
      emit(EventsCalendarState.error(message: 'Ошибка: ${fail.error}'));
    }, (list) {
      listEventsCalendarData = list
          .map((e) => EventsData(
              startTime: e.datestart!,
              endTime: e.datefinish!,
              title: e.title ?? '',
              description: e.description))
          .toList();
    });

    add(const EventsCalendarEvent.refrech());
    isLoading = false;
  }

  FutureOr<void> _refresh(
    EvsRefresh events,
    Emitter<EventsCalendarState> emit,
  ) async {
    emit(
      EventsCalendarState.data(
        isLoading: isLoading,
        viewCalendarType: viewCalendarType,
        listEventCalendarData: listEventsCalendarData,
      ),
    );
  }

  FutureOr<void> _exit(
    EvsExit events,
    Emitter<EventsCalendarState> emit,
  ) {
    addSr(const EventsCalendarSR.exit());
  }

  FutureOr<void> _onTapDay(
    EvsOnTapDay events,
    Emitter<EventsCalendarState> emit,
  ) async {
    viewCalendarType = ViewCalendarType.day(day: events.day);
    add(const EventsCalendarEvent.refrech());
  }

  FutureOr<void> _onChangeViewType(
    EvsOnChangeViewType events,
    Emitter<EventsCalendarState> emit,
  ) async {
    viewCalendarType =
        ViewCalendarType.getViewCalendarType(events.typeView, DateTime.now());
    add(const EventsCalendarEvent.refrech());
  }

  FutureOr<void> _onTapHour(
    EvsOnTapHour event,
    Emitter<EventsCalendarState> emit,
  ) {
    addSr(EventsCalendarSR.openNewTask(event.hour));
  }
}

DateTime get _now => DateTime.now();

List<EventsData> get _defaultList => [
      EventsData(
        title: "Project meeting",
        description: "Today is project meeting.",
        startTime: DateTime(_now.year, _now.month, _now.day, 18, 30),
        endTime: DateTime(_now.year, _now.month, _now.day, 22),
      ),
      EventsData(
        startTime: DateTime(_now.year, _now.month, _now.day, 18),
        endTime: DateTime(_now.year, _now.month, _now.day, 19),
        title: "Wedding anniversary",
        description: "Attend uncle's wedding anniversary.",
      ),
      EventsData(
        startTime: DateTime(_now.year, _now.month, _now.day, 14),
        endTime: DateTime(_now.year, _now.month, _now.day, 17),
        title: "Football Tournament",
        description: "Go to football tournament.",
      ),
      EventsData(
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
      EventsData(
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
      EventsData(
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
