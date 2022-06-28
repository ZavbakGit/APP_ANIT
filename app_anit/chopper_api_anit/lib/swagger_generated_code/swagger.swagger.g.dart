// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskItem _$TaskItemFromJson(Map<String, dynamic> json) => TaskItem(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      condition: taskItemConditionFromJson(json['condition']),
      importance: taskItemImportanceFromJson(json['importance']),
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
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$TaskItemToJson(TaskItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('condition', taskItemConditionToJson(instance.condition));
  writeNotNull('importance', taskItemImportanceToJson(instance.importance));
  writeNotNull('partner', instance.partner?.toJson());
  writeNotNull('author', instance.author?.toJson());
  writeNotNull('responsible', instance.responsible?.toJson());
  writeNotNull('producer', instance.producer?.toJson());
  writeNotNull('title', instance.title);
  return val;
}

Config _$ConfigFromJson(Map<String, dynamic> json) => Config(
      guidUser: json['guidUser'] as String? ?? '',
      nameUser: json['nameUser'] as String? ?? '',
    );

Map<String, dynamic> _$ConfigToJson(Config instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('guidUser', instance.guidUser);
  writeNotNull('nameUser', instance.nameUser);
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
