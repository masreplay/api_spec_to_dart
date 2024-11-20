import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_comment_public.freezed.dart';
part 'base_response_comment_public.g.dart';

@freezed
class BaseResponseCommentPublic with _$BaseResponseCommentPublic {
  const BaseResponseCommentPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseCommentPublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data') required CommentPublic data,
  }) = _BaseResponseCommentPublic;

  factory BaseResponseCommentPublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseCommentPublicFromJson(json);
}
