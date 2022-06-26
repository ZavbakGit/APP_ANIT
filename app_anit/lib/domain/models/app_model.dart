import 'package:app_anit/domain/models/catalog_model.dart';
import 'package:app_anit/domain/models/conected_config_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppData {
  CatalogModel? curentUser;
  ConnectedConfigModel? connectedConfig;

  bool get existConfig => connectedConfig != null;
  bool get existCurentUser => curentUser != null;

  AppData({
    this.curentUser,
    this.connectedConfig,
  });
}

class AppModel extends ChangeNotifier {
  final _appData = AppData();

  bool get existConfig => _appData.connectedConfig != null;
  bool get existCurentUser => _appData.curentUser != null;

  ConnectedConfigModel? get connectionConfig => _appData.connectedConfig;
  set connectionConfig(ConnectedConfigModel? value) {
    _appData.connectedConfig = value;
    notifyListeners();
  }

  CatalogModel? get curentUser => _appData.curentUser;
  set curentUser(CatalogModel? value) {
    _appData.curentUser = value;
    notifyListeners();
  }
}

class AppState extends StateNotifier<AppData> {
  AppState() : super(AppData());

  set curentUser(CatalogModel? val) =>
      state = AppData(curentUser: val, connectedConfig: state.connectedConfig);

  set connectedConfig(ConnectedConfigModel? val) =>
      state = AppData(curentUser: null, connectedConfig: state.connectedConfig);
}

// final appStateProvider = StateNotifierProvider<AppState, AppData>((ref) {
//   return AppState();
// });
