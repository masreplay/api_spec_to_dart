import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "advanced_special_literal_queries.freezed.dart";
part "advanced_special_literal_queries.g.dart";

/// advancedSpecialLiteralQueries
@freezed
abstract class AdvancedSpecialLiteralQueries
    with _$AdvancedSpecialLiteralQueries {
  const AdvancedSpecialLiteralQueries._();

  static const String modeKey = "mode";

  @JsonSerializable(converters: convertors)
  const factory AdvancedSpecialLiteralQueries({
    /// mode
    @Default('system')
    @JsonKey(name: AdvancedSpecialLiteralQueries.modeKey)
    String mode,
  }) = _AdvancedSpecialLiteralQueries;

  factory AdvancedSpecialLiteralQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedSpecialLiteralQueriesFromJson(json);
}
