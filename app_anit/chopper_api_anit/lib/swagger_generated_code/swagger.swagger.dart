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
  Future<chopper.Response> pingGet() {
    return _pingGet();
  }

  ///Проверяет, жив ли сервер
  @Get(path: '/ping')
  Future<chopper.Response> _pingGet();
}

@JsonSerializable(explicitToJson: true)
class Error {
  Error({
    this.code,
    this.description,
  });

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final int? code;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  static const fromJsonFactory = _$ErrorFromJson;
  static const toJsonFactory = _$ErrorToJson;
  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $ErrorExtension on Error {
  Error copyWith({int? code, String? description}) {
    return Error(
        code: code ?? this.code, description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class User {
  User({
    this.guid,
    this.code,
    this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'code', includeIfNull: false, defaultValue: '')
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  static const fromJsonFactory = _$UserFromJson;
  static const toJsonFactory = _$UserToJson;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is User &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $UserExtension on User {
  User copyWith({String? guid, String? code, String? name}) {
    return User(
        guid: guid ?? this.guid,
        code: code ?? this.code,
        name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class Employee {
  Employee({
    this.guid,
    this.code,
    this.name,
  });

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'code', includeIfNull: false, defaultValue: '')
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  static const fromJsonFactory = _$EmployeeFromJson;
  static const toJsonFactory = _$EmployeeToJson;
  Map<String, dynamic> toJson() => _$EmployeeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Employee &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $EmployeeExtension on Employee {
  Employee copyWith({String? guid, String? code, String? name}) {
    return Employee(
        guid: guid ?? this.guid,
        code: code ?? this.code,
        name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class Order {
  Order({
    this.guid,
    this.version,
    this.$number,
    this.date,
    this.address,
    this.assemblyStartTime,
    this.assemblyEndTime,
    this.items,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'version', includeIfNull: false, defaultValue: '')
  final String? version;
  @JsonKey(name: 'number', includeIfNull: false, defaultValue: '')
  final String? $number;
  @JsonKey(name: 'date', includeIfNull: false, defaultValue: '')
  final String? date;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'assembly_start_time', includeIfNull: false)
  final DateTime? assemblyStartTime;
  @JsonKey(name: 'assembly_end_time', includeIfNull: false)
  final DateTime? assemblyEndTime;
  @JsonKey(name: 'items', includeIfNull: false, defaultValue: <OrderItem>[])
  final List<OrderItem>? items;
  static const fromJsonFactory = _$OrderFromJson;
  static const toJsonFactory = _$OrderToJson;
  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Order &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.$number, $number) ||
                const DeepCollectionEquality()
                    .equals(other.$number, $number)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.assemblyStartTime, assemblyStartTime) ||
                const DeepCollectionEquality()
                    .equals(other.assemblyStartTime, assemblyStartTime)) &&
            (identical(other.assemblyEndTime, assemblyEndTime) ||
                const DeepCollectionEquality()
                    .equals(other.assemblyEndTime, assemblyEndTime)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash($number) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(assemblyStartTime) ^
      const DeepCollectionEquality().hash(assemblyEndTime) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $OrderExtension on Order {
  Order copyWith(
      {String? guid,
      String? version,
      String? $number,
      String? date,
      String? address,
      DateTime? assemblyStartTime,
      DateTime? assemblyEndTime,
      List<OrderItem>? items}) {
    return Order(
        guid: guid ?? this.guid,
        version: version ?? this.version,
        $number: $number ?? this.$number,
        date: date ?? this.date,
        address: address ?? this.address,
        assemblyStartTime: assemblyStartTime ?? this.assemblyStartTime,
        assemblyEndTime: assemblyEndTime ?? this.assemblyEndTime,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class OrderItem {
  OrderItem({
    this.title,
    this.quantity,
    this.specifics,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

  @JsonKey(name: 'title', includeIfNull: false, defaultValue: '')
  final String? title;
  @JsonKey(name: 'quantity', includeIfNull: false, defaultValue: '')
  final String? quantity;
  @JsonKey(name: 'specifics', includeIfNull: false, defaultValue: <Specific>[])
  final List<Specific>? specifics;
  static const fromJsonFactory = _$OrderItemFromJson;
  static const toJsonFactory = _$OrderItemToJson;
  Map<String, dynamic> toJson() => _$OrderItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderItem &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.specifics, specifics) ||
                const DeepCollectionEquality()
                    .equals(other.specifics, specifics)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(specifics) ^
      runtimeType.hashCode;
}

extension $OrderItemExtension on OrderItem {
  OrderItem copyWith(
      {String? title, String? quantity, List<Specific>? specifics}) {
    return OrderItem(
        title: title ?? this.title,
        quantity: quantity ?? this.quantity,
        specifics: specifics ?? this.specifics);
  }
}

@JsonSerializable(explicitToJson: true)
class Specific {
  Specific({
    this.title,
  });

  factory Specific.fromJson(Map<String, dynamic> json) =>
      _$SpecificFromJson(json);

  @JsonKey(name: 'title', includeIfNull: false, defaultValue: '')
  final String? title;
  static const fromJsonFactory = _$SpecificFromJson;
  static const toJsonFactory = _$SpecificToJson;
  Map<String, dynamic> toJson() => _$SpecificToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Specific &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^ runtimeType.hashCode;
}

extension $SpecificExtension on Specific {
  Specific copyWith({String? title}) {
    return Specific(title: title ?? this.title);
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
