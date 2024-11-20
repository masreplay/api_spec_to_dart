import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'pagination_response_comment_public.freezed.dart';
part 'pagination_response_comment_public.g.dart';

@freezed
class PaginationResponseCommentPublic with _$PaginationResponseCommentPublic {
  const PaginationResponseCommentPublic._();

  @JsonSerializable(converters: convertors)
  const factory PaginationResponseCommentPublic({
    @JsonKey(name: 'page')

    /// Page
    required int page,
    @JsonKey(name: 'per_page')

    /// Per Page
    required int perPage,
    @JsonKey(name: 'total')

    /// Total
    required int total,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _PaginationResponseCommentPublic;

  factory PaginationResponseCommentPublic.fromJson(Map<String, dynamic> json) =>
      _$PaginationResponseCommentPublicFromJson(json);
}
