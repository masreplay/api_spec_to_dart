import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_none_type.freezed.dart';
part 'base_response_none_type.g.dart';

@freezed
class BaseResponseNoneType with _$BaseResponseNoneType {
  const BaseResponseNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseNoneType({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required dynamic data,
  }) = _BaseResponseNoneType;

  factory BaseResponseNoneType.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseNoneTypeFromJson(json);
}
