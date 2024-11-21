import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'verify_phone_otp_queries.freezed.dart';
part 'verify_phone_otp_queries.g.dart';

///verifyPhoneOtpQueries

@freezed
class VerifyPhoneOtpQueries with _$VerifyPhoneOtpQueries {
  const VerifyPhoneOtpQueries._();

  @JsonSerializable(converters: convertors)
  const factory VerifyPhoneOtpQueries({
    /// Phone
    @JsonKey(name: 'phone') required String phone,

    /// Method
    @Default('sms') @JsonKey(name: 'method') required String method,

    /// Otp
    @JsonKey(name: 'otp') required String otp,
  }) = _VerifyPhoneOtpQueries;

  factory VerifyPhoneOtpQueries.fromJson(Map<String, dynamic> json) =>
      _$VerifyPhoneOtpQueriesFromJson(json);
}
