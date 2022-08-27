import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/models/app_model.dart';
import '../../../domain/models/conected_config_model.dart';

class LoginScreenCubit extends Cubit<PageState> {
  final AppModel appModel;

  LoginScreenCubit({
    required this.appModel,
  }) : super(const PageState());

  PageState _getPageStateApp() {
    return PageState(
      baseUrl: appModel.connectionConfig?.baseUrl ?? '',
      login: appModel.connectionConfig?.login ?? '',
      password: appModel.connectionConfig?.password ?? '',
    );
  }

  void getConnectionConfig() async {
    emit(_getPageStateApp().copyWith(isLoading: true));
    final either = await appModel.getConnectionConfig();

    either.fold(
      (fail) {
        emit(const PageState());
      },
      (none) {
        emit(_getPageStateApp());
        if (appModel.autoLogin) {
          login(
            baseUrl: appModel.connectionConfig?.baseUrl ?? 'http://',
            login: appModel.connectionConfig?.login ?? '',
            password: appModel.connectionConfig?.password ?? '',
          );
        }
      },
    );
  }

  void login({
    required String baseUrl,
    required String login,
    required String password,
  }) async {
    final pageStateCurent = PageState(
      baseUrl: baseUrl,
      login: login,
      password: password,
    );

    final connectionConfig = ConnectedConfigModel(
      login: login,
      password: password,
    );

    emit(pageStateCurent.copyWith(isLoading: true));

    final either =
        (await (await appModel.saveConnectionConfig(connectionConfig))
                .traverseFuture((model) => appModel.login(connectionConfig)))
            .flatMap(id);

    either.fold(
      (fail) {
        emit(pageStateCurent.copyWith(error: fail.error));
      },
      (none) {
        emit(_getPageStateApp().copyWith(isGoHome: true));
      },
    );
  }
}

@immutable
class PageState {
  final bool isLoading;
  final String baseUrl;
  final String login;
  final String password;
  final String? error;
  final bool isGoHome;

  const PageState({
    this.isLoading = false,
    this.baseUrl = '',
    this.login = '',
    this.password = '',
    this.error,
    this.isGoHome = false,
  });

  @override
  String toString() {
    return 'LoadedState(isLoading: $isLoading, baseUrl: $baseUrl, login: $login, password: $password, error: $error, isGoHome: $isGoHome,)';
  }

  PageState copyWith({
    bool? isLoading,
    String? baseUrl,
    String? login,
    String? password,
    String? error,
    bool? isGoHome,
  }) {
    return PageState(
      isLoading: isLoading ?? this.isLoading,
      baseUrl: baseUrl ?? this.baseUrl,
      login: login ?? this.login,
      password: password ?? this.password,
      error: error ?? this.error,
      isGoHome: isGoHome ?? this.isGoHome,
    );
  }
}
