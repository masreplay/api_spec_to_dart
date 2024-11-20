import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_message_response.freezed.dart';
part 'base_response_message_response.g.dart';

@freezed
class BaseResponseMessageResponse with _$BaseResponseMessageResponse {
  const BaseResponseMessageResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseMessageResponse({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required MessageResponse data,
  }) = _BaseResponseMessageResponse;

  factory BaseResponseMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseMessageResponseFromJson(json);
}
