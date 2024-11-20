import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_str.freezed.dart';
part 'base_response_str.g.dart';

@freezed
class BaseResponseStr with _$BaseResponseStr {
  const factory BaseResponseStr({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required String data,
  }) = _BaseResponseStr;

  factory BaseResponseStr.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseStrFromJson(json);
}
