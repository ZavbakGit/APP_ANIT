import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';


class AuthInterceptor implements RequestInterceptor {

  final String user;
  final String pass;

  AuthInterceptor(this.user, this.pass);

  @override
  FutureOr<Request> onRequest(Request request) async {
    final _auth = 'Basic ' + base64Encode(utf8.encode('$user:$pass'));

    return request.copyWith(
      headers: {
        ...request.headers,
        'authorization': _auth,
      },
    );
  }
}
