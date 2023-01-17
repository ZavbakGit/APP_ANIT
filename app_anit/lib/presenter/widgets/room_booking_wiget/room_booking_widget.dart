import 'package:app_anit/presenter/disign_system/widgets_design/custom_progres_widgets.dart';
import 'package:app_anit/presenter/widgets/room_booking_wiget/room_booking_widget_bloc.dart';
import 'package:app_anit/presenter/widgets/room_booking_wiget/room_booking_widget_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection_container.dart';
import '../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../disign_system/ui_helpers.dart';
import '../../disign_system/widgets_design/custom_empty_page.dart';
import '../../disign_system/widgets_design/custom_error_page.dart';
import '../../pages/room_booking/room_booking_page.dart';

class RoomBookingWidget extends StatelessWidget {
  const RoomBookingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? heightWidget() {
      if (orientationLandscape(context)) {
        return screenHeight(context) / 2;
      } else {
        return screenHeight(context) / 4;
      }
    }

    return BlocProvider<RoomBookingWidgetBloc>(
      create: (context) =>
          RoomBookingWidgetBloc(appModel: sl(), repository: sl())
            ..add(const RoomBookingWidgetEvent.init()),
      child: SrBlocBuilder<RoomBookingWidgetBloc, RoomBookingWidgetState,
          RoomBookingWidgetSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          return GestureDetector(
            onTap: () => context
                .read<RoomBookingWidgetBloc>()
                .add(const RoomBookingWidgetEvent.onTap()),
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
                            .read<RoomBookingWidgetBloc>()
                            .add(const RoomBookingWidgetEvent.reload())),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, RoomBookingWidgetSR sr) {
    sr.when(
      openRoomBooking: () => Navigator.push<bool>(
        context,
        MaterialPageRoute(
          builder: (context) => const RoomBookingPage(),
        ),
      ).then((value) => context
          .read<RoomBookingWidgetBloc>()
          .add(const RoomBookingWidgetEvent.reload())),
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
