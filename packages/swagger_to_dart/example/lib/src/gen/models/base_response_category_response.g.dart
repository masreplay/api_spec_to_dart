// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponseCategoryResponse _$BaseResponseCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    _BaseResponseCategoryResponse(
      data: CategoryResponse.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$BaseResponseCategoryResponseToJson(
        _BaseResponseCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'message': instance.message,
      'code': instance.code,
    };
