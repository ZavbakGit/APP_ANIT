// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      guid: json['guid'] as String? ?? '',
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      dateControl: json['date_control'] == null
          ? null
          : DateTime.parse(json['date_control'] as String),
      number: json['number'] as String? ?? '',
      condition: json['condition'] == null
          ? null
          : RefEnum.fromJson(json['condition'] as Map<String, dynamic>),
      importance: json['importance'] == null
          ? null
          : RefEnum.fromJson(json['importance'] as Map<String, dynamic>),
      title: json['title'] as String? ?? '',
      partner: json['partner'] == null
          ? null
          : RefCatalog.fromJson(json['partner'] as Map<String, dynamic>),
      author: json['author'] == null
          ? null
          : RefCatalog.fromJson(json['author'] as Map<String, dynamic>),
      responsible: json['responsible'] == null
          ? null
          : RefCatalog.fromJson(json['responsible'] as Map<String, dynamic>),
      producer: json['producer'] == null
          ? null
          : RefCatalog.fromJson(json['producer'] as Map<String, dynamic>),
      controllers: (json['controllers'] as List<dynamic>?)
              ?.map((e) => RefCatalog.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      assistants: (json['assistants'] as List<dynamic>?)
              ?.map((e) => RefCatalog.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TaskToJson(Task instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('guid', instance.guid);
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('date_control', instance.dateControl?.toIso8601String());
  writeNotNull('number', instance.number);
  writeNotNull('condition', instance.condition?.toJson());
  writeNotNull('importance', instance.importance?.toJson());
  writeNotNull('title', instance.title);
  writeNotNull('partner', instance.partner?.toJson());
  writeNotNull('author', instance.author?.toJson());
  writeNotNull('responsible', instance.responsible?.toJson());
  writeNotNull('producer', instance.producer?.toJson());
  writeNotNull(
      'controllers', instance.controllers?.map((e) => e.toJson()).toList());
  writeNotNull(
      'assistants', instance.assistants?.map((e) => e.toJson()).toList());
  return val;
}

TaskItem _$TaskItemFromJson(Map<String, dynamic> json) => TaskItem(
      guid: json['guid'] as String? ?? '',
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      number: json['number'] as String? ?? '',
      title: json['title'] as String? ?? '',
      condition: json['condition'] == null
          ? null
          : RefEnum.fromJson(json['condition'] as Map<String, dynamic>),
      importance: json['importance'] == null
          ? null
          : RefEnum.fromJson(json['importance'] as Map<String, dynamic>),
      partner: json['partner'] == null
          ? null
          : RefCatalog.fromJson(json['partner'] as Map<String, dynamic>),
      author: json['author'] == null
          ? null
          : RefCatalog.fromJson(json['author'] as Map<String, dynamic>),
      responsible: json['responsible'] == null
          ? null
          : RefCatalog.fromJson(json['responsible'] as Map<String, dynamic>),
      producer: json['producer'] == null
          ? null
          : RefCatalog.fromJson(json['producer'] as Map<String, dynamic>),
      isControllers: json['is_controllers'] as bool?,
      isAssistants: json['is_assistants'] as bool?,
      isResponsible: json['is_responsible'] as bool?,
    );

Map<String, dynamic> _$TaskItemToJson(TaskItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('guid', instance.guid);
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('number', instance.number);
  writeNotNull('title', instance.title);
  writeNotNull('condition', instance.condition?.toJson());
  writeNotNull('importance', instance.importance?.toJson());
  writeNotNull('partner', instance.partner?.toJson());
  writeNotNull('author', instance.author?.toJson());
  writeNotNull('responsible', instance.responsible?.toJson());
  writeNotNull('producer', instance.producer?.toJson());
  writeNotNull('is_controllers', instance.isControllers);
  writeNotNull('is_assistants', instance.isAssistants);
  writeNotNull('is_responsible', instance.isResponsible);
  return val;
}

RemoteConfig _$RemoteConfigFromJson(Map<String, dynamic> json) => RemoteConfig(
      user: json['user'] == null
          ? null
          : RefCatalog.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RemoteConfigToJson(RemoteConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user', instance.user?.toJson());
  return val;
}

RefEnum _$RefEnumFromJson(Map<String, dynamic> json) => RefEnum(
      type: json['type'] as String? ?? '',
      index: json['index'] as int?,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$RefEnumToJson(RefEnum instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('index', instance.index);
  writeNotNull('name', instance.name);
  return val;
}

RefCatalog _$RefCatalogFromJson(Map<String, dynamic> json) => RefCatalog(
      guid: json['guid'] as String? ?? '',
      type: json['type'] as String? ?? '',
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$RefCatalogToJson(RefCatalog instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('guid', instance.guid);
  writeNotNull('type', instance.type);
  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  return val;
}

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      guid: json['guid'] as String? ?? '',
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      number: json['number'] as String? ?? '',
      datestart: json['datestart'] == null
          ? null
          : DateTime.parse(json['datestart'] as String),
      datefinish: json['datefinish'] == null
          ? null
          : DateTime.parse(json['datefinish'] as String),
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      produser: json['produser'] == null
          ? null
          : RefCatalog.fromJson(json['produser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventToJson(Event instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('guid', instance.guid);
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('number', instance.number);
  writeNotNull('datestart', instance.datestart?.toIso8601String());
  writeNotNull('datefinish', instance.datefinish?.toIso8601String());
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('produser', instance.produser?.toJson());
  return val;
}
