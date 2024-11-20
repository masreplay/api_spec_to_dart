import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'comment_user_public.freezed.dart';
part 'comment_user_public.g.dart';

@freezed
class CommentUserPublic with _$CommentUserPublic {
  const CommentUserPublic._();

  @JsonSerializable(converters: convertors)
  const factory CommentUserPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'name')

    /// Name
    required String name,
    @JsonKey(name: 'avatar')

    /// Avatar
    required String? avatar,
  }) = _CommentUserPublic;

  factory CommentUserPublic.fromJson(Map<String, dynamic> json) =>
      _$CommentUserPublicFromJson(json);
}
