import 'package:app_anit/presenter/pages/events_calendar/events_calendar_bloc.dart';
import 'package:app_anit/presenter/pages/events_calendar/events_calendar_models.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/injection_container.dart';
import '../../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../disign_system/widgets_design/custom_empty_page.dart';
import '../../disign_system/widgets_design/custom_error_page.dart';
import '../../disign_system/widgets_design/custom_page_widget.dart';
import '../../disign_system/widgets_design/custom_progres_widgets.dart';
import '../event_form/event_form_page.dart';

class EventsCalendarPage extends StatelessWidget {
  const EventsCalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EventsCalendarBlok>(
      create: (context) => EventsCalendarBlok(appModel: sl(), repository: sl())
        ..add(const EventsCalendarEvent.init()),
      child: SrBlocBuilder<EventsCalendarBlok, EventsCalendarState,
          EventsCalendarSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          return state.map(
            empty: (_) => const CustomEmptyPage(),
            data: (value) => _PageContent(
              isLoading: value.isLoading,
              viewCalendarType: value.viewCalendarType,
              listEventCalendarData: value.listEventCalendarData,
            ),
            error: (value) => CustomErrorPage(
                message: value.message,
                onClick: () => context
                    .read<EventsCalendarBlok>()
                    .add(const EventsCalendarEvent.reload())),
          );
        },
      ),
    );
  }

  void _onSingleResult(
    BuildContext context,
    EventsCalendarSR sr,
  ) {
    sr.when(
      exit: () {},
      showSnackBar: (message) {},
      openNewTask: (DateTime startTime) {
        Navigator.push<bool>(
          context,
          MaterialPageRoute(
            builder: (context) => const EventFormPage(),
          ),
        ).then((value) {
          if (value != null) {
            if (value) {
              context
                  .read<EventsCalendarBlok>()
                  .add(const EventsCalendarEvent.reload());
            }
          }
        });
      },
    );
  }
}

class _PageContent extends StatelessWidget {
  final bool isLoading;
  final ViewCalendarType viewCalendarType;
  final List<EventsData> listEventCalendarData;

  const _PageContent({
    Key? key,
    required this.isLoading,
    required this.viewCalendarType,
    required this.listEventCalendarData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<int>(
                value: viewCalendarType.getViewTypeInt(),
                items: dropdownItems,
                underline: const SizedBox(
                  height: 0,
                ),
                //underline: SizedBox(),
                onChanged: (value) {
                  context
                      .read<EventsCalendarBlok>()
                      .add(EventsCalendarEvent.onChangeViewType(value ?? 0));
                },
              ),
            ],
          ),
        ),
        body: _Calendar(
          isLoading: isLoading,
          viewCalendarType: viewCalendarType,
          listEventCalendarData: listEventCalendarData,
        ),
      ),
    );
  }
}

List<DropdownMenuItem<int>> get dropdownItems {
  List<DropdownMenuItem<int>> menuItems = [
    const DropdownMenuItem(value: 0, child: Text("Месяц")),
    const DropdownMenuItem(value: 1, child: Text("Неделя")),
    const DropdownMenuItem(value: 2, child: Text("День")),
    const DropdownMenuItem(value: 3, child: Text("Список")),
  ];
  return menuItems;
}

class _Calendar extends StatelessWidget {
  final bool isLoading;
  final ViewCalendarType viewCalendarType;
  final List<EventsData> listEventCalendarData;

  const _Calendar({
    Key? key,
    required this.isLoading,
    required this.viewCalendarType,
    required this.listEventCalendarData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<CalendarEventData<EventsData>> list = listEventCalendarData
        .map((e) => CalendarEventData(
              date: e.startTime,
              event: e,
              title: e.title,
              description: e.description ?? '',
              startTime: e.startTime,
              endTime: e.endTime,
            ))
        .toList();

    if (isLoading) {
      return const Center(child: CustomCircularProgressIndicator());
    } else {
      return Center(
        child: CalendarControllerProvider<EventsData>(
          controller: EventController<EventsData>()..addAll(list),
          child: viewCalendarType.map(
            month: (value) => MonthViewWidget(day: value.day),
            week: (value) => WeekViewWidget(
              day: value.day,
            ),
            day: (value) => DayViewWidget(day: value.day),
            list: (value) => ListViewWidget(day: value.day),
          ),
        ),
      );
    }
  }
}

class ListViewWidget extends StatelessWidget {
  final DateTime day;
  const ListViewWidget({
    Key? key,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Список'),
    );
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
    return WeekView<EventsData>(
      key: state,
      width: width,
      initialDay: day,
      onDateTap: (date) => context
          .read<EventsCalendarBlok>()
          .add(EventsCalendarEvent.onTapHour(date)),
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
    return DayView<EventsData>(
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
    return MonthView<EventsData>(
      key: state,
      width: width,
      initialMonth: day,
      onCellTap: (events, date) => {
        context
            .read<EventsCalendarBlok>()
            .add(EventsCalendarEvent.onTapDay(date)),
      },
    );
  }
}
