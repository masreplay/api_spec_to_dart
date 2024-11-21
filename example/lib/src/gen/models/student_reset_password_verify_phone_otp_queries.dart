import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_reset_password_verify_phone_otp_queries.freezed.dart';
part 'student_reset_password_verify_phone_otp_queries.g.dart';

///studentResetPasswordVerifyPhoneOtpQueries

@freezed
class StudentResetPasswordVerifyPhoneOtpQueries
    with _$StudentResetPasswordVerifyPhoneOtpQueries {
  const StudentResetPasswordVerifyPhoneOtpQueries._();

  @JsonSerializable(converters: convertors)
  const factory StudentResetPasswordVerifyPhoneOtpQueries({
    /// Phone
    @JsonKey(name: 'phone') required String phone,

    /// Method
    @Default('sms') @JsonKey(name: 'method') String method,

    /// Otp
    @JsonKey(name: 'otp') required String otp,
  }) = _StudentResetPasswordVerifyPhoneOtpQueries;

  factory StudentResetPasswordVerifyPhoneOtpQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentResetPasswordVerifyPhoneOtpQueriesFromJson(
        json,
      );
}
