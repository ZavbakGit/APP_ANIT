// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;

part 'swagger.swagger.chopper.dart';
part 'swagger.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swagger extends ChopperService {
  static Swagger create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$Swagger(client);
    }

    final newClient = ChopperClient(
        services: [_$Swagger()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http:///copy_erp/hs/oas_api');
    return _$Swagger(newClient);
  }

  ///Проверяет, жив ли сервер
  Future<chopper.Response<ResponsePingServer>> pingGet() {
    generatedMapping.putIfAbsent(
        ResponsePingServer, () => ResponsePingServer.fromJsonFactory);

    return _pingGet();
  }

  ///Проверяет, жив ли сервер
  @Get(path: '/ping')
  Future<chopper.Response<ResponsePingServer>> _pingGet();

  ///
  ///@param type Тип справочника
  ///@param guid Тип справочника
  Future<chopper.Response<RefToCatalog>> catalogsTypeGuidGet(
      {required String? type, required String? guid}) {
    generatedMapping.putIfAbsent(
        RefToCatalog, () => RefToCatalog.fromJsonFactory);

    return _catalogsTypeGuidGet(type: type, guid: guid);
  }

  ///
  ///@param type Тип справочника
  ///@param guid Тип справочника
  @Get(path: '/catalogs/{type}/{guid}')
  Future<chopper.Response<RefToCatalog>> _catalogsTypeGuidGet(
      {@Path('type') required String? type,
      @Path('guid') required String? guid});
}

@JsonSerializable(explicitToJson: true)
class ResponsePingServer {
  ResponsePingServer({
    required this.dateTime,
    required this.currentUser,
  });

  factory ResponsePingServer.fromJson(Map<String, dynamic> json) =>
      _$ResponsePingServerFromJson(json);

  @JsonKey(name: 'date_time', includeIfNull: false)
  final DateTime dateTime;
  @JsonKey(name: 'current_user', includeIfNull: false)
  final RefToCatalog currentUser;
  static const fromJsonFactory = _$ResponsePingServerFromJson;
  static const toJsonFactory = _$ResponsePingServerToJson;
  Map<String, dynamic> toJson() => _$ResponsePingServerToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResponsePingServer &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(currentUser) ^
      runtimeType.hashCode;
}

extension $ResponsePingServerExtension on ResponsePingServer {
  ResponsePingServer copyWith({DateTime? dateTime, RefToCatalog? currentUser}) {
    return ResponsePingServer(
        dateTime: dateTime ?? this.dateTime,
        currentUser: currentUser ?? this.currentUser);
  }
}

@JsonSerializable(explicitToJson: true)
class RefToCatalog {
  RefToCatalog({
    this.guid,
    this.type,
    this.code,
    this.name,
  });

  factory RefToCatalog.fromJson(Map<String, dynamic> json) =>
      _$RefToCatalogFromJson(json);

  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  final String? type;
  @JsonKey(name: 'code', includeIfNull: false, defaultValue: '')
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  static const fromJsonFactory = _$RefToCatalogFromJson;
  static const toJsonFactory = _$RefToCatalogToJson;
  Map<String, dynamic> toJson() => _$RefToCatalogToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefToCatalog &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RefToCatalogExtension on RefToCatalog {
  RefToCatalog copyWith(
      {String? guid, String? type, String? code, String? name}) {
    return RefToCatalog(
        guid: guid ?? this.guid,
        type: type ?? this.type,
        code: code ?? this.code,
        name: name ?? this.name);
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
