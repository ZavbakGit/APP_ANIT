import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/injection_container.dart';
import '../../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../disign_system/widgets_design/custom_empty_page.dart';
import '../../disign_system/widgets_design/custom_error_page.dart';
import '../../disign_system/widgets_design/custom_page_widget.dart';

import 'event_form_bloc.dart';
import 'event_form_models.dart';

class EventFormPage extends StatelessWidget {
  const EventFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EventFormBlok>(
      create: (context) => EventFormBlok(appModel: sl(), repository: sl())
        ..add(const EventFormEvent.init()),
      child: SrBlocBuilder<EventFormBlok, EventFormState, EventFormSR>(
        onSR: _onSingleResult,
        builder: (context, state) {
          return state.map(
            empty: (_) => const CustomEmptyPage(),
            data: (value) => _PageContent(
              isLoading: value.isLoading,
            ),
            error: (value) => CustomErrorPage(
                message: value.message,
                onClick: () => context
                    .read<EventFormBlok>()
                    .add(const EventFormEvent.reload())),
          );
        },
      ),
    );
  }

  void _onSingleResult(
    BuildContext context,
    EventFormSR sr,
  ) {
    sr.when(
      exit: () {},
      showSnackBar: (message) {},
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
    return CustomPageWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Evet form'),
        ),
        body: Center(
          child: Text(isLoading.toString()),
        ),
      ),
    );
  }
}
