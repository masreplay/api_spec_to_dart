import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_verification_method_public.freezed.dart';
part 'base_response_list_verification_method_public.g.dart';

///BaseResponse_list_VerificationMethodPublic__

@freezed
class BaseResponseListVerificationMethodPublic
    with _$BaseResponseListVerificationMethodPublic {
  const BaseResponseListVerificationMethodPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListVerificationMethodPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<VerificationMethodPublic> data,
  }) = _BaseResponseListVerificationMethodPublic;

  factory BaseResponseListVerificationMethodPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseListVerificationMethodPublicFromJson(json);
}
