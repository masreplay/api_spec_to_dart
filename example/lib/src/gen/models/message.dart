import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';
     
    


part 'message.freezed.dart';
part 'message.g.dart';

/// Message

@freezed
abstract class Message with _$Message {
  const Message._();

  static const String messageKey = 'message';

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
}
