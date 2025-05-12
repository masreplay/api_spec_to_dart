// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemRequestBody _$ItemRequestBodyFromJson(Map<String, dynamic> json) =>
    _ItemRequestBody(
      name: json['name'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toDouble(),
      tax: (json['tax'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ItemRequestBodyToJson(_ItemRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'tax': instance.tax,
    };
