import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_status_options_response.freezed.dart';
part 'authentication_status_options_response.g.dart';

@freezed
class AuthenticationStatusOptionsResponse
    with _$AuthenticationStatusOptionsResponse {
  const factory AuthenticationStatusOptionsResponse({
    @JsonKey(name: 'need_temporary_password_changed')
    required bool needTemporaryPasswordChanged,
    @JsonKey(name: 'need_account_verified') required bool needAccountVerified,
    @JsonKey(name: 'need_ekyc_verified') required bool needEkycVerified,
    @JsonKey(name: 'need_enrollment_payment_verified')
    required bool needEnrollmentPaymentVerified,
    @JsonKey(name: 'need_registration_request_status')
    required bool needRegistrationRequestStatus,
  }) = _AuthenticationStatusOptionsResponse;

  factory AuthenticationStatusOptionsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationStatusOptionsResponseFromJson(json);
}
