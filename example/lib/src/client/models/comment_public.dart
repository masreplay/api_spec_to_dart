import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'comment_public.freezed.dart';
part 'comment_public.g.dart';

@freezed
class CommentPublic with _$CommentPublic {
  const CommentPublic._();

  @JsonSerializable(converters: convertors)
  const factory CommentPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'created_at_formatted') required String createdAtFormatted,
    @JsonKey(name: 'user') required CommentUserPublic user,
    @JsonKey(name: 'parent') required CommentPublic? parent,
    @JsonKey(name: 'replies') required List replies,
  }) = _CommentPublic;

  factory CommentPublic.fromJson(Map<String, dynamic> json) =>
      _$CommentPublicFromJson(json);
}
