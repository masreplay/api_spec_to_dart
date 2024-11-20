// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_admission_me_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListAdmissionMePublicImpl
    _$$BaseResponseListAdmissionMePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseListAdmissionMePublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) => AdmissionMePublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListAdmissionMePublicImplToJson(
        _$BaseResponseListAdmissionMePublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
