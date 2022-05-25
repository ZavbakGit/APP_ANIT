import 'dart:async';

import 'package:app_anit/core/bloc/state_bloc_command.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    on<StartEvent>(_onStarted);
  }

  FutureOr<void> _onStarted(
      StartEvent event, Emitter<ConfigConnectionBlocState> emit) {
    emit(LoadingState());
    add(LoadEvent());
  }
}
