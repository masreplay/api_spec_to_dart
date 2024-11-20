import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_comment_public.freezed.dart';
part 'base_response_list_comment_public.g.dart';

@freezed
class BaseResponseListCommentPublic with _$BaseResponseListCommentPublic {
  const BaseResponseListCommentPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListCommentPublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _BaseResponseListCommentPublic;

  factory BaseResponseListCommentPublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListCommentPublicFromJson(json);
}
