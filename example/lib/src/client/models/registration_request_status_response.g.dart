// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationRequestStatusResponseImpl
    _$$RegistrationRequestStatusResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RegistrationRequestStatusResponseImpl(
          status: StudentRequestStatus.fromJson(
              json['status'] as Map<String, dynamic>),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$$RegistrationRequestStatusResponseImplToJson(
        _$RegistrationRequestStatusResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
