// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;

part 'swagger.swagger.chopper.dart';
part 'swagger.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swagger extends ChopperService {
  static Swagger create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Swagger(client);
    }

    final newClient = ChopperClient(
        services: [_$Swagger()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$Swagger(newClient);
  }

  ///
  Future<chopper.Response> taskPost({required Task? body}) {
    return _taskPost(body: body);
  }

  ///
  @Post(
    path: '/task',
    optionalBody: true,
  )
  Future<chopper.Response> _taskPost({@Body() required Task? body});

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
  Future<chopper.Response<Task>> taskNewGet() {
    generatedMapping.putIfAbsent(Task, () => Task.fromJsonFactory);

    return _taskNewGet();
  }

  ///
  @Get(path: '/task_new')
  Future<chopper.Response<Task>> _taskNewGet();

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
  ///@param token Строка поиска
  ///@param deviceId Строка поиска
  Future<chopper.Response<RemoteConfig>> loginGet({
    String? token,
    String? deviceId,
  }) {
    generatedMapping.putIfAbsent(
        RemoteConfig, () => RemoteConfig.fromJsonFactory);

    return _loginGet(token: token, deviceId: deviceId);
  }

  ///Login
  ///@param token Строка поиска
  ///@param deviceId Строка поиска
  @Get(path: '/login')
  Future<chopper.Response<RemoteConfig>> _loginGet({
    @Query('token') String? token,
    @Query('deviceId') String? deviceId,
  });

  ///
  ///@param search Строка поиска
  ///@param count Количество
  ///@param offset Cмещение
  ///@param type Тип справочника
  Future<chopper.Response<List<RefCatalog>>> catalogsTypeSearchGet({
    required String? search,
    required num? count,
    required num? offset,
    required String? type,
  }) {
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
  Future<chopper.Response<List<RefCatalog>>> _catalogsTypeSearchGet({
    @Query('search') required String? search,
    @Query('count') required num? count,
    @Query('offset') required num? offset,
    @Path('type') required String? type,
  });

  ///
  ///@param name Имя перечисления
  Future<chopper.Response<List<RefEnum>>> enumNameGet({required String? name}) {
    generatedMapping.putIfAbsent(RefEnum, () => RefEnum.fromJsonFactory);

    return _enumNameGet(name: name);
  }

  ///
  ///@param name Имя перечисления
  @Get(path: '/enum/{name}')
  Future<chopper.Response<List<RefEnum>>> _enumNameGet(
      {@Path('name') required String? name});

  ///
  ///@param date События на дату
  Future<chopper.Response<List<Event>>> eventsGet({required String? date}) {
    generatedMapping.putIfAbsent(Event, () => Event.fromJsonFactory);

    return _eventsGet(date: date);
  }

  ///
  ///@param date События на дату
  @Get(path: '/events')
  Future<chopper.Response<List<Event>>> _eventsGet(
      {@Query('date') required String? date});

  ///
  ///@param guid
  Future<chopper.Response<Event>> eventGuidGet({required String? guid}) {
    generatedMapping.putIfAbsent(Event, () => Event.fromJsonFactory);

    return _eventGuidGet(guid: guid);
  }

  ///
  ///@param guid
  @Get(path: '/event/{guid}')
  Future<chopper.Response<Event>> _eventGuidGet(
      {@Path('guid') required String? guid});

  ///
  Future<chopper.Response> eventPost({required Event? body}) {
    return _eventPost(body: body);
  }

  ///
  @Post(
    path: '/event',
    optionalBody: true,
  )
  Future<chopper.Response> _eventPost({@Body() required Event? body});

  ///
  ///@param date Дата начала события
  Future<chopper.Response<Event>> eventNewGet({required String? date}) {
    generatedMapping.putIfAbsent(Event, () => Event.fromJsonFactory);

    return _eventNewGet(date: date);
  }

  ///
  ///@param date Дата начала события
  @Get(path: '/event_new')
  Future<chopper.Response<Event>> _eventNewGet(
      {@Query('date') required String? date});
}

@JsonSerializable(explicitToJson: true)
class Task {
  Task({
    this.guid,
    this.date,
    this.dateControl,
    this.number,
    this.condition,
    this.importance,
    this.title,
    this.partner,
    this.author,
    this.responsible,
    this.producer,
    this.controllers,
    this.assistants,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'date', includeIfNull: false)
  final DateTime? date;
  @JsonKey(name: 'date_control', includeIfNull: false)
  final DateTime? dateControl;
  @JsonKey(name: 'number', includeIfNull: false, defaultValue: '')
  final String? number;
  @JsonKey(name: 'condition', includeIfNull: false)
  final RefEnum? condition;
  @JsonKey(name: 'importance', includeIfNull: false)
  final RefEnum? importance;
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
  @JsonKey(
      name: 'controllers', includeIfNull: false, defaultValue: <RefCatalog>[])
  final List<RefCatalog>? controllers;
  @JsonKey(
      name: 'assistants', includeIfNull: false, defaultValue: <RefCatalog>[])
  final List<RefCatalog>? assistants;
  static const fromJsonFactory = _$TaskFromJson;
  static const toJsonFactory = _$TaskToJson;
  Map<String, dynamic> toJson() => _$TaskToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Task &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.dateControl, dateControl) ||
                const DeepCollectionEquality()
                    .equals(other.dateControl, dateControl)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
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
                    .equals(other.producer, producer)) &&
            (identical(other.controllers, controllers) ||
                const DeepCollectionEquality()
                    .equals(other.controllers, controllers)) &&
            (identical(other.assistants, assistants) ||
                const DeepCollectionEquality()
                    .equals(other.assistants, assistants)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(dateControl) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(importance) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(partner) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(responsible) ^
      const DeepCollectionEquality().hash(producer) ^
      const DeepCollectionEquality().hash(controllers) ^
      const DeepCollectionEquality().hash(assistants) ^
      runtimeType.hashCode;
}

extension $TaskExtension on Task {
  Task copyWith(
      {String? guid,
      DateTime? date,
      DateTime? dateControl,
      String? number,
      RefEnum? condition,
      RefEnum? importance,
      String? title,
      RefCatalog? partner,
      RefCatalog? author,
      RefCatalog? responsible,
      RefCatalog? producer,
      List<RefCatalog>? controllers,
      List<RefCatalog>? assistants}) {
    return Task(
        guid: guid ?? this.guid,
        date: date ?? this.date,
        dateControl: dateControl ?? this.dateControl,
        number: number ?? this.number,
        condition: condition ?? this.condition,
        importance: importance ?? this.importance,
        title: title ?? this.title,
        partner: partner ?? this.partner,
        author: author ?? this.author,
        responsible: responsible ?? this.responsible,
        producer: producer ?? this.producer,
        controllers: controllers ?? this.controllers,
        assistants: assistants ?? this.assistants);
  }

  Task copyWithWrapped(
      {Wrapped<String?>? guid,
      Wrapped<DateTime?>? date,
      Wrapped<DateTime?>? dateControl,
      Wrapped<String?>? number,
      Wrapped<RefEnum?>? condition,
      Wrapped<RefEnum?>? importance,
      Wrapped<String?>? title,
      Wrapped<RefCatalog?>? partner,
      Wrapped<RefCatalog?>? author,
      Wrapped<RefCatalog?>? responsible,
      Wrapped<RefCatalog?>? producer,
      Wrapped<List<RefCatalog>?>? controllers,
      Wrapped<List<RefCatalog>?>? assistants}) {
    return Task(
        guid: (guid != null ? guid.value : this.guid),
        date: (date != null ? date.value : this.date),
        dateControl:
            (dateControl != null ? dateControl.value : this.dateControl),
        number: (number != null ? number.value : this.number),
        condition: (condition != null ? condition.value : this.condition),
        importance: (importance != null ? importance.value : this.importance),
        title: (title != null ? title.value : this.title),
        partner: (partner != null ? partner.value : this.partner),
        author: (author != null ? author.value : this.author),
        responsible:
            (responsible != null ? responsible.value : this.responsible),
        producer: (producer != null ? producer.value : this.producer),
        controllers:
            (controllers != null ? controllers.value : this.controllers),
        assistants: (assistants != null ? assistants.value : this.assistants));
  }
}

@JsonSerializable(explicitToJson: true)
class TaskItem {
  TaskItem({
    this.guid,
    this.date,
    this.number,
    this.title,
    this.condition,
    this.importance,
    this.partner,
    this.author,
    this.responsible,
    this.producer,
    this.isControllers,
    this.isAssistants,
    this.isResponsible,
  });

  factory TaskItem.fromJson(Map<String, dynamic> json) =>
      _$TaskItemFromJson(json);

  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'date', includeIfNull: false)
  final DateTime? date;
  @JsonKey(name: 'number', includeIfNull: false, defaultValue: '')
  final String? number;
  @JsonKey(name: 'title', includeIfNull: false, defaultValue: '')
  final String? title;
  @JsonKey(name: 'condition', includeIfNull: false)
  final RefEnum? condition;
  @JsonKey(name: 'importance', includeIfNull: false)
  final RefEnum? importance;
  @JsonKey(name: 'partner', includeIfNull: false)
  final RefCatalog? partner;
  @JsonKey(name: 'author', includeIfNull: false)
  final RefCatalog? author;
  @JsonKey(name: 'responsible', includeIfNull: false)
  final RefCatalog? responsible;
  @JsonKey(name: 'producer', includeIfNull: false)
  final RefCatalog? producer;
  @JsonKey(name: 'is_controllers', includeIfNull: false)
  final bool? isControllers;
  @JsonKey(name: 'is_assistants', includeIfNull: false)
  final bool? isAssistants;
  @JsonKey(name: 'is_responsible', includeIfNull: false)
  final bool? isResponsible;
  static const fromJsonFactory = _$TaskItemFromJson;
  static const toJsonFactory = _$TaskItemToJson;
  Map<String, dynamic> toJson() => _$TaskItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TaskItem &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)) &&
            (identical(other.importance, importance) ||
                const DeepCollectionEquality()
                    .equals(other.importance, importance)) &&
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
                    .equals(other.producer, producer)) &&
            (identical(other.isControllers, isControllers) ||
                const DeepCollectionEquality()
                    .equals(other.isControllers, isControllers)) &&
            (identical(other.isAssistants, isAssistants) ||
                const DeepCollectionEquality()
                    .equals(other.isAssistants, isAssistants)) &&
            (identical(other.isResponsible, isResponsible) ||
                const DeepCollectionEquality()
                    .equals(other.isResponsible, isResponsible)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(importance) ^
      const DeepCollectionEquality().hash(partner) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(responsible) ^
      const DeepCollectionEquality().hash(producer) ^
      const DeepCollectionEquality().hash(isControllers) ^
      const DeepCollectionEquality().hash(isAssistants) ^
      const DeepCollectionEquality().hash(isResponsible) ^
      runtimeType.hashCode;
}

