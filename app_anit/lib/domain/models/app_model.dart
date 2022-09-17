import 'package:app_anit/domain/models/conected_config_model.dart';
import 'package:app_anit/domain/models/remote_config_model.dart';
import 'package:app_anit/domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import '../../core/error/failures.dart';

class AppData {
  RemoteConfigModel? remoteConfig;
  ConnectedConfigModel? connectedConfig;
  bool autoLogin;

  bool get existConfig => connectedConfig != null;
  bool get existRemoteConfig => remoteConfig != null;

  AppData({
    this.remoteConfig,
    this.connectedConfig,
    required this.autoLogin,
  });
}

class AppModel extends ChangeNotifier {
  final Repository repository;
  final FirebaseMessaging firebaseMessaging;
  AppModel({
    required this.repository,
    required this.firebaseMessaging,
  });
  final _appData = AppData(autoLogin: true);

  bool get existCurentUser => _appData.remoteConfig != null;
  bool get autoLogin => _appData.autoLogin;

  ConnectedConfigModel? get connectionConfig => _appData.connectedConfig;
  RemoteConfigModel? get remoteConfig => _appData.remoteConfig;

  Future<Either<Failure, None>> saveConnectionConfig(
    ConnectedConfigModel? model,
  ) async {
    try {
      final token = await firebaseMessaging.getToken();
      model = model?.addToken(token);
    } finally {}

    final either = (model == null)
        ? await repository.removeConnectionConfig()
        : await repository.saveConnectionData(model);
    return either.map((right) {
      _appData.connectedConfig = model;
      notifyListeners();
      return right;
    });
  }

  Future<Either<Failure, ConnectedConfigModel>> getConnectionConfig() async {
    return (await repository.getConnectionConfig()).map((right) {
      _appData.connectedConfig = right;
      notifyListeners();
      return right;
    });
  }

  Future<Either<Failure, RemoteConfigModel>> login(
      ConnectedConfigModel model) async {
    return (await repository.login(model)).map((right) {
      _appData.remoteConfig = right;
      notifyListeners();
      return right;
    });
  }

  void logout() {
    _appData.remoteConfig = null;
    _appData.autoLogin = false;
    notifyListeners();
  }
}
