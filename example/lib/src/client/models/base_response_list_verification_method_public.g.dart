// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_verification_method_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListVerificationMethodPublicImpl
    _$$BaseResponseListVerificationMethodPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseListVerificationMethodPublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) =>
                  VerificationMethodPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListVerificationMethodPublicImplToJson(
        _$BaseResponseListVerificationMethodPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
