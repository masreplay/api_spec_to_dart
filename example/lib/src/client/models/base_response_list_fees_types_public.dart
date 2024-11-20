import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_fees_types_public.freezed.dart';
part 'base_response_list_fees_types_public.g.dart';

@freezed
class BaseResponseListFeesTypesPublic with _$BaseResponseListFeesTypesPublic {
  const BaseResponseListFeesTypesPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListFeesTypesPublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListFeesTypesPublic;

  factory BaseResponseListFeesTypesPublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListFeesTypesPublicFromJson(json);
}
