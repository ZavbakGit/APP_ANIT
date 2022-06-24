import 'package:app_anit/domain/models/catalog_model.dart';
import 'package:app_anit/domain/models/conected_config_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppModel {
  CatalogModel? curentUser;
  ConnectedConfigModel? connectedConfig;

  bool get existConfig => connectedConfig != null;
  bool get existCurentUser => curentUser != null;

  AppModel({
    this.curentUser,
    this.connectedConfig,
  });
}

class AppState extends StateNotifier<AppModel> {
  AppState() : super(AppModel());

  set curentUser(CatalogModel? val) =>
      state = AppModel(curentUser: val, connectedConfig: state.connectedConfig);

  set connectedConfig(ConnectedConfigModel? val) => state =
      AppModel(curentUser: null, connectedConfig: state.connectedConfig);
}

final appStateProvider = StateNotifierProvider<AppState, AppModel>((ref) {
  return AppState();
});
