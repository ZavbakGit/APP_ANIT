import 'package:app_anit/presenter/disign_system/widgets_design/custom_progres_widgets.dart';
import 'package:app_anit/presenter/widgets/event_calendar_wiget/event_calendar_widget_bloc.dart';
import 'package:app_anit/presenter/widgets/event_calendar_wiget/event_calendar_widget_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../disign_system/ui_helpers.dart';
import '../../disign_system/widgets_design/custom_empty_page.dart';
import '../../disign_system/widgets_design/custom_error_page.dart';
import '../../pages/event_calendar/event_calendar_page.dart';

class EventCalendarWidget extends StatelessWidget {
  const EventCalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? heightWidget() {
      if (orientationLandscape(context)) {
        return screenHeight(context) / 2;
      } else {
        return screenHeight(context) / 4;
      }
    }

    return BlocProvider<EventCalendarWidgetBloc>(
      create: (context) =>
          EventCalendarWidgetBloc(appModel: sl(), repository: sl())
            ..add(const EventCalendarWidgetEvent.init()),
      child: SrBlocBuilder<EventCalendarWidgetBloc, EventCalendarWidgetState,
          EventCalendarWidgetSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          return GestureDetector(
            onTap: () => context
                .read<EventCalendarWidgetBloc>()
                .add(const EventCalendarWidgetEvent.onTap()),
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              child: SizedBox(
                height: heightWidget(),
                width: screenWidth(context) / 2 - 16,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: state.map(
                    data: (state) => _PageContent(
                      isLoading: state.isLoading,
                    ),
                    empty: (state) => const CustomEmptyPage(),
                    error: (state) => CustomErrorPage(
                        message: state.message,
                        onClick: () => context
                            .read<EventCalendarWidgetBloc>()
                            .add(const EventCalendarWidgetEvent.reload())),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, EventCalendarWidgetSR sr) {
    sr.when(
      openEventCalendar: () => Navigator.push<bool>(
        context,
        MaterialPageRoute(
          builder: (context) => const EventCalendarPage(),
        ),
      ).then((value) => context
          .read<EventCalendarWidgetBloc>()
          .add(const EventCalendarWidgetEvent.reload())),
    );
  }
}

class _PageContent extends StatelessWidget {
  final bool isLoading;

  const _PageContent({
    Key? key,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading) return const CustomCircularProgressIndicator();

    return Column(
      children: const [
        Text('Бронирование переговорки'),
      ],
    );
  }
}
