// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponseListItemResponse _$BaseResponseListItemResponseFromJson(
  Map<String, dynamic> json,
) => _BaseResponseListItemResponse(
  data:
      (json['data'] as List<dynamic>)
          .map(
            (e) => AppRouterGenericRouterItemResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  message: json['message'] as String,
  code: (json['code'] as num).toInt(),
);

Map<String, dynamic> _$BaseResponseListItemResponseToJson(
  _BaseResponseListItemResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'message': instance.message,
  'code': instance.code,
};
