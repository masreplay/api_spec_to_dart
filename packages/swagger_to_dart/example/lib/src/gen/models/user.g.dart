// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      username: json['username'] as String,
      email: json['email'] as String,
      fullName: json['full_name'] as String?,
      id: (json['id'] as num).toInt(),
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      if (instance.fullName case final value?) 'full_name': value,
      'id': instance.id,
      'is_active': instance.isActive,
      if (instance.createdAt?.toIso8601String() case final value?)
        'created_at': value,
      if (instance.location?.toJson() case final value?) 'location': value,
      'tags': instance.tags,
    };
