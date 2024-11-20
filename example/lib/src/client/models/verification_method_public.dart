import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'verification_method_public.freezed.dart';
part 'verification_method_public.g.dart';

@freezed
class VerificationMethodPublic with _$VerificationMethodPublic {
  const VerificationMethodPublic._();

  @JsonSerializable(converters: convertors)
  const factory VerificationMethodPublic({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'type') required String type,
  }) = _VerificationMethodPublic;

  factory VerificationMethodPublic.fromJson(Map<String, dynamic> json) =>
      _$VerificationMethodPublicFromJson(json);
}
