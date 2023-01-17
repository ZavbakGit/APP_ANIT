import 'package:app_anit/presenter/pages/room_booking/room_booking_bloc.dart';
import 'package:app_anit/presenter/pages/room_booking/room_booking_models.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/injection_container.dart';
import '../../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../disign_system/widgets_design/custom_empty_page.dart';
import '../../disign_system/widgets_design/custom_error_page.dart';
import '../../disign_system/widgets_design/custom_page_widget.dart';
import '../../disign_system/widgets_design/custom_progres_widgets.dart';

class RoomBookingPage extends StatelessWidget {
  const RoomBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RoomBookingBlok>(
      create: (context) => RoomBookingBlok(appModel: sl(), repository: sl())
        ..add(const RoomBookingEvent.init()),
      child: SrBlocBuilder<RoomBookingBlok, RoomBookingState, RoomBookingSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          return state.map(
            empty: (_) => const CustomEmptyPage(),
            data: (value) => _PageContent(
              isLoading: value.isLoading,
              viewCalendarType: value.viewCalendarType,
            ),
            error: (value) => CustomErrorPage(
                message: value.message,
                onClick: () => context
                    .read<RoomBookingBlok>()
                    .add(const RoomBookingEvent.reload())),
          );
        },
      ),
    );
  }

  void _onSingleResult(
    BuildContext context,
    RoomBookingSR sr,
  ) {
    sr.when(
      exit: () {},
      showSnackBar: (message) {},
    );
  }
}

class _PageContent extends StatelessWidget {
  final bool isLoading;
  final ViewCalendarType viewCalendarType;

  const _PageContent({
    Key? key,
    required this.isLoading,
    required this.viewCalendarType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Бронирование"),
          actions: _getPopupMenu(),
        ),
        body:
            _Calendar(isLoading: isLoading, viewCalendarType: viewCalendarType),
      ),
    );
  }
}

class _Calendar extends StatelessWidget {
  final bool isLoading;
  final ViewCalendarType viewCalendarType;

  const _Calendar({
    Key? key,
    required this.isLoading,
    required this.viewCalendarType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CustomCircularProgressIndicator());
    } else {
      return Center(
        child: CalendarControllerProvider<Event>(
          controller: EventController<Event>()..addAll(_events),
          child: viewCalendarType.map(
            month: (value) => MonthViewWidget(day: value.day),
            week: (value) => WeekViewWidget(
              day: value.day,
            ),
            day: (value) => DayViewWidget(day: value.day),
          ),
        ),
      );
    }
  }
}

class WeekViewWidget extends StatelessWidget {
  final GlobalKey<WeekViewState>? state;
  final double? width;
  final DateTime day;

  const WeekViewWidget({
    Key? key,
    this.state,
    this.width,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WeekView<Event>(
      key: state,
      width: width,
      initialDay: day,
    );
  }
}

class DayViewWidget extends StatelessWidget {
  final GlobalKey<DayViewState>? state;
  final double? width;
  final DateTime day;

  const DayViewWidget({
    Key? key,
    this.state,
    this.width,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DayView<Event>(
      key: state,
      width: width,
      initialDay: day,
    );
  }
}

class MonthViewWidget extends StatelessWidget {
  final GlobalKey<MonthViewState>? state;
  final double? width;
  final DateTime day;

  const MonthViewWidget({
    Key? key,
    this.state,
    this.width,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MonthView<Event>(
      key: state,
      width: width,
      initialMonth: day,
      onCellTap: (events, date) => {
        context.read<RoomBookingBlok>().add(RoomBookingEvent.onTapDay(date)),
      },
    );
  }
}

List<Widget> _getPopupMenu() {
  return [
    PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: const Text("Месяц"),
          onTap: () {
            context
                .read<RoomBookingBlok>()
                .add(const RoomBookingEvent.onTapMenuMonth());
          },
        ),
        PopupMenuItem(
          value: 2,
          child: const Text("Неделя"),
          onTap: () {
            context
                .read<RoomBookingBlok>()
                .add(const RoomBookingEvent.onTapMenuWeek());
          },
        ),
        PopupMenuItem(
          value: 3,
          child: const Text("День"),
          onTap: () {
            context
                .read<RoomBookingBlok>()
                .add(const RoomBookingEvent.onTapMenuDay());
          },
        ),
      ],
    )
  ];
}

DateTime get _now => DateTime.now();

List<CalendarEventData<Event>> _events = [
  CalendarEventData(
    date: _now,
    event: Event(title: "Joe's Birthday"),
    title: "Project meeting",
    description: "Today is project meeting.",
    startTime: DateTime(_now.year, _now.month, _now.day, 18, 30),
    endTime: DateTime(_now.year, _now.month, _now.day, 22),
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 1)),
    startTime: DateTime(_now.year, _now.month, _now.day, 18),
    endTime: DateTime(_now.year, _now.month, _now.day, 19),
    event: Event(title: "Wedding anniversary"),
    title: "Wedding anniversary",
    description: "Attend uncle's wedding anniversary.",
  ),
  CalendarEventData(
    date: _now,
    startTime: DateTime(_now.year, _now.month, _now.day, 14),
    endTime: DateTime(_now.year, _now.month, _now.day, 17),
    event: Event(title: "Football Tournament"),
    title: "Football Tournament",
    description: "Go to football tournament.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 3)),
    startTime: DateTime(_now.add(Duration(days: 3)).year,
        _now.add(Duration(days: 3)).month, _now.add(Duration(days: 3)).day, 10),
    endTime: DateTime(_now.add(Duration(days: 3)).year,
        _now.add(Duration(days: 3)).month, _now.add(Duration(days: 3)).day, 14),
    event: Event(title: "Sprint Meeting."),
    title: "Sprint Meeting.",
    description: "Last day of project submission for last year.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 2)),
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
    event: Event(title: "Team Meeting"),
    title: "Team Meeting",
    description: "Team Meeting",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 2)),
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
    event: Event(title: "Chemistry Viva"),
    title: "Chemistry Viva",
    description: "Today is Joe's birthday.",
  ),
];
