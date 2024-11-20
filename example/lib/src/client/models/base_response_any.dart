import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_any.freezed.dart';
part 'base_response_any.g.dart';

@freezed
class BaseResponseAny with _$BaseResponseAny {
  const BaseResponseAny._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseAny({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required dynamic data,
  }) = _BaseResponseAny;

  factory BaseResponseAny.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseAnyFromJson(json);
}
