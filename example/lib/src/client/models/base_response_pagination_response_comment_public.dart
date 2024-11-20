import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_pagination_response_comment_public.freezed.dart';
part 'base_response_pagination_response_comment_public.g.dart';

@freezed
class BaseResponsePaginationResponseCommentPublic
    with _$BaseResponsePaginationResponseCommentPublic {
  const factory BaseResponsePaginationResponseCommentPublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required PaginationResponse_CommentPublic_ data,
  }) = _BaseResponsePaginationResponseCommentPublic;

  factory BaseResponsePaginationResponseCommentPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponsePaginationResponseCommentPublicFromJson(json);
}
