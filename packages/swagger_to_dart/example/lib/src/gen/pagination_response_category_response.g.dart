// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginationResponseCategoryResponse
_$PaginationResponseCategoryResponseFromJson(Map<String, dynamic> json) =>
    _PaginationResponseCategoryResponse(
      items:
          (json['items'] as List<dynamic>)
              .map((e) => CategoryResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationResponseCategoryResponseToJson(
  _PaginationResponseCategoryResponse instance,
) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'page': instance.page,
  'perPage': instance.perPage,
  'totalPages': instance.totalPages,
};
