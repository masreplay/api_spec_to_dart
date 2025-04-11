import 'package:freezed_annotation/freezed_annotation.dart';

part 'advanced_union_modern_queries.freezed.dart';
part 'advanced_union_modern_queries.g.dart';

/// advancedUnionModernQueries
@freezed
sealed class AdvancedUnionModernQueries with _$AdvancedUnionModernQueries {
  static const String valueKey = 'value';

  const factory AdvancedUnionModernQueries.fallback() =
      AdvancedUnionModernQueriesFallback;

  factory AdvancedUnionModernQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedUnionModernQueriesFromJson(json);
}
