import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'authentication_status_options_response.freezed.dart';
part 'authentication_status_options_response.g.dart';

///AuthenticationStatusOptionsResponse

@freezed
class AuthenticationStatusOptionsResponse
    with _$AuthenticationStatusOptionsResponse {
  const AuthenticationStatusOptionsResponse._();

  @JsonSerializable(converters: convertors)
  const factory AuthenticationStatusOptionsResponse({
    /// Need Temporary Password Changed
    @JsonKey(name: 'need_temporary_password_changed')
    required bool needTemporaryPasswordChanged,

    /// Need Account Verified
    @JsonKey(name: 'need_account_verified') required bool needAccountVerified,

    /// Need Ekyc Verified
    @JsonKey(name: 'need_ekyc_verified') required bool needEkycVerified,

    /// Need Enrollment Payment Verified
    @JsonKey(name: 'need_enrollment_payment_verified')
    required bool needEnrollmentPaymentVerified,

    /// Need Registration Request Status
    @JsonKey(name: 'need_registration_request_status')
    required bool needRegistrationRequestStatus,
  }) = _AuthenticationStatusOptionsResponse;

  factory AuthenticationStatusOptionsResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AuthenticationStatusOptionsResponseFromJson(
        json,
      );
}
