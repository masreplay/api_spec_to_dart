// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _BaseResponse<T>(
      data: CategoryResponse.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      code: (json['code'] as num).toInt(),
    );

const _$BaseResponseFieldMap = <String, String>{
  'data': 'data',
  'message': 'message',
  'code': 'code',
};

Map<String, dynamic> _$BaseResponseToJson<T>(
  _BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'message': instance.message,
      'code': instance.code,
    };
