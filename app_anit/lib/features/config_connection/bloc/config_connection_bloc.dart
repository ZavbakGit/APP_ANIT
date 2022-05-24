import 'package:app_anit/core/usecases/usecase.dart';
import 'package:app_anit/features/config_connection/usecases/get_config_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../core/bloc/state_bloc_command.dart';
import '../../../domain/model/connection_config_model.dart';
import '../usecases/save_config_usecase.dart';

class CounterCubit extends Cubit<ConfigConnectionState> {
  final GetConfigUsecase getConfigUsecase;
  final SaveConfigUsecase saveConfigUsecase;

  CounterCubit(
    this.getConfigUsecase,
    this.saveConfigUsecase,
  ) : super(InitState());

  /// Эмитет сохраненные настройки или пустые
  ///
  void getConfig() async {
    emit(LoadState());
    (await getConfigUsecase.call(NoParams())).fold(
      (fail) {
        emit(FormState(
          baseUrl: '',
          password: '',
          login: '',
        ));
      },
      (config) {
        emit(FormState(
          baseUrl: config.baseUrl,
          password: config.password,
          login: config.login,
        ));
      },
    );
  }

  /// Сохраняет настойки
  ///
  ///
  void saveConfig(String baseUrl, String login, String password) async {
    emit(LoadState());

    final model = ConnectionConfigModel(
        baseUrl: baseUrl, login: login, password: password);
    (await saveConfigUsecase.call(model)).fold((fail) {
      emit(ErrorState(message: 'Ошибка сохранения'));
      emit(FormState(baseUrl: baseUrl, login: login, password: password));
    }, (none) {
      emit(FormState(baseUrl: baseUrl, login: login, password: password));
      emit(IsSavedState());
    });
  }
}

@immutable
abstract class ConfigConnectionState {}

class InitState extends ConfigConnectionState {}

class LoadState extends ConfigConnectionState {}

class ErrorState extends ConfigConnectionState with StateIsCommand {
  final String message;
  ErrorState({
    required this.message,
  });
}

class IsSavedState extends ConfigConnectionState with StateIsCommand {}

class FormState extends ConfigConnectionState {
  final String baseUrl;
  final String login;
  final String password;

  FormState({
    required this.baseUrl,
    required this.login,
    required this.password,
  });
}
