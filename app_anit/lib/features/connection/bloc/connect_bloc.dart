import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'connect_event.dart';
part 'connect_state.dart';

class ConnectBloc extends Bloc<ConnectEvent, ConnectState> {
  ConnectBloc() : super(BaseState.initial()) {
    on<InitEvent>(_onInitEvent);
    on<ConnectionEvent>(_onConnectEvent);
  }

  FutureOr<void> _onConnectEvent(
    ConnectEvent event,
    Emitter<ConnectState> emit,
  ) async {
    emit(BaseState.loading());
    await Future.delayed(const Duration(seconds: 1));

    emit(ShowDialogState(title: 'Сообщение', context: 'Oooooo'));
    await Future.delayed(const Duration(seconds: 2));
    emit(ShowDialogState(title: 'Сообщение', context: 'Oooooo'));
    await Future.delayed(const Duration(seconds: 2));

    emit(BaseState.success());
  }

  FutureOr<void> _onInitEvent(
    InitEvent event,
    Emitter<ConnectState> emit,
  ) async {
    if (event.isAutoStart) {
      emit(BaseState.loading());
      await Future.delayed(const Duration(seconds: 2));
      //emit(const ConnectionXState.failure('Ошибка 1'));
      emit(BaseState.success());
    }
  }
}
