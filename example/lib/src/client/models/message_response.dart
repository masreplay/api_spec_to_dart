import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'message_response.freezed.dart';
part 'message_response.g.dart';

@freezed
class MessageResponse with _$MessageResponse {
  const MessageResponse._();

  @JsonSerializable(converters: convertors)
  const factory MessageResponse({
    @JsonKey(name: 'message') required String message,
  }) = _MessageResponse;

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);
}
