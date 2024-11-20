import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_list_specialization_public.freezed.dart';
part 'base_response_list_specialization_public.g.dart';

@freezed
class BaseResponseListSpecializationPublic
    with _$BaseResponseListSpecializationPublic {
  const BaseResponseListSpecializationPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListSpecializationPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<SpecializationPublic> data,
  }) = _BaseResponseListSpecializationPublic;

  factory BaseResponseListSpecializationPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListSpecializationPublicFromJson(json);
}
