import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_religion_public.freezed.dart';
part 'base_response_list_religion_public.g.dart';

///BaseResponse_list_ReligionPublic__

@freezed
class BaseResponseListReligionPublic with _$BaseResponseListReligionPublic {
  const BaseResponseListReligionPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListReligionPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<ReligionPublic> data,
  }) = _BaseResponseListReligionPublic;

  factory BaseResponseListReligionPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseListReligionPublicFromJson(json);
}
