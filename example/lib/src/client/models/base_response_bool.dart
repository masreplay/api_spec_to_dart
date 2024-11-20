import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_bool.freezed.dart';
part 'base_response_bool.g.dart';

@freezed
class BaseResponseBool with _$BaseResponseBool {
  const BaseResponseBool._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseBool({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required bool data,
  }) = _BaseResponseBool;

  factory BaseResponseBool.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseBoolFromJson(json);
}
