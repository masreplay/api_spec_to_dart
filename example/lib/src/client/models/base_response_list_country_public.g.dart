// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_country_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListCountryPublicImpl
    _$$BaseResponseListCountryPublicImplFromJson(Map<String, dynamic> json) =>
        _$BaseResponseListCountryPublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) => CountryPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListCountryPublicImplToJson(
        _$BaseResponseListCountryPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
