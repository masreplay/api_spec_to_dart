import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_union_dict_str_any_none_type.freezed.dart';
part 'base_response_union_dict_str_any_none_type.g.dart';

@freezed
class BaseResponseUnionDictStrAnyNoneType
    with _$BaseResponseUnionDictStrAnyNoneType {
  const BaseResponseUnionDictStrAnyNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionDictStrAnyNoneType({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required Map<String, dynamic>? data,
  }) = _BaseResponseUnionDictStrAnyNoneType;

  factory BaseResponseUnionDictStrAnyNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionDictStrAnyNoneTypeFromJson(json);
}
