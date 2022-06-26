import 'package:app_anit/domain/models/catalog_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../domain/models/app_model.dart';

class LoginScreenCubit extends Cubit<LoginScreenState> {
  final AppModel appModel;

  LoginScreenCubit({required this.appModel}) : super(InitialState());

  void load() async {
    emit(LoadingState());
    await Future.delayed(const Duration(seconds: 1));
    emit(LoadedState(
      baseUrl: 'jkhgjhg',
      login: 'kjhgkjh',
      password: 'jhgjhg',
    ));
  }

  void autoLogin() async {
    emit(LoadingState());
    await Future.delayed(const Duration(seconds: 1));
    appModel.curentUser = CatalogModel(kind: '', code: 'code', name: 'Alex');
    emit(LoadedState(
      baseUrl: 'jkhgjhg',
      login: 'kjhgkjh',
      password: 'jhgjhg',
      isGoHome: true,
    ));
  }

  void login() async {
    emit(LoadingState());
    await Future.delayed(const Duration(seconds: 1));
    appModel.curentUser = CatalogModel(kind: '', code: 'code', name: 'Alex');
    emit(LoadedState(
      baseUrl: 'jkhgjhg',
      login: 'kjhgkjh',
      password: 'jhgjhg',
      isGoHome: true,
    ));
  }
}

@immutable
abstract class LoginScreenState {}

class InitialState extends LoginScreenState {}

class LoadingState extends LoginScreenState {}

class LoadedState extends LoginScreenState {
  final String baseUrl;
  final String login;
  final String password;
  final String? error;
  final bool isGoHome;

  LoadedState({
    required this.baseUrl,
    required this.login,
    required this.password,
    this.error,
    this.isGoHome = false,
  });

  @override
  String toString() {
    return 'LoadedState(baseUrl: $baseUrl, login: $login, password: $password, error: $error, isGoHome: $isGoHome)';
  }
}
