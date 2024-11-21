import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_pagination_response_comment_public.freezed.dart';
part 'base_response_pagination_response_comment_public.g.dart';

@freezed
class BaseResponsePaginationResponseCommentPublic
    with _$BaseResponsePaginationResponseCommentPublic {
  const BaseResponsePaginationResponseCommentPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponsePaginationResponseCommentPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required PaginationResponseCommentPublic data,
  }) = _BaseResponsePaginationResponseCommentPublic;

  factory BaseResponsePaginationResponseCommentPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponsePaginationResponseCommentPublicFromJson(json);
}
