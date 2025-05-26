// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _BaseResponse<T>(
  data: fromJsonT(json['data']),
  message: json['message'] as String,
  code: (json['code'] as num).toInt(),
);

Map<String, dynamic> _$BaseResponseToJson<T>(
  _BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': toJsonT(instance.data),
  'message': instance.message,
  'code': instance.code,
};
