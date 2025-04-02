// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsersPublic _$UsersPublicFromJson(Map<String, dynamic> json) => _UsersPublic(
  data:
      (json['data'] as List<dynamic>)
          .map((e) => UserPublic.fromJson(e as Map<String, dynamic>))
          .toList(),
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$UsersPublicToJson(_UsersPublic instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'count': instance.count,
    };
