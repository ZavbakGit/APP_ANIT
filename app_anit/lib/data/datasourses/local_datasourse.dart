import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../core/exeption.dart';
import '../../domain/models/conected_config_model.dart';

const cachedLoaginDataModel = 'CONNECTION_CONFIG_MODEL';

class LocalDatasourse {
  final SharedPreferences sharedPreferences;

  LocalDatasourse(this.sharedPreferences);

  Future<ConnectedConfigModel> getConnectionData() {
    final jsonString = sharedPreferences.getString(cachedLoaginDataModel);

    if (jsonString == null) {
      throw CacheException();
    }

    // Future which is immediately completed
    return Future.value(ConnectedConfigModel.fromJson(json.decode(jsonString)));
  }

  Future<void> saveConnectingDataModel(ConnectedConfigModel model) {
    return sharedPreferences.setString(
      cachedLoaginDataModel,
      json.encode(model.toJson()),
    );
  }

  removeConnectionData() {
    return sharedPreferences.remove(cachedLoaginDataModel);
  }
}
