import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../core/error/exeption.dart';
import '../../domain/model/connection_config_model.dart';

const cachedLoaginDataModel = 'CONNECTION_CONFIG_MODEL';

class LocalDatasourse {
  final SharedPreferences sharedPreferences;

  LocalDatasourse(this.sharedPreferences);

  Future<ConnectionConfigModel> getConnectionData() {
    final jsonString = sharedPreferences.getString(cachedLoaginDataModel);

    if (jsonString == null) {
      throw CacheException();
    }

    // Future which is immediately completed
    return Future.value(
        ConnectionConfigModel.fromJson(json.decode(jsonString)));
  }

  Future<void> saveConnectingDataModel(ConnectionConfigModel model) {
    return sharedPreferences.setString(
      cachedLoaginDataModel,
      json.encode(model.toJson()),
    );
  }
}
