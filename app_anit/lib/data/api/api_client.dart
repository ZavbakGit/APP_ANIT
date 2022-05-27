import 'package:chopper/chopper.dart';
import 'package:chopper_api_anit/swagger_generated_code/client_index.dart';
import 'package:chopper_api_anit/swagger_generated_code/client_mapping.dart';

import 'converter/converter.dart';
import 'intercepters/auth.dart';
import 'intercepters/logger_interseptor.dart';
import 'package:http/io_client.dart' as http;
import 'dart:io';

class ApiClient {
  final String login;
  final String password;
  final String baseUrl;

  ApiClient(
      {required this.login, required this.password, required this.baseUrl}) {
    _init();
  }

  late final Swagger api;

  void _init() {
    final clientHttp = http.IOClient(
      HttpClient()..connectionTimeout = const Duration(seconds: 10),
    );

    final client = ChopperClient(
      client: clientHttp,
      baseUrl: baseUrl,
      converter: CommonJsonSerializableConverter(),
      interceptors: [
        LoggerInterceptor(),
        AuthInterceptor(login, password),
      ],
    );
    api = Swagger.create(client: client);
  }

  static final commonJsonDecoder = CommonJsonDecoder(generatedMapping);
}
