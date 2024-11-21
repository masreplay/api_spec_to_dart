// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_comment_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseCommentPublicImpl _$$BaseResponseCommentPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseCommentPublicImpl(
      message: json['message'] as String?,
      data: CommentPublic.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BaseResponseCommentPublicImplToJson(
        _$BaseResponseCommentPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
