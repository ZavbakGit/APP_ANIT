import 'dart:convert';

class ConnectedConfigModel {
  final String login;
  final String password;
  final String? token;

  ConnectedConfigModel(
      {required this.login, required this.password, this.token});

  String get baseUrl => 'https://khv.799000.ru/erp/hs/oas_api';

  Map<String, dynamic> toMap() {
    return {
      'baseUrl': baseUrl,
      'login': login,
      'password': password,
      'token': token,
    };
  }

  factory ConnectedConfigModel.fromMap(Map<String, dynamic> map) {
    return ConnectedConfigModel(
      login: map['login'] ?? '',
      password: map['password'] ?? '',
      token: map['token'] ?? '',
    );
  }

  ConnectedConfigModel addToken(String? token) =>
      ConnectedConfigModel(login: login, password: password, token: token);

  String toJson() => json.encode(toMap());

  factory ConnectedConfigModel.fromJson(String source) =>
      ConnectedConfigModel.fromMap(json.decode(source));
}
