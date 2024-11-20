import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_by_request_public.freezed.dart';
part 'send_otp_by_request_public.g.dart';

@freezed
class SendOtpByRequestPublic with _$SendOtpByRequestPublic {
  const factory SendOtpByRequestPublic({
    @JsonKey(name: 'credential') required String credential,
    @JsonKey(name: 'method') required String method,
  }) = _SendOtpByRequestPublic;

  factory SendOtpByRequestPublic.fromJson(Map<String, dynamic> json) =>
      _$SendOtpByRequestPublicFromJson(json);
}
