// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListOrderResponseImpl
    _$$BaseResponseListOrderResponseImplFromJson(Map<String, dynamic> json) =>
        _$BaseResponseListOrderResponseImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) => OrderResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListOrderResponseImplToJson(
        _$BaseResponseListOrderResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
