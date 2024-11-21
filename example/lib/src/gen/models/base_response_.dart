import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_.freezed.dart';
part 'base_response_.g.dart';

///BaseResponse_NoneType_

@freezed
class BaseResponse with _$BaseResponse {
  const BaseResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponse({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required dynamic data,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
}
