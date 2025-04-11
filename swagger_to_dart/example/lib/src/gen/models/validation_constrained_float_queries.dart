import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "validation_constrained_float_queries.freezed.dart";
part "validation_constrained_float_queries.g.dart";

/// validationConstrainedFloatQueries
@freezed
abstract class ValidationConstrainedFloatQueries
    with _$ValidationConstrainedFloatQueries {
  const ValidationConstrainedFloatQueries._();

  static const String valueKey = "value";

  @JsonSerializable(converters: convertors)
  const factory ValidationConstrainedFloatQueries({
    /// value, Float between 0.0 and 1.0
    @JsonKey(name: ValidationConstrainedFloatQueries.valueKey)
    required double value,
  }) = _ValidationConstrainedFloatQueries;

  factory ValidationConstrainedFloatQueries.fromJson(
    Map<String, dynamic> json,
  ) => _$ValidationConstrainedFloatQueriesFromJson(json);
}
