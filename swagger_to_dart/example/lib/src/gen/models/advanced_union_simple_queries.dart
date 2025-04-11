import 'package:freezed_annotation/freezed_annotation.dart';

part 'advanced_union_simple_queries.freezed.dart';
part 'advanced_union_simple_queries.g.dart';

/// advancedUnionSimpleQueries
@freezed
sealed class AdvancedUnionSimpleQueries with _$AdvancedUnionSimpleQueries {
  static const String valueKey = 'value';

  const factory AdvancedUnionSimpleQueries.fallback() =
      AdvancedUnionSimpleQueriesFallback;

  factory AdvancedUnionSimpleQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedUnionSimpleQueriesFromJson(json);
}
