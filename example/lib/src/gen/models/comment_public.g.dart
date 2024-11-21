// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentPublicImpl _$$CommentPublicImplFromJson(Map<String, dynamic> json) =>
    _$CommentPublicImpl(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      createdAtFormatted: json['created_at_formatted'] as String,
      user: CommentUserPublic.fromJson(json['user'] as Map<String, dynamic>),
      parent: json['parent'] == null
          ? null
          : CommentPublic.fromJson(json['parent'] as Map<String, dynamic>),
      replies: (json['replies'] as List<dynamic>)
          .map((e) => CommentPublic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CommentPublicImplToJson(_$CommentPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'created_at': instance.createdAt.toIso8601String(),
      'created_at_formatted': instance.createdAtFormatted,
      'user': instance.user,
      'parent': instance.parent,
      'replies': instance.replies,
    };
