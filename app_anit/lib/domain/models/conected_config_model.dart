import 'dart:convert';

class ConnectedConfigModel {
  final String login;
  final String password;
  final String? token;
  final String? deviceId;

  ConnectedConfigModel(
      {required this.login, required this.password, this.token, this.deviceId});

  String get baseUrl => 'https://khv.799000.ru/erp/hs/oas_api';

  Map<String, dynamic> toMap() {
    return {
      'baseUrl': baseUrl,
      'login': login,
      'password': password,
      'token': token,
      'deviceId': deviceId,
    };
  }

  factory ConnectedConfigModel.fromMap(Map<String, dynamic> map) {
    return ConnectedConfigModel(
      login: map['login'] ?? '',
      password: map['password'] ?? '',
      token: map['token'] ?? '',
      deviceId: map['deviceId'] ?? '',
    );
  }

  ConnectedConfigModel addToken(String? token) =>
      ConnectedConfigModel(login: login, password: password, token: token);

  ConnectedConfigModel addDeviceId(String? deviceId) => ConnectedConfigModel(
      login: login, password: password, token: token, deviceId: deviceId);

  String toJson() => json.encode(toMap());

  factory ConnectedConfigModel.fromJson(String source) =>
      ConnectedConfigModel.fromMap(json.decode(source));
}
