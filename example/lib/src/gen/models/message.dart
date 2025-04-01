
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
     
    

part 'message.freezed.dart';
part 'message.g.dart';

/// Message

@freezed
abstract class Message with _$Message {

  @JsonSerializable(converters: convertors)
  const factory Message({
/// message
@JsonKey(name: Message.messageKey)
required String message,  }) = _Message;

  factory Message.fromJson(
    Map<String, dynamic> json,
  ) => _$MessageFromJson(
    json,
  );
  const Message._();

  static const String messageKey = 'message';
}
