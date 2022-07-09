// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'swagger.enums.swagger.dart' as enums;
export 'swagger.enums.swagger.dart';

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
        baseUrl: baseUrl ?? 'http://');
    return _$Swagger(newClient);
  }

  ///
  ///@param guid
  Future<chopper.Response<Task>> taskGuidGet({required String? guid}) {
    generatedMapping.putIfAbsent(Task, () => Task.fromJsonFactory);

    return _taskGuidGet(guid: guid);
  }

  ///
  ///@param guid
  @Get(path: '/task/{guid}')
  Future<chopper.Response<Task>> _taskGuidGet(
      {@Path('guid') required String? guid});

  ///
  ///@param guidUser
  Future<chopper.Response<List<TaskItem>>> tasksUserGet(
      {required String? guidUser}) {
    generatedMapping.putIfAbsent(TaskItem, () => TaskItem.fromJsonFactory);

    return _tasksUserGet(guidUser: guidUser);
  }

  ///
  ///@param guidUser
  @Get(path: '/tasks_user')
  Future<chopper.Response<List<TaskItem>>> _tasksUserGet(
      {@Query('guidUser') required String? guidUser});

  ///Login
  Future<chopper.Response<Config>> loginGet() {
    generatedMapping.putIfAbsent(Config, () => Config.fromJsonFactory);

    return _loginGet();
  }

  ///Login
  @Get(path: '/login')
  Future<chopper.Response<Config>> _loginGet();

  ///
  ///@param search Строка поиска
  ///@param count Количество
  ///@param offset Cмещение
  ///@param type Тип справочника
  Future<chopper.Response<List<RefCatalog>>> catalogsTypeSearchGet(
      {required String? search,
      required num? count,
      required num? offset,
      required String? type}) {
    generatedMapping.putIfAbsent(RefCatalog, () => RefCatalog.fromJsonFactory);

    return _catalogsTypeSearchGet(
        search: search, count: count, offset: offset, type: type);
  }

  ///
  ///@param search Строка поиска
  ///@param count Количество
  ///@param offset Cмещение
  ///@param type Тип справочника
  @Get(path: '/catalogs/{type}/search')
  Future<chopper.Response<List<RefCatalog>>> _catalogsTypeSearchGet(
      {@Query('search') required String? search,
      @Query('count') required num? count,
      @Query('offset') required num? offset,
      @Path('type') required String? type});

  ///
  ///@param type Тип справочника
  ///@param guid Тип справочника
  Future<chopper.Response<RefCatalog>> catalogsTypeGuidGet(
      {required String? type, required String? guid}) {
    generatedMapping.putIfAbsent(RefCatalog, () => RefCatalog.fromJsonFactory);

    return _catalogsTypeGuidGet(type: type, guid: guid);
  }

  ///
  ///@param type Тип справочника
  ///@param guid Тип справочника
  @Get(path: '/catalogs/{type}/{guid}')
  Future<chopper.Response<RefCatalog>> _catalogsTypeGuidGet(
      {@Path('type') required String? type,
      @Path('guid') required String? guid});
}

