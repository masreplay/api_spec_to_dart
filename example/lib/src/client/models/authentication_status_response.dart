import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'authentication_status_response.freezed.dart';
part 'authentication_status_response.g.dart';

@freezed
class AuthenticationStatusResponse with _$AuthenticationStatusResponse {
  const factory AuthenticationStatusResponse({
    @JsonKey(name: 'settings')
    required AuthenticationStatusOptionsResponse settings,
    @JsonKey(name: 'is_temporary_password_changed')
    required bool isTemporaryPasswordChanged,
    @JsonKey(name: 'is_account_verified') required bool isAccountVerified,
    @JsonKey(name: 'is_ekyc_verified') required bool isEkycVerified,
    @JsonKey(name: 'is_enrollment_payment_verified')
    required bool isEnrollmentPaymentVerified,
    @JsonKey(name: 'registration_request_status')
    required RegistrationRequestStatusResponse registrationRequestStatus,
  }) = _AuthenticationStatusResponse;

  factory AuthenticationStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationStatusResponseFromJson(json);
}
