import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "validation_constrained_string_queries.freezed.dart";
part "validation_constrained_string_queries.g.dart";

/// validationConstrainedStringQueries
@freezed
abstract class ValidationConstrainedStringQueries
    with _$ValidationConstrainedStringQueries {
  const ValidationConstrainedStringQueries._();

  static const String valueKey = "value";

  @JsonSerializable(converters: convertors)
  const factory ValidationConstrainedStringQueries({
    /// value, String between 3-50 chars, alphanumeric with hyphens and underscores
    @JsonKey(name: ValidationConstrainedStringQueries.valueKey)
    required String value,
  }) = _ValidationConstrainedStringQueries;

  factory ValidationConstrainedStringQueries.fromJson(
    Map<String, dynamic> json,
  ) => _$ValidationConstrainedStringQueriesFromJson(json);
}
