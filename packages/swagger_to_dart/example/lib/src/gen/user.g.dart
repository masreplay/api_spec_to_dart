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
  createdAt: DateTime.parse(json['created_at'] as String),
  location:
      json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'username': instance.username,
  'email': instance.email,
  'full_name': instance.fullName,
  'id': instance.id,
  'is_active': instance.isActive,
  'created_at': instance.createdAt.toIso8601String(),
  'location': instance.location,
  'tags': instance.tags,
};
