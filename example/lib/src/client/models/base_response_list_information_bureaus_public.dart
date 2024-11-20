import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_information_bureaus_public.freezed.dart';
part 'base_response_list_information_bureaus_public.g.dart';

@freezed
class BaseResponseListInformationBureausPublic
    with _$BaseResponseListInformationBureausPublic {
  const BaseResponseListInformationBureausPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListInformationBureausPublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _BaseResponseListInformationBureausPublic;

  factory BaseResponseListInformationBureausPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListInformationBureausPublicFromJson(json);
}
