import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_union_dict_str_any_.freezed.dart';
part 'base_response_union_dict_str_any_.g.dart';

///BaseResponse_Union_dict_str__Any___NoneType__

@freezed
class BaseResponseUnionDictStrAny with _$BaseResponseUnionDictStrAny {
  const BaseResponseUnionDictStrAny._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionDictStrAny({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required Map<String, dynamic>? data,
  }) = _BaseResponseUnionDictStrAny;

  factory BaseResponseUnionDictStrAny.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionDictStrAnyFromJson(json);
}
