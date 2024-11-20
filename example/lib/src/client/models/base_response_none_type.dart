import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_none_type.freezed.dart';
part 'base_response_none_type.g.dart';

@freezed
class BaseResponseNoneType with _$BaseResponseNoneType {
  const factory BaseResponseNoneType({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required dynamic data,
  }) = _BaseResponseNoneType;

  factory BaseResponseNoneType.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseNoneTypeFromJson(json);
}
