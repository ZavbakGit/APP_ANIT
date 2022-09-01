import 'dart:async';

import 'package:app_anit/presenter/pages/enum_dialog/enum_dialog_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../arch/sr_bloc/sr_bloc.dart';
import '../../../domain/repositories/repository.dart';

class EnumDialogBloc
    extends SrBloc<EnumDialogEvent, EnumDialogState, EnumDialogSR> {
  EnumDialogBloc({required this.repository, required this.type})
      : super(const EnumDialogState.empty()) {
    on<EvInit>(_init);
    on<EvLoad>(_load);
    on<EvPressedEnum>(_pressedItem);
  }

  final Repository repository;
  final String type;

  FutureOr<void> _init(
    EvInit event,
    Emitter<EnumDialogState> emit,
  ) async {
    add(const EvLoad());
  }

  FutureOr<void> _pressedItem(
    EvPressedEnum event,
    Emitter<EnumDialogState> emit,
  ) {
    addSr(EnumDialogSR.exit(event.item));
  }

  FutureOr<void> _load(
    EvLoad event,
    Emitter<EnumDialogState> emit,
  ) async {
    emit(const EnumDialogState.empty());
    final either = await repository.getEnumElemets(type: type);

    either.fold((fail) {
      emit(EnumDialogState.error(message: fail.error ?? ''));
    }, (result) {
      emit(EnumDialogState.data(list: result));
    });
  }
}
