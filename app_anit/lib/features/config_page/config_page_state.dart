import 'package:app_anit/domain/config_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/config_state.dart';

final configPageStateProvider =
    StateNotifierProvider<ConfigPageState, ConfigPageModel>((ref) {
  return ConfigPageState(ref.watch(configProvider.notifier));
});

class ConfigPageState extends StateNotifier<ConfigPageModel> {
  final ConfigSate configState;

  ConfigPageState(
    this.configState,
  ) : super(ConfigPageModel(configData: null, conddition: Condition.loading)) {
    loadingData();
  }

  void save() async {
    state = ConfigPageModel(conddition: Condition.loading, configData: null);
    await Future.delayed(const Duration(seconds: 1));

   configState.saveConfig(
        ConfigData(baseUrl: 'kjgh', login: 'ANIT1', password: 'kjhjk'));
  }

  void loadingData() async {
    state = ConfigPageModel(conddition: Condition.loading, configData: null);
    await Future.delayed(const Duration(seconds: 1));
    state = ConfigPageModel(
      conddition: Condition.data,
      configData: ConfigData(
        baseUrl: 'jgjhkjhg',
        login: 'ANIT',
        password: 'jhgjhg',
      ),
    );
  }
}

enum Condition { loading, data, error, success }

class ConfigPageModel {
  final Condition conddition;
  final ConfigData? configData;

  ConfigPageModel({
    required this.conddition,
    required this.configData,
  });
}
