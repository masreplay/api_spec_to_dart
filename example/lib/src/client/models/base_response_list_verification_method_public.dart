import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_verification_method_public.freezed.dart';
part 'base_response_list_verification_method_public.g.dart';

@freezed
class BaseResponseListVerificationMethodPublic
    with _$BaseResponseListVerificationMethodPublic {
  const BaseResponseListVerificationMethodPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListVerificationMethodPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListVerificationMethodPublic;

  factory BaseResponseListVerificationMethodPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListVerificationMethodPublicFromJson(json);
}
