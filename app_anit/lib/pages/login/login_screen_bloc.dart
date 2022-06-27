import 'package:app_anit/domain/models/catalog_model.dart';
import 'package:app_anit/domain/repositories/repository.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/models/app_model.dart';

class LoginScreenCubit extends Cubit<PageState> {
  final AppModel appModel;
  final Repository repository;

  LoginScreenCubit({
    required this.appModel,
    required this.repository,
  }) : super(PageState());

  void load() async {
    emit(PageState(isLoading: true));
    await Future.delayed(const Duration(seconds: 1));
    emit(PageState(
      baseUrl: 'http://212.19.2.67',
      login: 'Гладких А.В.',
      password: 'hgfg@jhj',
    ));
  }

  void autoLogin() async {
    emit(PageState(isLoading: true));
    await Future.delayed(const Duration(seconds: 1));
    appModel.curentUser = CatalogModel(kind: '', code: 'code', name: 'Alex');
    emit(PageState(
      baseUrl: 'http://212.19.2.67',
      login: 'Гладких А.В.',
      password: 'hgfg@jhj',
      isGoHome: true,
    ));
  }

  void login() async {
    emit(PageState(isLoading: true));
    await Future.delayed(const Duration(seconds: 1));
    appModel.curentUser = CatalogModel(kind: '', code: 'code', name: 'Alex');
    emit(PageState(
      baseUrl: 'http://212.19.2.67',
      login: 'Гладких А.В.',
      password: 'hgfg@jhj',
      isGoHome: true,
    ));
  }
}

@immutable
class PageState {
  final bool isLoading;
  final String baseUrl;
  final String login;
  final String password;
  final String error;
  final bool isGoHome;

  PageState({
    this.isLoading = false,
    this.baseUrl = '',
    this.login = '',
    this.password = '',
    this.error = '',
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