extension $TaskItemExtension on TaskItem {
  TaskItem copyWith(
      {String? guid,
      DateTime? date,
      String? number,
      String? title,
      RefEnum? condition,
      RefEnum? importance,
      RefCatalog? partner,
      RefCatalog? author,
      RefCatalog? responsible,
      RefCatalog? producer,
      bool? isControllers,
      bool? isAssistants,
      bool? isResponsible}) {
    return TaskItem(
        guid: guid ?? this.guid,
        date: date ?? this.date,
        number: number ?? this.number,
        title: title ?? this.title,
        condition: condition ?? this.condition,
        importance: importance ?? this.importance,
        partner: partner ?? this.partner,
        author: author ?? this.author,
        responsible: responsible ?? this.responsible,
        producer: producer ?? this.producer,
        isControllers: isControllers ?? this.isControllers,
        isAssistants: isAssistants ?? this.isAssistants,
        isResponsible: isResponsible ?? this.isResponsible);
  }

  TaskItem copyWithWrapped(
      {Wrapped<String?>? guid,
      Wrapped<DateTime?>? date,
      Wrapped<String?>? number,
      Wrapped<String?>? title,
      Wrapped<RefEnum?>? condition,
      Wrapped<RefEnum?>? importance,
      Wrapped<RefCatalog?>? partner,
      Wrapped<RefCatalog?>? author,
      Wrapped<RefCatalog?>? responsible,
      Wrapped<RefCatalog?>? producer,
      Wrapped<bool?>? isControllers,
      Wrapped<bool?>? isAssistants,
      Wrapped<bool?>? isResponsible}) {
    return TaskItem(
        guid: (guid != null ? guid.value : this.guid),
        date: (date != null ? date.value : this.date),
        number: (number != null ? number.value : this.number),
        title: (title != null ? title.value : this.title),
        condition: (condition != null ? condition.value : this.condition),
        importance: (importance != null ? importance.value : this.importance),
        partner: (partner != null ? partner.value : this.partner),
        author: (author != null ? author.value : this.author),
        responsible:
            (responsible != null ? responsible.value : this.responsible),
        producer: (producer != null ? producer.value : this.producer),
        isControllers:
            (isControllers != null ? isControllers.value : this.isControllers),
        isAssistants:
            (isAssistants != null ? isAssistants.value : this.isAssistants),
        isResponsible:
            (isResponsible != null ? isResponsible.value : this.isResponsible));
  }
}

