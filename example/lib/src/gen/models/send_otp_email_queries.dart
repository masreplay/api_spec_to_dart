import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'send_otp_email_queries.freezed.dart';
part 'send_otp_email_queries.g.dart';

@freezed
class SendOtpEmailQueries with _$SendOtpEmailQueries {
  const SendOtpEmailQueries._();

  @JsonSerializable(converters: convertors)
  const factory SendOtpEmailQueries({
    /// Email
    @JsonKey(name: 'email') required String email,

    /// Method
    @Default('email') @JsonKey(name: 'method') required String method,
  }) = _SendOtpEmailQueries;

  factory SendOtpEmailQueries.fromJson(Map<String, dynamic> json) =>
      _$SendOtpEmailQueriesFromJson(json);
}
