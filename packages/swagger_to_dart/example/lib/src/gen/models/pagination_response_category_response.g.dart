// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginationResponseCategoryResponse<T>
_$PaginationResponseCategoryResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _PaginationResponseCategoryResponse<T>(
  items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  perPage: (json['per_page'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic> _$PaginationResponseCategoryResponseToJson<T>(
  _PaginationResponseCategoryResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'items': instance.items.map(toJsonT).toList(),
  'total': instance.total,
  'page': instance.page,
  'per_page': instance.perPage,
  'total_pages': instance.totalPages,
};
