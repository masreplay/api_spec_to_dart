// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_governorate_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListGovernoratePublicImpl
    _$$BaseResponseListGovernoratePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseListGovernoratePublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) => GovernoratePublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListGovernoratePublicImplToJson(
        _$BaseResponseListGovernoratePublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