@JsonSerializable(explicitToJson: true)
class Task {
  Task({
    this.guid,
    this.date,
    this.$number,
    this.condition,
    this.importance,
    this.title,
    this.partner,
    this.author,
    this.responsible,
    this.producer,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'date', includeIfNull: false)
  final DateTime? date;
  @JsonKey(name: 'number', includeIfNull: false, defaultValue: '')
  final String? $number;
  @JsonKey(
      name: 'condition',
      includeIfNull: false,
      toJson: taskConditionToJson,
      fromJson: taskConditionFromJson)
  final enums.TaskCondition? condition;
  @JsonKey(
      name: 'importance',
      includeIfNull: false,
      toJson: taskImportanceToJson,
      fromJson: taskImportanceFromJson)
  final enums.TaskImportance? importance;
  @JsonKey(name: 'title', includeIfNull: false, defaultValue: '')
  final String? title;
  @JsonKey(name: 'partner', includeIfNull: false)
  final RefCatalog? partner;
  @JsonKey(name: 'author', includeIfNull: false)
  final RefCatalog? author;
  @JsonKey(name: 'responsible', includeIfNull: false)
  final RefCatalog? responsible;
  @JsonKey(name: 'producer', includeIfNull: false)
  final RefCatalog? producer;
  static const fromJsonFactory = _$TaskFromJson;
  static const toJsonFactory = _$TaskToJson;
  Map<String, dynamic> toJson() => _$TaskToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Task &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.$number, $number) ||
                const DeepCollectionEquality()
                    .equals(other.$number, $number)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)) &&
            (identical(other.importance, importance) ||
                const DeepCollectionEquality()
                    .equals(other.importance, importance)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.partner, partner) ||
                const DeepCollectionEquality()
                    .equals(other.partner, partner)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.responsible, responsible) ||
                const DeepCollectionEquality()
                    .equals(other.responsible, responsible)) &&
            (identical(other.producer, producer) ||
                const DeepCollectionEquality()
                    .equals(other.producer, producer)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash($number) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(importance) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(partner) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(responsible) ^
      const DeepCollectionEquality().hash(producer) ^
      runtimeType.hashCode;
}

extension $TaskExtension on Task {
  Task copyWith(
      {String? guid,
      DateTime? date,
      String? $number,
      enums.TaskCondition? condition,
      enums.TaskImportance? importance,
      String? title,
      RefCatalog? partner,
      RefCatalog? author,
      RefCatalog? responsible,
      RefCatalog? producer}) {
    return Task(
        guid: guid ?? this.guid,
        date: date ?? this.date,
        $number: $number ?? this.$number,
        condition: condition ?? this.condition,
        importance: importance ?? this.importance,
        title: title ?? this.title,
        partner: partner ?? this.partner,
        author: author ?? this.author,
        responsible: responsible ?? this.responsible,
        producer: producer ?? this.producer);
  }
}

@JsonSerializable(explicitToJson: true)
class TaskItem {
  TaskItem({
    this.guid,
    this.date,
    this.$number,
    this.condition,
    this.importance,
    this.title,
    this.partner,
    this.author,
    this.responsible,
    this.producer,
  });

  factory TaskItem.fromJson(Map<String, dynamic> json) =>
      _$TaskItemFromJson(json);

  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'date', includeIfNull: false)
  final DateTime? date;
  @JsonKey(name: 'number', includeIfNull: false, defaultValue: '')
  final String? $number;
  @JsonKey(
      name: 'condition',
      includeIfNull: false,
      toJson: taskItemConditionToJson,
      fromJson: taskItemConditionFromJson)
  final enums.TaskItemCondition? condition;
  @JsonKey(
      name: 'importance',
      includeIfNull: false,
      toJson: taskItemImportanceToJson,
      fromJson: taskItemImportanceFromJson)
  final enums.TaskItemImportance? importance;
  @JsonKey(name: 'title', includeIfNull: false, defaultValue: '')
  final String? title;
  @JsonKey(name: 'partner', includeIfNull: false)
  final RefCatalog? partner;
  @JsonKey(name: 'author', includeIfNull: false)
  final RefCatalog? author;
  @JsonKey(name: 'responsible', includeIfNull: false)
  final RefCatalog? responsible;
  @JsonKey(name: 'producer', includeIfNull: false)
  final RefCatalog? producer;
  static const fromJsonFactory = _$TaskItemFromJson;
  static const toJsonFactory = _$TaskItemToJson;
  Map<String, dynamic> toJson() => _$TaskItemToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TaskItem &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.$number, $number) ||
                const DeepCollectionEquality()
                    .equals(other.$number, $number)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)) &&
            (identical(other.importance, importance) ||
                const DeepCollectionEquality()
                    .equals(other.importance, importance)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.partner, partner) ||
                const DeepCollectionEquality()
                    .equals(other.partner, partner)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.responsible, responsible) ||
                const DeepCollectionEquality()
                    .equals(other.responsible, responsible)) &&
            (identical(other.producer, producer) ||
                const DeepCollectionEquality()
                    .equals(other.producer, producer)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash($number) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(importance) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(partner) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(responsible) ^
      const DeepCollectionEquality().hash(producer) ^
      runtimeType.hashCode;
}

