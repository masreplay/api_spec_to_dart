// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_validation_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HttpValidationErrorImpl _$$HttpValidationErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$HttpValidationErrorImpl(
      detail: (json['detail'] as List<dynamic>)
          .map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HttpValidationErrorImplToJson(
        _$HttpValidationErrorImpl instance) =>
    <String, dynamic>{
      'detail': instance.detail,
    };
