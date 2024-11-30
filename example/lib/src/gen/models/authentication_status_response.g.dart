// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationStatusResponseImpl _$$AuthenticationStatusResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationStatusResponseImpl(
      settings: AuthenticationStatusOptionsResponse.fromJson(
          json['settings'] as Map<String, dynamic>),
      isTemporaryPasswordChanged: json['is_temporary_password_changed'] as bool,
      isAccountVerified: json['is_account_verified'] as bool,
      isEkycVerified: json['is_ekyc_verified'] as bool,
      isEnrollmentPaymentVerified:
          json['is_enrollment_payment_verified'] as bool,
      registrationRequestStatus: RegistrationRequestStatusResponse.fromJson(
          json['registration_request_status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthenticationStatusResponseImplToJson(
        _$AuthenticationStatusResponseImpl instance) =>
    <String, dynamic>{
      'settings': instance.settings,
      'is_temporary_password_changed': instance.isTemporaryPasswordChanged,
      'is_account_verified': instance.isAccountVerified,
      'is_ekyc_verified': instance.isEkycVerified,
      'is_enrollment_payment_verified': instance.isEnrollmentPaymentVerified,
      'registration_request_status': instance.registrationRequestStatus,
    };
