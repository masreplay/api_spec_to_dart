// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_pagination_response_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponsePaginationResponseItemResponse
_$BaseResponsePaginationResponseItemResponseFromJson(
  Map<String, dynamic> json,
) => _BaseResponsePaginationResponseItemResponse(
  data:
      json['data'] == null
          ? const PaginationResponseItemResponse()
          : PaginationResponseItemResponse.fromJson(
            json['data'] as Map<String, dynamic>,
          ),
  message: json['message'] as String,
  code: (json['code'] as num).toInt(),
);

Map<String, dynamic> _$BaseResponsePaginationResponseItemResponseToJson(
  _BaseResponsePaginationResponseItemResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};
