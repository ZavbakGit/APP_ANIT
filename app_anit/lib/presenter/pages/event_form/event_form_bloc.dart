import 'dart:async';

import 'package:app_anit/presenter/pages/event_form/event_form_models.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../arch/sr_bloc/sr_bloc.dart';
import '../../../../domain/models/app_model.dart';
import '../../../../domain/repositories/repository.dart';

class EventFormBlok
    extends SrBloc<EventFormEvent, EventFormState, EventFormSR> {
  final AppModel appModel;
  final Repository repository;

  /// guid задачи. Если пустой то новая
  ///
  final String? guid;

  bool get _isNew => guid == null;
  bool isLoading = false;

  Event? _event;

  bool isError = false;
  String messageError = '';

  bool isModified = false;

  EventFormBlok({
    required this.appModel,
    required this.repository,
    this.guid,
  }) : super(const EventFormState.empty()) {
    on<EvInit>(_init);
    on<EvReload>(_reload);
    on<EvRefresh>(_refresh);
    on<EvExit>(_exit);
  }

  FutureOr<void> _init(
    EvInit events,
    Emitter<EventFormState> emit,
  ) {
    add(const EventFormEvent.reload());
  }

  FutureOr<void> _reload(
    EvReload events,
    Emitter<EventFormState> emit,
  ) async {
    isError = false;
    messageError = '';
    _event = null;
    isLoading = true;

    add(const EventFormEvent.refrech());

    final either = (_isNew)
        ? await repository.newEvent()
        : await repository.getEventByGuid(guid!);

    isLoading = false;
    either.fold((fail) {
      isError = true;
      messageError = fail.error ?? '';
    }, (result) {
      _event = result;
    });

    add(const EventFormEvent.refrech());
  }

  FutureOr<void> _refresh(
    EvRefresh events,
    Emitter<EventFormState> emit,
  ) async {
    if (isError) {
      emit(EventFormState.error(message: messageError));
    } else {
      emit(EventFormState.data(
        isLoading: isLoading,
        isModified: isModified,
        event: _event!,
      ));
    }
  }

  FutureOr<void> _exit(
    EvExit events,
    Emitter<EventFormState> emit,
  ) {
    addSr(const EventFormSR.exit());
  }
}
