import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_reset_password_verify_email_otp_queries.freezed.dart';
part 'student_reset_password_verify_email_otp_queries.g.dart';

///studentResetPasswordVerifyEmailOtpQueries

@freezed
class StudentResetPasswordVerifyEmailOtpQueries
    with _$StudentResetPasswordVerifyEmailOtpQueries {
  const StudentResetPasswordVerifyEmailOtpQueries._();

  @JsonSerializable(converters: convertors)
  const factory StudentResetPasswordVerifyEmailOtpQueries({
    /// Email
    @JsonKey(name: 'email') required String email,

    /// Method
    @Default('email') @JsonKey(name: 'method') String method,

    /// Otp
    @JsonKey(name: 'otp') required String otp,
  }) = _StudentResetPasswordVerifyEmailOtpQueries;

  factory StudentResetPasswordVerifyEmailOtpQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentResetPasswordVerifyEmailOtpQueriesFromJson(json);
}
