// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponseItemResponse _$BaseResponseItemResponseFromJson(
  Map<String, dynamic> json,
) => _BaseResponseItemResponse(
  data:
      json['data'] == null
          ? const AppRouterGenericRouterItemResponse()
          : AppRouterGenericRouterItemResponse.fromJson(
            json['data'] as Map<String, dynamic>,
          ),
  message: json['message'] as String,
  code: (json['code'] as num).toInt(),
);

Map<String, dynamic> _$BaseResponseItemResponseToJson(
  _BaseResponseItemResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};
