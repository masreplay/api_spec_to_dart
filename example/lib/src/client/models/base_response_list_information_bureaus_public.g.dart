// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_information_bureaus_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListInformationBureausPublicImpl
    _$$BaseResponseListInformationBureausPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseListInformationBureausPublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) =>
                  InformationBureausPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListInformationBureausPublicImplToJson(
        _$BaseResponseListInformationBureausPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
