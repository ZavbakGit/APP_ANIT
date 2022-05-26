import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'connection_event.dart';
part 'connection_state.dart';

class ConnectionBloc extends Bloc<ConnectionEvent, ConnectionXState> {
  ConnectionBloc() : super(const ConnectionXState.initial()) {
    on<InitEvent>(_onInitEvent);
    on<ConnectEvent>(_onConnectEvent);
  }

  FutureOr<void> _onConnectEvent(
    ConnectionEvent event,
    Emitter<ConnectionXState> emit,
  ) async {
    emit(const ConnectionXState.loading());
    await Future.delayed(const Duration(seconds: 1));
    emit(const ConnectionXState.success());
  }

  FutureOr<void> _onInitEvent(
    InitEvent event,
    Emitter<ConnectionXState> emit,
  ) async {
    if (event.isAutoStart) {
      emit(const ConnectionXState.loading());
      await Future.delayed(const Duration(seconds: 2));
      //emit(const ConnectionXState.failure('Ошибка 1'));
      emit(const ConnectionXState.success());
    }
  }
}
