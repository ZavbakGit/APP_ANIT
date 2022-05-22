import 'dart:convert';

import 'package:equatable/equatable.dart';

class ConnectionConfigModel extends Equatable {
  final String baseUrl;
  final String login;
  final String password;

  const ConnectionConfigModel(this.baseUrl, this.login, this.password);

  @override
  List<Object> get props => [baseUrl, login, password];

  Map<String, dynamic> toMap() {
    return {
      'baseUrl': baseUrl,
      'login': login,
      'password': password,
    };
  }

  factory ConnectionConfigModel.fromMap(Map<String, dynamic> map) {
    return ConnectionConfigModel(
      map['baseUrl'] ?? '',
      map['login'] ?? '',
      map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ConnectionConfigModel.fromJson(String source) =>
      ConnectionConfigModel.fromMap(json.decode(source));
}
