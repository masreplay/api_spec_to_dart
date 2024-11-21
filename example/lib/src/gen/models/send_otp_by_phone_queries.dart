import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'send_otp_by_phone_queries.freezed.dart';
part 'send_otp_by_phone_queries.g.dart';

@freezed
class SendOtpByPhoneQueries with _$SendOtpByPhoneQueries {
  const SendOtpByPhoneQueries._();

  @JsonSerializable(converters: convertors)
  const factory SendOtpByPhoneQueries({
    /// Phone Number
    @JsonKey(name: 'phoneNumber') required String phoneNumber,

    /// Method
    @Default('sms') @JsonKey(name: 'method') required String method,
  }) = _SendOtpByPhoneQueries;

  factory SendOtpByPhoneQueries.fromJson(Map<String, dynamic> json) =>
      _$SendOtpByPhoneQueriesFromJson(json);
}
