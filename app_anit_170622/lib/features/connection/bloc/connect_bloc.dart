import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecase.dart';
import '../usecases/connection_use_case.dart';

part 'connect_event.dart';
part 'connect_state.dart';

class ConnectBloc extends Bloc<ConnectEvent, ConnectState> {
  final ConnectionUseCase connectionUseCase;

  ConnectBloc({required this.connectionUseCase}) : super(BaseState.initial()) {
    on<InitEvent>(_onInitEvent);
    on<ConnectionEvent>(_onConnectEvent);
  }

  FutureOr<void> _onConnectEvent(
    ConnectionEvent event,
    Emitter<ConnectState> emit,
  ) async {
    emit(BaseState.loading());
    await Future.delayed(const Duration(seconds: 1));

    (await connectionUseCase.call(NoParams())).fold(
      (fail) {
        if (fail is CacheFailure) {
          emit(CacheFailureState());
        } else if (fail is ServerFailure) {
          emit(BaseState.failure(fail.description));
        } else {
          emit(BaseState.failure('Ошибка'));
        }
      },
      (config) {
        emit(SuccessConnectState());
      },
    );
  }

  FutureOr<void> _onInitEvent(
    InitEvent event,
    Emitter<ConnectState> emit,
  ) async {
    if (event.isAutoStart) {
      add(ConnectionEvent());
    }
  }
}
