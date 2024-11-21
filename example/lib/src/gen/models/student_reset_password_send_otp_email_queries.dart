import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_reset_password_send_otp_email_queries.freezed.dart';
part 'student_reset_password_send_otp_email_queries.g.dart';

///studentResetPasswordSendOtpEmailQueries

@freezed
class StudentResetPasswordSendOtpEmailQueries
    with _$StudentResetPasswordSendOtpEmailQueries {
  const StudentResetPasswordSendOtpEmailQueries._();

  @JsonSerializable(converters: convertors)
  const factory StudentResetPasswordSendOtpEmailQueries({
    /// Email
    @JsonKey(name: 'email') required String email,

    /// Method
    @Default('email') @JsonKey(name: 'method') String method,
  }) = _StudentResetPasswordSendOtpEmailQueries;

  factory StudentResetPasswordSendOtpEmailQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentResetPasswordSendOtpEmailQueriesFromJson(
        json,
      );
}
