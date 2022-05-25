import 'package:app_anit/core/usecases/usecase.dart';
import 'package:app_anit/features/config_connection/usecases/get_config_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../domain/model/connection_config_model.dart';
import '../usecases/save_config_usecase.dart';

class ConfigConnectionCubit extends Cubit<ConfigConnectionState> {
  final GetConfigUsecase getConfigUsecase;
  final SaveConfigUsecase saveConfigUsecase;

  ConfigConnectionCubit({
    required this.getConfigUsecase,
    required this.saveConfigUsecase,
  }) : super(const ConfigConnectionState());

  /// Эмитет сохраненные настройки или пустые
  ///
  void getConfig() async {
    emit(const ConfigConnectionState(status: ConfigConnectionStatus.loading));
    (await getConfigUsecase.call(NoParams())).fold(
      (fail) {
        emit(const ConfigConnectionState(
          status: ConfigConnectionStatus.loaded,
          baseUrl: '',
          password: '',
          login: '',
        ));
      },
      (config) {
        emit(ConfigConnectionState(
          status: ConfigConnectionStatus.loaded,
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
    emit(const ConfigConnectionState(status: ConfigConnectionStatus.loading));

    final model = ConnectionConfigModel(
        baseUrl: baseUrl, login: login, password: password);
    (await saveConfigUsecase.call(model)).fold((fail) {
      emit(ConfigConnectionState(
          status: ConfigConnectionStatus.loaded,
          baseUrl: baseUrl,
          password: password,
          login: login,
          messageError: 'Ошибка сохранения'));
    }, (none) {
      emit(ConfigConnectionState(
        status: ConfigConnectionStatus.saved,
        baseUrl: baseUrl,
        password: password,
        login: login,
      ));
    });
  }
}

enum ConfigConnectionStatus { initial, loading, loaded, failure, saved }

extension ConfigConnectionStatusX on ConfigConnectionStatus {
  bool get isInitial => this == ConfigConnectionStatus.initial;
  bool get isLoading => this == ConfigConnectionStatus.loading;
  bool get isLoaded => this == ConfigConnectionStatus.loaded;
  bool get isFailure => this == ConfigConnectionStatus.failure;
  bool get isSaved => this == ConfigConnectionStatus.saved;
}

@immutable
class ConfigConnectionState {
  final ConfigConnectionStatus status;
  final String? baseUrl;
  final String? login;
  final String? password;
  final String? messageError;

  const ConfigConnectionState({
    this.status = ConfigConnectionStatus.initial,
    this.baseUrl,
    this.login,
    this.password,
    this.messageError,
  });
}
