import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_dict_str_any.freezed.dart';
part 'base_response_dict_str_any.g.dart';

@freezed
class BaseResponseDictStrAny with _$BaseResponseDictStrAny {
  const factory BaseResponseDictStrAny({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required Map data,
  }) = _BaseResponseDictStrAny;

  factory BaseResponseDictStrAny.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseDictStrAnyFromJson(json);
}
