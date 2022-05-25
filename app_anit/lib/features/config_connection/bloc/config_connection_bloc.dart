import 'dart:async';

import 'package:app_anit/core/bloc/state_bloc_command.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/usecases/usecase.dart';
import '../../../domain/model/connection_config_model.dart';
import '../usecases/get_config_usecase.dart';
import '../usecases/save_config_usecase.dart';

part 'config_connection_event.dart';
part 'config_connection_sate.dart';

class ConfigConnectionBloc
    extends Bloc<ConfigConnectionBlocEvent, ConfigConnectionBlocState> {
  final GetConfigUsecase getConfigUsecase;
  final SaveConfigUsecase saveConfigUsecase;

  ConfigConnectionBloc({
    required this.getConfigUsecase,
    required this.saveConfigUsecase,
  }) : super(InitState()) {
    on<StartEvent>(_onStart);
    on<LoadEvent>(_onLoad);
    on<SaveEvent>(_onSave);
  }

  FutureOr<void> _onStart(
      StartEvent event, Emitter<ConfigConnectionBlocState> emit) {
    emit(LoadingState());
    add(LoadEvent());
  }

  FutureOr<void> _onLoad(
      LoadEvent event, Emitter<ConfigConnectionBlocState> emit) async {
    emit(LoadingState());

    await Future.delayed(const Duration(seconds: 2));

    (await getConfigUsecase.call(NoParams())).fold(
      (fail) {
        emit(PendingState());
      },
      (config) {
        emit(PendingState(
          baseUrl: config.baseUrl,
          password: config.password,
          login: config.login,
        ));
      },
    );
  }

  FutureOr<void> _onSave(
    SaveEvent event,
    Emitter<ConfigConnectionBlocState> emit,
  ) async {
    final model = ConnectionConfigModel(
        baseUrl: event.baseUrl, login: event.login, password: event.password);

    (await saveConfigUsecase.call(model)).fold(
      (fail) {
        emit(PendingState(
          baseUrl: event.baseUrl,
          password: event.password,
          login: event.login,
        ));

        emit(ErrorState(message: 'Ошибка сохранения'));
      },
      (none) {
        emit(PendingState(
          baseUrl: event.baseUrl,
          password: event.password,
          login: event.login,
        ));

        emit(IsSavedState());
      },
    );
  }
}
