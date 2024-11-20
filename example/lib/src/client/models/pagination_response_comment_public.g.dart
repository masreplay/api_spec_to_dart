// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response_comment_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationResponseCommentPublicImpl
    _$$PaginationResponseCommentPublicImplFromJson(Map<String, dynamic> json) =>
        _$PaginationResponseCommentPublicImpl(
          page: (json['page'] as num).toInt(),
          perPage: (json['per_page'] as num).toInt(),
          total: (json['total'] as num).toInt(),
          data: (json['data'] as List<dynamic>)
              .map((e) => CommentPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$PaginationResponseCommentPublicImplToJson(
        _$PaginationResponseCommentPublicImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'data': instance.data,
    };
