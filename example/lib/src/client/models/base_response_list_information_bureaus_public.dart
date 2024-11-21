import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_list_information_bureaus_public.freezed.dart';
part 'base_response_list_information_bureaus_public.g.dart';

@freezed
class BaseResponseListInformationBureausPublic
    with _$BaseResponseListInformationBureausPublic {
  const BaseResponseListInformationBureausPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListInformationBureausPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<InformationBureausPublic> data,
  }) = _BaseResponseListInformationBureausPublic;

  factory BaseResponseListInformationBureausPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListInformationBureausPublicFromJson(json);
}
