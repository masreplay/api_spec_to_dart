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
      perPage: (json['per_page'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationResponseCategoryResponseToJson(
  _PaginationResponseCategoryResponse instance,
) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'page': instance.page,
  'per_page': instance.perPage,
  'total_pages': instance.totalPages,
};
