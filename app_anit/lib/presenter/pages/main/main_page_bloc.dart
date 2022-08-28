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
    on<EvInit>(_init);
    on<EvExit>(_exit);
  }

  FutureOr<void> _init(
    EvInit event,
    Emitter<MainPageState> emit,
  ) async {
    emit(MainPageState.data(user: appModel.remoteConfig!.user.name!));
  }

  FutureOr<void> _exit(
    EvExit event,
    Emitter<MainPageState> emit,
  ) async {
    appModel.logout();
  }
}
