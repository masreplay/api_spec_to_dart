import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'verify_otp_request_public.freezed.dart';
part 'verify_otp_request_public.g.dart';

@freezed
class VerifyOtpRequestPublic with _$VerifyOtpRequestPublic {
  const VerifyOtpRequestPublic._();

  @JsonSerializable(converters: convertors)
  const factory VerifyOtpRequestPublic({
    @JsonKey(name: 'otp') required String otp,
  }) = _VerifyOtpRequestPublic;

  factory VerifyOtpRequestPublic.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpRequestPublicFromJson(json);
}
