import 'dart:convert';

class ConnectedConfigModel {
  final String login;
  final String password;

  ConnectedConfigModel({
    required this.login,
    required this.password,
  });

  String get baseUrl => 'https://khv.799000.ru/erp/hs/oas_api';

  Map<String, dynamic> toMap() {
    return {
      'baseUrl': baseUrl,
      'login': login,
      'password': password,
    };
  }

  factory ConnectedConfigModel.fromMap(Map<String, dynamic> map) {
    return ConnectedConfigModel(
      login: map['login'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ConnectedConfigModel.fromJson(String source) =>
      ConnectedConfigModel.fromMap(json.decode(source));
}
