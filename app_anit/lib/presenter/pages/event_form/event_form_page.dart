import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/injection_container.dart';
import '../../../../arch/sr_bloc/sr_bloc_builder.dart';
import '../../disign_system/constants.dart';
import '../../disign_system/widgets_design/custom_empty_page.dart';
import '../../disign_system/widgets_design/custom_error_page.dart';
import '../../disign_system/widgets_design/custom_page_widget.dart';
import '../../disign_system/widgets_design/custom_progres_widgets.dart';
import '../../widgets/dialog/date_time_selector.dart';
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
        body: FormEvent(
          isLoading: isLoading,
        ),
      ),
    );
  }
}

class FormEvent extends StatefulWidget {
  final bool isLoading;

  const FormEvent({
    Key? key,
    required this.isLoading,
  }) : super(key: key);

  @override
  State<FormEvent> createState() => _FormEventState();
}

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _FormEventState extends State<FormEvent> {
  late DateTime _startDate;
  DateTime? _startTime;

  late TextEditingController _startDateController;

  late FocusNode _dateNode;

  @override
  void initState() {
    super.initState();
    _dateNode = FocusNode();
    _startDateController = TextEditingController();
  }

  @override
  void dispose() {
    _dateNode.dispose();
    _startDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isLoading) {
      return const Center(child: CustomCircularProgressIndicator());
    }
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: DateTimeSelectorFormField(
                  controller: _startDateController,
                  decoration: AppConstants.inputDecoration.copyWith(
                    labelText: "Начало",
                  ),
                  validator: (value) {
                    if (value == null || value == "") {
                      return "Выберите время начала";
                    }
                    return null;
                  },
                  onSave: (date) => _startTime = date,
                  textStyle: const TextStyle(
                    fontSize: 17.0,
                  ),
                  type: DateTimeSelectionType.time,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

//https://medium.com/analytics-vidhya/flutter-forms-50b9a8569914
