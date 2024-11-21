import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_reset_password_send_otp_by_phone_queries.freezed.dart';
part 'student_reset_password_send_otp_by_phone_queries.g.dart';

///studentResetPasswordSendOtpByPhoneQueries

@freezed
class StudentResetPasswordSendOtpByPhoneQueries
    with _$StudentResetPasswordSendOtpByPhoneQueries {
  const StudentResetPasswordSendOtpByPhoneQueries._();

  @JsonSerializable(converters: convertors)
  const factory StudentResetPasswordSendOtpByPhoneQueries({
    /// Phone Number
    @JsonKey(name: 'phoneNumber') required String phoneNumber,

    /// Method
    @Default('sms') @JsonKey(name: 'method') String method,
  }) = _StudentResetPasswordSendOtpByPhoneQueries;

  factory StudentResetPasswordSendOtpByPhoneQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentResetPasswordSendOtpByPhoneQueriesFromJson(json);
}
