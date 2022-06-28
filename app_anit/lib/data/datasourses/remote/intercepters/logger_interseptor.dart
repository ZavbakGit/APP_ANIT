import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:logger/logger.dart';

import 'logger.dart';

class LoggerInterceptor implements RequestInterceptor, ResponseInterceptor {
  final logger = getLogger('API');

  final _blacklist = [
    '/ride/driver/actual',
    '/user/location',
  ];

  @override
  FutureOr<Request> onRequest(Request request) {
    final String headers =
        request.headers.entries.map((e) => '${e.key}: ${e.value}').join('\n');
    if (!urlInBlacklist(request.url)) {
      logger
          .i('-> ${request.method} ${request.url}\n$headers\n${request.body}');
    }
    return request;
  }

  @override
  FutureOr<Response> onResponse(Response response) {
    final base = response.base.request;
    if (base != null) {
      final String headers =
          base.headers.entries.map((e) => '<- ${e.key}: ${e.value}').join('\n');
      Level level = Level.info;
      if (response.statusCode >= 500) level = Level.debug;
      if (response.statusCode >= 400) level = Level.error;
      if (response.statusCode > 300) level = Level.warning;
      if (!urlInBlacklist(response.base.request?.url.path)) {
        logger.log(level,
            '<- ${response.statusCode} ${base.method} ${base.url}\n$headers');
        logger.log(level, response.body);
        logger.log(level, '<- END ${base.method}');
      }
    }
    return response;
  }

  bool urlInBlacklist(String? url) {
    for (final blackItem in _blacklist) {
      if (url?.contains(blackItem) ?? false) {
        return true;
      }
    }
    return false;
  }
}
