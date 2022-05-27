// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      code: json['code'] as int?,
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$ErrorToJson(Error instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('description', instance.description);
  return val;
}

User _$UserFromJson(Map<String, dynamic> json) => User(
      guid: json['guid'] as String? ?? '',
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('guid', instance.guid);
  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  return val;
}

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
      guid: json['guid'] as String? ?? '',
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$EmployeeToJson(Employee instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('guid', instance.guid);
  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  return val;
}

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      guid: json['guid'] as String? ?? '',
      version: json['version'] as String? ?? '',
      $number: json['number'] as String? ?? '',
      date: json['date'] as String? ?? '',
      address: json['address'] as String? ?? '',
      assemblyStartTime: json['assembly_start_time'] == null
          ? null
          : DateTime.parse(json['assembly_start_time'] as String),
      assemblyEndTime: json['assembly_end_time'] == null
          ? null
          : DateTime.parse(json['assembly_end_time'] as String),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OrderToJson(Order instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('guid', instance.guid);
  writeNotNull('version', instance.version);
  writeNotNull('number', instance.$number);
  writeNotNull('date', instance.date);
  writeNotNull('address', instance.address);
  writeNotNull(
      'assembly_start_time', instance.assemblyStartTime?.toIso8601String());
  writeNotNull(
      'assembly_end_time', instance.assemblyEndTime?.toIso8601String());
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  return val;
}

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      title: json['title'] as String? ?? '',
      quantity: json['quantity'] as String? ?? '',
      specifics: (json['specifics'] as List<dynamic>?)
              ?.map((e) => Specific.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('quantity', instance.quantity);
  writeNotNull(
      'specifics', instance.specifics?.map((e) => e.toJson()).toList());
  return val;
}

Specific _$SpecificFromJson(Map<String, dynamic> json) => Specific(
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$SpecificToJson(Specific instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  return val;
}
