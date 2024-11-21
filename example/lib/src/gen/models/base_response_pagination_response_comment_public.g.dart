// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_pagination_response_comment_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponsePaginationResponseCommentPublicImpl
    _$$BaseResponsePaginationResponseCommentPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponsePaginationResponseCommentPublicImpl(
          message: json['message'] as String?,
          data: PaginationResponseCommentPublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponsePaginationResponseCommentPublicImplToJson(
        _$BaseResponsePaginationResponseCommentPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
