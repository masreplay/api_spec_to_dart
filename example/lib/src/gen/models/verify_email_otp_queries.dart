import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'verify_email_otp_queries.freezed.dart';
part 'verify_email_otp_queries.g.dart';

@freezed
class VerifyEmailOtpQueries with _$VerifyEmailOtpQueries {
  const VerifyEmailOtpQueries._();

  @JsonSerializable(converters: convertors)
  const factory VerifyEmailOtpQueries({
    /// Email
    @JsonKey(name: 'email') required String email,

    /// Method
    @Default('email') @JsonKey(name: 'method') required String method,

    /// Otp
    @JsonKey(name: 'otp') required String otp,
  }) = _VerifyEmailOtpQueries;

  factory VerifyEmailOtpQueries.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailOtpQueriesFromJson(json);
}
