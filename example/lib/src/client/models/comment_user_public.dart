import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_user_public.freezed.dart';
part 'comment_user_public.g.dart';

@freezed
class CommentUserPublic with _$CommentUserPublic {
  const factory CommentUserPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'avatar') required String? avatar,
  }) = _CommentUserPublic;

  factory CommentUserPublic.fromJson(Map<String, dynamic> json) =>
      _$CommentUserPublicFromJson(json);
}
