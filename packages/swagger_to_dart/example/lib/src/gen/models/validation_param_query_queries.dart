import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "validation_param_query_queries.freezed.dart";
part "validation_param_query_queries.g.dart";

/// validationParamQueryQueries
@freezed
abstract class ValidationParamQueryQueries with _$ValidationParamQueryQueries {
  const ValidationParamQueryQueries._();

  static const String qKey = "q";
  static const String skipKey = "skip";
  static const String limitKey = "limit";

  @JsonSerializable(converters: convertors)
  const factory ValidationParamQueryQueries({
    /// Q, Search query string (alphanumeric with hyphens and underscores)
    @JsonKey(name: ValidationParamQueryQueries.qKey) required String? q,

    /// skip, Number of items to skip
    @Default(0) @JsonKey(name: ValidationParamQueryQueries.skipKey) int skip,

    /// limit, Maximum number of items to return (1-100)
    @Default(10) @JsonKey(name: ValidationParamQueryQueries.limitKey) int limit,
  }) = _ValidationParamQueryQueries;

  factory ValidationParamQueryQueries.fromJson(Map<String, dynamic> json) =>
      _$ValidationParamQueryQueriesFromJson(json);
}