extension $TaskItemExtension on TaskItem {
  TaskItem copyWith(
      {String? guid,
      DateTime? date,
      String? $number,
      enums.TaskItemCondition? condition,
      enums.TaskItemImportance? importance,
      String? title,
      RefCatalog? partner,
      RefCatalog? author,
      RefCatalog? responsible,
      RefCatalog? producer}) {
    return TaskItem(
        guid: guid ?? this.guid,
        date: date ?? this.date,
        $number: $number ?? this.$number,
        condition: condition ?? this.condition,
        importance: importance ?? this.importance,
        title: title ?? this.title,
        partner: partner ?? this.partner,
        author: author ?? this.author,
        responsible: responsible ?? this.responsible,
        producer: producer ?? this.producer);
  }
}

@JsonSerializable(explicitToJson: true)
class Config {
  Config({
    this.guidUser,
    this.nameUser,
  });

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);

  @JsonKey(name: 'guidUser', includeIfNull: false, defaultValue: '')
  final String? guidUser;
  @JsonKey(name: 'nameUser', includeIfNull: false, defaultValue: '')
  final String? nameUser;
  static const fromJsonFactory = _$ConfigFromJson;
  static const toJsonFactory = _$ConfigToJson;
  Map<String, dynamic> toJson() => _$ConfigToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Config &&
            (identical(other.guidUser, guidUser) ||
                const DeepCollectionEquality()
                    .equals(other.guidUser, guidUser)) &&
            (identical(other.nameUser, nameUser) ||
                const DeepCollectionEquality()
                    .equals(other.nameUser, nameUser)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(guidUser) ^
      const DeepCollectionEquality().hash(nameUser) ^
      runtimeType.hashCode;
}

extension $ConfigExtension on Config {
  Config copyWith({String? guidUser, String? nameUser}) {
    return Config(
        guidUser: guidUser ?? this.guidUser,
        nameUser: nameUser ?? this.nameUser);
  }
}

@JsonSerializable(explicitToJson: true)
class RefCatalog {
  RefCatalog({
    this.guid,
    this.type,
    this.code,
    this.name,
  });

