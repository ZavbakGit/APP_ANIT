import 'package:app_anit/domain/models/catalog_model.dart';
import 'package:app_anit/domain/models/conected_config_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  final _appData = AppData(autoLogin: true);

  bool get existConfig => _appData.connectedConfig != null;
  bool get existCurentUser => _appData.curentUser != null;
  bool get autoLogin => _appData.autoLogin;

  ConnectedConfigModel? get connectionConfig => _appData.connectedConfig;
  set connectionConfig(ConnectedConfigModel? value) {
    _appData.connectedConfig = value;
    notifyListeners();
  }

  CatalogModel? get curentUser => _appData.curentUser;
  set curentUser(CatalogModel? value) {
    if (value == null) {
      _appData.autoLogin = false;
    }
    _appData.curentUser = value;
    notifyListeners();
  }
}
