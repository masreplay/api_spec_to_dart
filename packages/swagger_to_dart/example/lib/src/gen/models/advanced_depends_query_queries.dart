import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "advanced_depends_query_queries.freezed.dart";
part "advanced_depends_query_queries.g.dart";

/// advancedDependsQueryQueries
@freezed
abstract class AdvancedDependsQueryQueries with _$AdvancedDependsQueryQueries {
  const AdvancedDependsQueryQueries._();

  static const String qKey = "q";
  static const String skipKey = "skip";
  static const String limitKey = "limit";

  @JsonSerializable(converters: convertors)
  const factory AdvancedDependsQueryQueries({
    /// Q, Optional search string
    @JsonKey(name: AdvancedDependsQueryQueries.qKey) required String? q,

    /// skip, Number of items to skip
    @Default(0) @JsonKey(name: AdvancedDependsQueryQueries.skipKey) int skip,

    /// limit, Max items to return
    @Default(100)
    @JsonKey(name: AdvancedDependsQueryQueries.limitKey)
    int limit,
  }) = _AdvancedDependsQueryQueries;

  factory AdvancedDependsQueryQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedDependsQueryQueriesFromJson(json);
}
