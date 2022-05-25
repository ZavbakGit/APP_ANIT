import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../core/bloc/state_bloc_command.dart';

part 'test_connection_event.dart';
part 'test_connection_state.dart';

class TestConnectionBloc
    extends Bloc<TestConnectionEvent, TestConnectionBlocState> {
  TestConnectionBloc() : super(InitState()) {
    on<StartEvent>(_onStart);
  }

  FutureOr<void> _onStart(
    StartEvent event,
    Emitter<TestConnectionBlocState> emit,
  ) {
    emit(PendingState());
    //emit(LoadingState());
  }
}
