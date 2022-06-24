import 'package:app_anit/domain/config_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfigSate extends StateNotifier<ConfigData?> {
  ConfigSate() : super(null);

  void saveConfig(ConfigData config) async {
    await Future.delayed(const Duration(seconds: 1));
    state = ConfigData(
        baseUrl: config.baseUrl, login: config.login, password: config.password);
  }

  void getConfig() async {
    await Future.delayed(const Duration(seconds: 1));
    state =
        ConfigData(baseUrl: 'jkhbkjbjh', login: 'ANIT', password: 'jhgjhghhjk');
    //state = null;
  }
}

final configProvider = StateNotifierProvider<ConfigSate, ConfigData?>((ref) {
  return ConfigSate();
});
