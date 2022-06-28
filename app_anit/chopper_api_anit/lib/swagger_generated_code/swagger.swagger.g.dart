// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
