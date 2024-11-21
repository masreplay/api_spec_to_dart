import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'comment_create_public.freezed.dart';
part 'comment_create_public.g.dart';

///CommentCreatePublic

@freezed
class CommentCreatePublic with _$CommentCreatePublic {
  const CommentCreatePublic._();

  @JsonSerializable(converters: convertors)
  const factory CommentCreatePublic({
    /// Content
    @JsonKey(name: 'content') required String content,
  }) = _CommentCreatePublic;

  factory CommentCreatePublic.fromJson(Map<String, dynamic> json) =>
      _$CommentCreatePublicFromJson(json);
}
