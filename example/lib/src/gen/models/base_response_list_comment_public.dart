import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_comment_public.freezed.dart';
part 'base_response_list_comment_public.g.dart';

///BaseResponse_list_CommentPublic__

@freezed
class BaseResponseListCommentPublic with _$BaseResponseListCommentPublic {
  const BaseResponseListCommentPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListCommentPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<CommentPublic> data,
  }) = _BaseResponseListCommentPublic;

  factory BaseResponseListCommentPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseListCommentPublicFromJson(
        json,
      );
}
