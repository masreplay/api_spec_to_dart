// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_specialization_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListSpecializationPublicImpl
    _$$BaseResponseListSpecializationPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseListSpecializationPublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) =>
                  SpecializationPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListSpecializationPublicImplToJson(
        _$BaseResponseListSpecializationPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
