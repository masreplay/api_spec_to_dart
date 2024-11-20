import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'authentication_status_options_response.freezed.dart';
part 'authentication_status_options_response.g.dart';

@freezed
class AuthenticationStatusOptionsResponse
    with _$AuthenticationStatusOptionsResponse {
  const AuthenticationStatusOptionsResponse._();

  @JsonSerializable(converters: convertors)
  const factory AuthenticationStatusOptionsResponse({
    @JsonKey(name: 'need_temporary_password_changed')

    /// Need Temporary Password Changed
    required bool needTemporaryPasswordChanged,
    @JsonKey(name: 'need_account_verified')

    /// Need Account Verified
    required bool needAccountVerified,
    @JsonKey(name: 'need_ekyc_verified')

    /// Need Ekyc Verified
    required bool needEkycVerified,
    @JsonKey(name: 'need_enrollment_payment_verified')

    /// Need Enrollment Payment Verified
    required bool needEnrollmentPaymentVerified,
    @JsonKey(name: 'need_registration_request_status')

    /// Need Registration Request Status
    required bool needRegistrationRequestStatus,
  }) = _AuthenticationStatusOptionsResponse;

  factory AuthenticationStatusOptionsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationStatusOptionsResponseFromJson(json);
}
