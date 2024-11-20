import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_str.freezed.dart';
part 'base_response_str.g.dart';

@freezed
class BaseResponseStr with _$BaseResponseStr {
  const BaseResponseStr._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseStr({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required String data,
  }) = _BaseResponseStr;

  factory BaseResponseStr.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseStrFromJson(json);
}
