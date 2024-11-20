import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_create_public.freezed.dart';
part 'comment_create_public.g.dart';

@freezed
class CommentCreatePublic with _$CommentCreatePublic {
  const factory CommentCreatePublic({
    @JsonKey(name: 'content') required String content,
  }) = _CommentCreatePublic;

  factory CommentCreatePublic.fromJson(Map<String, dynamic> json) =>
      _$CommentCreatePublicFromJson(json);
}
