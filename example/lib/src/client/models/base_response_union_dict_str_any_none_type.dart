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
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required Map? data,
  }) = _BaseResponseUnionDictStrAnyNoneType;

  factory BaseResponseUnionDictStrAnyNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionDictStrAnyNoneTypeFromJson(json);
}
