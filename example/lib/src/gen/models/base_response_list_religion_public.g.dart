// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_religion_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListReligionPublicImpl
    _$$BaseResponseListReligionPublicImplFromJson(Map<String, dynamic> json) =>
        _$BaseResponseListReligionPublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) => ReligionPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListReligionPublicImplToJson(
        _$BaseResponseListReligionPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
