import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_religion_public.freezed.dart';
part 'base_response_list_religion_public.g.dart';

@freezed
class BaseResponseListReligionPublic with _$BaseResponseListReligionPublic {
  const BaseResponseListReligionPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListReligionPublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _BaseResponseListReligionPublic;

  factory BaseResponseListReligionPublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListReligionPublicFromJson(json);
}
