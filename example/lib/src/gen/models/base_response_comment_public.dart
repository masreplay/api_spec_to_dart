import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_comment_public.freezed.dart';
part 'base_response_comment_public.g.dart';

///BaseResponse_CommentPublic_

@freezed
class BaseResponseCommentPublic with _$BaseResponseCommentPublic {
  const BaseResponseCommentPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseCommentPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required CommentPublic data,
  }) = _BaseResponseCommentPublic;

  factory BaseResponseCommentPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseCommentPublicFromJson(
        json,
      );
}
