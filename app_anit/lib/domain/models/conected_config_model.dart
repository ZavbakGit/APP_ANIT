import 'dart:convert';

class ConnectedConfigModel {
  final String baseUrl;
  final String login;
  final String password;

  ConnectedConfigModel({
    required this.baseUrl,
    required this.login,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'baseUrl': baseUrl,
      'login': login,
      'password': password,
    };
  }

  factory ConnectedConfigModel.fromMap(Map<String, dynamic> map) {
    return ConnectedConfigModel(
      baseUrl: map['baseUrl'] ?? '',
      login: map['login'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ConnectedConfigModel.fromJson(String source) =>
      ConnectedConfigModel.fromMap(json.decode(source));
}
