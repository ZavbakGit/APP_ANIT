import 'dart:async';

import 'package:app_anit/presenter/pages/login/login_page_models.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../arch/sr_bloc/sr_bloc.dart';
import '../../../domain/models/app_model.dart';
import '../../../domain/models/conected_config_model.dart';

class LoginPageBloc
    extends SrBloc<LoginPageEvent, LoginPageState, LoginPageSR> {
  LoginPageBloc({required this.appModel})
      : super(const LoginPageState.empty()) {
    on<EvInit>(_init);
    on<EvLogin>(_login);
  }

  final AppModel appModel;

  FutureOr<void> _init(
    EvInit event,
    Emitter<LoginPageState> emit,
  ) async {
    emit(const LoginPageState.data(login: '', password: '', isLoading: true));
    final either = await appModel.getConnectionConfig();

    either.fold(
      (fail) {
        emit(const LoginPageState.data(
            login: '', password: '', isLoading: false));
        addSr(LoginPageSR.showSnackBar('Ошибка: ${fail.error}'));
      },
      (none) {
        if (appModel.autoLogin) {
          add(EvLogin(
              login: appModel.connectionConfig?.login ?? '',
              password: appModel.connectionConfig?.password ?? ''));
        } else {
          emit(LoginPageState.data(
            login: appModel.connectionConfig?.login ?? '',
            password: appModel.connectionConfig?.password ?? '',
            isLoading: false,
          ));
        }
      },
    );
  }

  FutureOr<void> _login(
    EvLogin event,
    Emitter<LoginPageState> emit,
  ) async {
    emit(const LoginPageState.data(login: '', password: '', isLoading: true));

    final connectionConfig = ConnectedConfigModel(
      login: event.login,
      password: event.password,
    );

    final either =
        (await (await appModel.saveConnectionConfig(connectionConfig))
                .traverseFuture((model) => appModel.login(connectionConfig)))
            .flatMap(id);

    either.fold(
      (fail) {
        emit(LoginPageState.data(
            login: event.login, password: event.password, isLoading: false));
        addSr(LoginPageSR.showSnackBar('Ошибка: ${fail.error}'));
      },
      (none) {
        emit(LoginPageState.data(
            login: event.login, password: event.password, isLoading: false));
        addSr(const LoginPageSR.exit());
      },
    );
  }
}