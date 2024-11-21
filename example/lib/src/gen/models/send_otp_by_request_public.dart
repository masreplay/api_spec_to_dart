import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'send_otp_by_request_public.freezed.dart';
part 'send_otp_by_request_public.g.dart';

///SendOtpByRequestPublic

@freezed
class SendOtpByRequestPublic with _$SendOtpByRequestPublic {
  const SendOtpByRequestPublic._();

  @JsonSerializable(converters: convertors)
  const factory SendOtpByRequestPublic({
    /// Credential
    @JsonKey(name: 'credential') required String credential,

    /// Method
    @JsonKey(name: 'method') required String method,
  }) = _SendOtpByRequestPublic;

  factory SendOtpByRequestPublic.fromJson(Map<String, dynamic> json) =>
      _$SendOtpByRequestPublicFromJson(json);
}
