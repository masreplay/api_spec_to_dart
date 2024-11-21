import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_fees_types_public.freezed.dart';
part 'base_response_list_fees_types_public.g.dart';

///BaseResponse_list_FeesTypesPublic__

@freezed
class BaseResponseListFeesTypesPublic with _$BaseResponseListFeesTypesPublic {
  const BaseResponseListFeesTypesPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListFeesTypesPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<FeesTypesPublic> data,
  }) = _BaseResponseListFeesTypesPublic;

  factory BaseResponseListFeesTypesPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseListFeesTypesPublicFromJson(json);
}
