import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'get_queries.freezed.dart';
part 'get_queries.g.dart';

@freezed
class GetQueries with _$GetQueries {
  const GetQueries._();

  @JsonSerializable(converters: convertors)
  const factory GetQueries({
    /// Page
    @Default(1) @JsonKey(name: 'page') required int page,

    /// Per Page
    @Default(10) @JsonKey(name: 'perPage') required int perPage,
  }) = _GetQueries;

  factory GetQueries.fromJson(Map<String, dynamic> json) =>
      _$GetQueriesFromJson(json);
}