@JsonSerializable(explicitToJson: true)
class RemoteConfig {
  RemoteConfig({
    this.user,
  });

  factory RemoteConfig.fromJson(Map<String, dynamic> json) =>
      _$RemoteConfigFromJson(json);

  @JsonKey(name: 'user', includeIfNull: false)
  final RefCatalog? user;
  static const fromJsonFactory = _$RemoteConfigFromJson;
  static const toJsonFactory = _$RemoteConfigToJson;
  Map<String, dynamic> toJson() => _$RemoteConfigToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoteConfig &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $RemoteConfigExtension on RemoteConfig {
  RemoteConfig copyWith({RefCatalog? user}) {
    return RemoteConfig(user: user ?? this.user);
  }

  RemoteConfig copyWithWrapped({Wrapped<RefCatalog?>? user}) {
    return RemoteConfig(user: (user != null ? user.value : this.user));
  }
}

@JsonSerializable(explicitToJson: true)
class RefEnum {
  RefEnum({
    this.type,
    this.index,
    this.name,
  });

  factory RefEnum.fromJson(Map<String, dynamic> json) =>
      _$RefEnumFromJson(json);

  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  final String? type;
  @JsonKey(name: 'index', includeIfNull: false)
  final int? index;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  static const fromJsonFactory = _$RefEnumFromJson;
  static const toJsonFactory = _$RefEnumToJson;
  Map<String, dynamic> toJson() => _$RefEnumToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefEnum &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RefEnumExtension on RefEnum {
  RefEnum copyWith({String? type, int? index, String? name}) {
    return RefEnum(
        type: type ?? this.type,
        index: index ?? this.index,
        name: name ?? this.name);
  }

  RefEnum copyWithWrapped(
      {Wrapped<String?>? type, Wrapped<int?>? index, Wrapped<String?>? name}) {
    return RefEnum(
        type: (type != null ? type.value : this.type),
        index: (index != null ? index.value : this.index),
        name: (name != null ? name.value : this.name));
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
  String toString() => jsonEncode(this);

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

  RefCatalog copyWithWrapped(
      {Wrapped<String?>? guid,
      Wrapped<String?>? type,
      Wrapped<String?>? code,
      Wrapped<String?>? name}) {
    return RefCatalog(
        guid: (guid != null ? guid.value : this.guid),
        type: (type != null ? type.value : this.type),
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class Event {
  Event({
    this.guid,
    this.date,
    this.number,
    this.datestart,
    this.datefinish,
    this.title,
    this.description,
    this.producer,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'date', includeIfNull: false)
  final DateTime? date;
  @JsonKey(name: 'number', includeIfNull: false, defaultValue: '')
  final String? number;
  @JsonKey(name: 'datestart', includeIfNull: false)
  final DateTime? datestart;
  @JsonKey(name: 'datefinish', includeIfNull: false)
  final DateTime? datefinish;
  @JsonKey(name: 'title', includeIfNull: false, defaultValue: '')
  final String? title;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'producer', includeIfNull: false)
  final RefCatalog? producer;
  static const fromJsonFactory = _$EventFromJson;
  static const toJsonFactory = _$EventToJson;
  Map<String, dynamic> toJson() => _$EventToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Event &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.datestart, datestart) ||
                const DeepCollectionEquality()
                    .equals(other.datestart, datestart)) &&
            (identical(other.datefinish, datefinish) ||
                const DeepCollectionEquality()
                    .equals(other.datefinish, datefinish)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.producer, producer) ||
                const DeepCollectionEquality()
                    .equals(other.producer, producer)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(datestart) ^
      const DeepCollectionEquality().hash(datefinish) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(producer) ^
      runtimeType.hashCode;
}

extension $EventExtension on Event {
  Event copyWith(
      {String? guid,
      DateTime? date,
      String? number,
      DateTime? datestart,
      DateTime? datefinish,
      String? title,
      String? description,
      RefCatalog? producer}) {
    return Event(
        guid: guid ?? this.guid,
        date: date ?? this.date,
        number: number ?? this.number,
        datestart: datestart ?? this.datestart,
        datefinish: datefinish ?? this.datefinish,
        title: title ?? this.title,
        description: description ?? this.description,
        producer: producer ?? this.producer);
  }

  Event copyWithWrapped(
      {Wrapped<String?>? guid,
      Wrapped<DateTime?>? date,
      Wrapped<String?>? number,
      Wrapped<DateTime?>? datestart,
      Wrapped<DateTime?>? datefinish,
      Wrapped<String?>? title,
      Wrapped<String?>? description,
      Wrapped<RefCatalog?>? producer}) {
    return Event(
        guid: (guid != null ? guid.value : this.guid),
        date: (date != null ? date.value : this.date),
        number: (number != null ? number.value : this.number),
        datestart: (datestart != null ? datestart.value : this.datestart),
        datefinish: (datefinish != null ? datefinish.value : this.datefinish),
        title: (title != null ? title.value : this.title),
        description:
            (description != null ? description.value : this.description),
        producer: (producer != null ? producer.value : this.producer));
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
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
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

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
