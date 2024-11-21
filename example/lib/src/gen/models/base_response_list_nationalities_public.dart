import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_nationalities_public.freezed.dart';
part 'base_response_list_nationalities_public.g.dart';

///BaseResponse_list_NationalitiesPublic__

@freezed
class BaseResponseListNationalitiesPublic
    with _$BaseResponseListNationalitiesPublic {
  const BaseResponseListNationalitiesPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListNationalitiesPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<NationalitiesPublic> data,
  }) = _BaseResponseListNationalitiesPublic;

  factory BaseResponseListNationalitiesPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseListNationalitiesPublicFromJson(json);
}
