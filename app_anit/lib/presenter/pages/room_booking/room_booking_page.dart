import 'package:app_anit/presenter/pages/room_booking/room_booking_bloc.dart';
import 'package:app_anit/presenter/pages/room_booking/room_booking_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/injection_container.dart';
import '../../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../disign_system/widgets_design/custom_empty_page.dart';
import '../../disign_system/widgets_design/custom_error_page.dart';

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
            data: (value) => _PageContent(),
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
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('_PageContent'),
    );
  }
}
