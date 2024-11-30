// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_status_options_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationStatusOptionsResponseImpl
    _$$AuthenticationStatusOptionsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$AuthenticationStatusOptionsResponseImpl(
          needTemporaryPasswordChanged:
              json['need_temporary_password_changed'] as bool,
          needAccountVerified: json['need_account_verified'] as bool,
          needEkycVerified: json['need_ekyc_verified'] as bool,
          needEnrollmentPaymentVerified:
              json['need_enrollment_payment_verified'] as bool,
          needRegistrationRequestStatus:
              json['need_registration_request_status'] as bool,
        );

Map<String, dynamic> _$$AuthenticationStatusOptionsResponseImplToJson(
        _$AuthenticationStatusOptionsResponseImpl instance) =>
    <String, dynamic>{
      'need_temporary_password_changed': instance.needTemporaryPasswordChanged,
      'need_account_verified': instance.needAccountVerified,
      'need_ekyc_verified': instance.needEkycVerified,
      'need_enrollment_payment_verified':
          instance.needEnrollmentPaymentVerified,
      'need_registration_request_status':
          instance.needRegistrationRequestStatus,
    };