  factory RefCatalog.fromJson(Map<String, dynamic> json) =>
      _$RefCatalogFromJson(json);

  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  final String? type;
  @JsonKey(name: 'code', includeIfNull: false, defaultValue: '')
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  static const fromJsonFactory = _$RefCatalogFromJson;
  static const toJsonFactory = _$RefCatalogToJson;
  Map<String, dynamic> toJson() => _$RefCatalogToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefCatalog &&
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

extension $RefCatalogExtension on RefCatalog {
  RefCatalog copyWith(
      {String? guid, String? type, String? code, String? name}) {
    return RefCatalog(
        guid: guid ?? this.guid,
        type: type ?? this.type,
        code: code ?? this.code,
        name: name ?? this.name);
  }
}

String? taskConditionToJson(enums.TaskCondition? taskCondition) {
  return enums.$TaskConditionMap[taskCondition];
}

enums.TaskCondition taskConditionFromJson(
  Object? taskCondition, [
  enums.TaskCondition? defaultValue,
]) {
  if (taskCondition is String) {
    return enums.$TaskConditionMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == taskCondition.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.TaskCondition.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$TaskConditionMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.TaskCondition.swaggerGeneratedUnknown;
}

List<String> taskConditionListToJson(List<enums.TaskCondition>? taskCondition) {
  if (taskCondition == null) {
    return [];
  }

  return taskCondition.map((e) => enums.$TaskConditionMap[e]!).toList();
}

List<enums.TaskCondition> taskConditionListFromJson(
  List? taskCondition, [
  List<enums.TaskCondition>? defaultValue,
]) {
  if (taskCondition == null) {
    return defaultValue ?? [];
  }

  return taskCondition.map((e) => taskConditionFromJson(e.toString())).toList();
}

String? taskImportanceToJson(enums.TaskImportance? taskImportance) {
  return enums.$TaskImportanceMap[taskImportance];
}

enums.TaskImportance taskImportanceFromJson(
  Object? taskImportance, [
  enums.TaskImportance? defaultValue,
]) {
  if (taskImportance is String) {
    return enums.$TaskImportanceMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == taskImportance.toLowerCase(),
            orElse: () => const MapEntry(
                enums.TaskImportance.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$TaskImportanceMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.TaskImportance.swaggerGeneratedUnknown;
}

List<String> taskImportanceListToJson(
    List<enums.TaskImportance>? taskImportance) {
  if (taskImportance == null) {
    return [];
  }

  return taskImportance.map((e) => enums.$TaskImportanceMap[e]!).toList();
}

List<enums.TaskImportance> taskImportanceListFromJson(
  List? taskImportance, [
  List<enums.TaskImportance>? defaultValue,
]) {
  if (taskImportance == null) {
    return defaultValue ?? [];
  }

  return taskImportance
      .map((e) => taskImportanceFromJson(e.toString()))
      .toList();
}

String? taskItemConditionToJson(enums.TaskItemCondition? taskItemCondition) {
  return enums.$TaskItemConditionMap[taskItemCondition];
}

enums.TaskItemCondition taskItemConditionFromJson(
  Object? taskItemCondition, [
  enums.TaskItemCondition? defaultValue,
]) {
  if (taskItemCondition is String) {
    return enums.$TaskItemConditionMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == taskItemCondition.toLowerCase(),
            orElse: () => const MapEntry(
                enums.TaskItemCondition.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$TaskItemConditionMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.TaskItemCondition.swaggerGeneratedUnknown;
}

List<String> taskItemConditionListToJson(
    List<enums.TaskItemCondition>? taskItemCondition) {
  if (taskItemCondition == null) {
    return [];
  }

  return taskItemCondition.map((e) => enums.$TaskItemConditionMap[e]!).toList();
}

List<enums.TaskItemCondition> taskItemConditionListFromJson(
  List? taskItemCondition, [
  List<enums.TaskItemCondition>? defaultValue,
]) {
  if (taskItemCondition == null) {
    return defaultValue ?? [];
  }

  return taskItemCondition
      .map((e) => taskItemConditionFromJson(e.toString()))
      .toList();
}

String? taskItemImportanceToJson(enums.TaskItemImportance? taskItemImportance) {
  return enums.$TaskItemImportanceMap[taskItemImportance];
}

enums.TaskItemImportance taskItemImportanceFromJson(
  Object? taskItemImportance, [
  enums.TaskItemImportance? defaultValue,
]) {
  if (taskItemImportance is String) {
    return enums.$TaskItemImportanceMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == taskItemImportance.toLowerCase(),
            orElse: () => const MapEntry(
                enums.TaskItemImportance.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$TaskItemImportanceMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.TaskItemImportance.swaggerGeneratedUnknown;
}

List<String> taskItemImportanceListToJson(
    List<enums.TaskItemImportance>? taskItemImportance) {
  if (taskItemImportance == null) {
    return [];
  }

  return taskItemImportance
      .map((e) => enums.$TaskItemImportanceMap[e]!)
      .toList();
}

List<enums.TaskItemImportance> taskItemImportanceListFromJson(
  List? taskItemImportance, [
  List<enums.TaskItemImportance>? defaultValue,
]) {
  if (taskItemImportance == null) {
    return defaultValue ?? [];
  }

  return taskItemImportance
      .map((e) => taskItemImportanceFromJson(e.toString()))
      .toList();
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
