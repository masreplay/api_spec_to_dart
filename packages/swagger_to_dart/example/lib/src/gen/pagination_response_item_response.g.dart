// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginationResponseItemResponse _$PaginationResponseItemResponseFromJson(
  Map<String, dynamic> json,
) => _PaginationResponseItemResponse(
  items:
      (json['items'] as List<dynamic>)
          .map(
            (e) => AppGenericRouterItemResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  perPage: (json['perPage'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$PaginationResponseItemResponseToJson(
  _PaginationResponseItemResponse instance,
) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'page': instance.page,
  'perPage': instance.perPage,
  'totalPages': instance.totalPages,
};
