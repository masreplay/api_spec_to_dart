import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'comment_public.freezed.dart';
part 'comment_public.g.dart';

///CommentPublic

@freezed
class CommentPublic with _$CommentPublic {
  const CommentPublic._();

  @JsonSerializable(converters: convertors)
  const factory CommentPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Content
    @JsonKey(name: 'content') required String content,

    /// Created At
    @JsonKey(name: 'created_at') required DateTime createdAt,

    /// Created At Formatted
    @JsonKey(name: 'created_at_formatted') required String createdAtFormatted,
    @JsonKey(name: 'user') required CommentUserPublic user,
    @JsonKey(name: 'parent') required CommentPublic? parent,

    /// Replies
    @JsonKey(name: 'replies') required List<CommentPublic> replies,
  }) = _CommentPublic;

  factory CommentPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CommentPublicFromJson(
        json,
      );
}
