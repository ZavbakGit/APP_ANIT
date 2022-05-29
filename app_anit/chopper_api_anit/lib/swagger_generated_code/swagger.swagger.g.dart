// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponsePingServer _$ResponsePingServerFromJson(Map<String, dynamic> json) =>
    ResponsePingServer(
      dataTime: DateTime.parse(json['data_time'] as String),
      currentUser:
          RefToCatalog.fromJson(json['current_user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponsePingServerToJson(ResponsePingServer instance) =>
    <String, dynamic>{
      'data_time': instance.dataTime.toIso8601String(),
      'current_user': instance.currentUser.toJson(),
    };

RefToCatalog _$RefToCatalogFromJson(Map<String, dynamic> json) => RefToCatalog(
      guid: json['guid'] as String? ?? '',
      type: json['type'] as String? ?? '',
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$RefToCatalogToJson(RefToCatalog instance) {
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
