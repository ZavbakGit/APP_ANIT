import 'dart:async';

import 'package:app_anit/presenter/pages/event_form/event_form_models.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../arch/sr_bloc/sr_bloc.dart';
import '../../../../domain/models/app_model.dart';
import '../../../../domain/repositories/repository.dart';

class EventFormBlok
    extends SrBloc<EventFormEvent, EventFormState, EventFormSR> {
  final AppModel appModel;
  final Repository repository;

  bool isLoading = false;

  EventFormBlok({
    required this.appModel,
    required this.repository,
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
    isLoading = true;
    add(const EventFormEvent.refrech());
    await Future.delayed(const Duration(seconds: 1));
    add(const EventFormEvent.refrech());
    isLoading = false;
  }

  FutureOr<void> _refresh(
    EvRefresh events,
    Emitter<EventFormState> emit,
  ) async {
    emit(
      EventFormState.data(
        isLoading: isLoading,
      ),
    );
  }

  FutureOr<void> _exit(
    EvExit events,
    Emitter<EventFormState> emit,
  ) {
    addSr(const EventFormSR.exit());
  }
}
