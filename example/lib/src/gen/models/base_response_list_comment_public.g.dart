// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_comment_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListCommentPublicImpl
    _$$BaseResponseListCommentPublicImplFromJson(Map<String, dynamic> json) =>
        _$BaseResponseListCommentPublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) => CommentPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListCommentPublicImplToJson(
        _$BaseResponseListCommentPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
