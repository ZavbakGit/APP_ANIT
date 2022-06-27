import 'package:app_anit/domain/models/catalog_model.dart';
import 'package:app_anit/domain/models/conected_config_model.dart';
import 'package:app_anit/domain/repositories/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/failures.dart';

class AppData {
  CatalogModel? curentUser;
  ConnectedConfigModel? connectedConfig;
  bool autoLogin;

  bool get existConfig => connectedConfig != null;
  bool get existCurentUser => curentUser != null;

  AppData({
    this.curentUser,
    this.connectedConfig,
    required this.autoLogin,
  });
}

class AppModel extends ChangeNotifier {
  final Repository repository;
  AppModel({
    required this.repository,
  });
  final _appData = AppData(autoLogin: true);

  bool get existConfig => _appData.connectedConfig != null;
  bool get existCurentUser => _appData.curentUser != null;
  bool get autoLogin => _appData.autoLogin;

  Future<Either<Failure, CatalogModel>> login(
      ConnectedConfigModel model) async {
    return (await repository.login(model)).map((right) {
      _appData.curentUser = right;
      notifyListeners();
      return right;
    });
  }

  Future<Either<Failure, None>> saveConnectionConfig(
    ConnectedConfigModel? model,
  ) async {
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

  ConnectedConfigModel? get connectionConfig => _appData.connectedConfig;
  CatalogModel? get curentUser => _appData.curentUser;

  void logout() {
    _appData.curentUser = null;
    _appData.autoLogin = false;
    notifyListeners();
  }
}
