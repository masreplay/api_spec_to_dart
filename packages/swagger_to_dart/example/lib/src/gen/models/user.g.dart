// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      username: json['username'] as String,
      email: json['email'] as String,
      fullName: json['fullName'] as String?,
      id: (json['id'] as num).toInt(),
      isActive: json['isActive'] as bool,
      createdAt: json['createdAt'] as String,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'fullName': instance.fullName,
      'id': instance.id,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt,
      'location': instance.location,
      'tags': instance.tags,
    };
