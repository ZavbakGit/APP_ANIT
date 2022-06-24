import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/catalog_model.dart';

final connectedConfigStateProvider =
    StateNotifierProvider<ConnectedConfigState, ConnectedConfigModel>((ref) {
  return ConnectedConfigState();
});

class ConnectedConfigState extends StateNotifier<ConnectedConfigModel> {
  ConnectedConfigState() : super(const ConnectedConfigModel(isLoading: true));

  void loadConfig() async {
    state = state.copyWith(isLoading: true);
    await Future.delayed(const Duration(seconds: 3));
    state = state.copyWith(isLoading: false);
  }
}

@immutable
class ConnectedConfigModel {
  final bool? autoStart;
  final String? baseUrl;
  final String? login;
  final String? password;
  final bool isLoading;
  final CatalogModel? curentUser;
  final String? error;
  final bool success;

  const ConnectedConfigModel({
    this.autoStart,
    this.baseUrl,
    this.login,
    this.password,
    required this.isLoading,
    this.curentUser,
    this.error,
    this.success = false,
  });

  ConnectedConfigModel copyWith({
    bool? autoStart,
    String? baseUrl,
    String? login,
    String? password,
    bool? isLoading,
    CatalogModel? curentUser,
    String? error,
    bool? success,
  }) {
    return ConnectedConfigModel(
      autoStart: autoStart ?? this.autoStart,
      baseUrl: baseUrl ?? this.baseUrl,
      login: login ?? this.login,
      password: password ?? this.password,
      isLoading: isLoading ?? this.isLoading,
      curentUser: curentUser ?? this.curentUser,
      error: error ?? this.error,
      success: success ?? this.success,
    );
  }

  @override
  String toString() {
    return 'ConnectedConfigModel(autoStart: $autoStart, baseUrl: $baseUrl, login: $login, password: $password, isLoading: $isLoading, curentUser: $curentUser, error: $error, success: $success)';
  }
}
