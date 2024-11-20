import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_specialization_public.freezed.dart';
part 'base_response_list_specialization_public.g.dart';

@freezed
class BaseResponseListSpecializationPublic
    with _$BaseResponseListSpecializationPublic {
  const BaseResponseListSpecializationPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListSpecializationPublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _BaseResponseListSpecializationPublic;

  factory BaseResponseListSpecializationPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListSpecializationPublicFromJson(json);
}
