import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart' as chopper;

import '../../remote/api_client.dart';

class CommonJsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonResUtf8 =
        response.copyWith<String>(body: utf8.decode(response.bodyBytes));
    final jsonRes = await super.convertResponse(jsonResUtf8);

    //final jsonRes = await super.convertResponse(response);

    return jsonRes.copyWith<ResultType>(
        body: ApiClient.commonJsonDecoder.decode<Item>(jsonRes.body)
            as ResultType);
  }
}

class CommonJsonDecoder {
  CommonJsonDecoder(this.factories);

  Map<Type, JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);
