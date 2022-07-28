import 'dart:async';

import 'package:app_anit/presenter/pages/main/main_page_bloc_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../arch/sr_bloc/sr_bloc.dart';
import '../../../domain/models/app_model.dart';

class MainPageBloc extends SrBloc<MainPageEvent, MainPageState, MainPageSR> {
  final AppModel appModel;

  MainPageBloc({
    required this.appModel,
  }) : super(const MainPageState.empty()) {
    on<MainPageEventInit>(_init);
    on<MainPageEventExit>(_exit);
  }

  FutureOr<void> _init(
    MainPageEventInit event,
    Emitter<MainPageState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    emit(MainPageState.data(user: appModel.remoteConfig!.user.name!));
  }

  FutureOr<void> _exit(
    MainPageEventExit event,
    Emitter<MainPageState> emit,
  ) async {
    appModel.logout();
  }
}
