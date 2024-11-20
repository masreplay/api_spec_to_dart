import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'pagination_response_comment_public.freezed.dart';
part 'pagination_response_comment_public.g.dart';

@freezed
class PaginationResponseCommentPublic with _$PaginationResponseCommentPublic {
  const PaginationResponseCommentPublic._();

  @JsonSerializable(converters: convertors)
  const factory PaginationResponseCommentPublic({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'data') required List data,
  }) = _PaginationResponseCommentPublic;

  factory PaginationResponseCommentPublic.fromJson(Map<String, dynamic> json) =>
      _$PaginationResponseCommentPublicFromJson(json);
}
