// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_user_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentUserPublicImpl _$$CommentUserPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentUserPublicImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$CommentUserPublicImplToJson(
        _$CommentUserPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
    };
