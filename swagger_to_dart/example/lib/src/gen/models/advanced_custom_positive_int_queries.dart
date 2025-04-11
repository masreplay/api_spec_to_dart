import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'advanced_custom_positive_int_queries.freezed.dart';
part 'advanced_custom_positive_int_queries.g.dart';

/// advancedCustomPositiveIntQueries
@freezed
abstract class AdvancedCustomPositiveIntQueries
    with _$AdvancedCustomPositiveIntQueries {
  const AdvancedCustomPositiveIntQueries._();

  static const String valueKey = 'value';
  static const String value2Key = 'value2';

  @JsonSerializable(converters: convertors)
  const factory AdvancedCustomPositiveIntQueries({
    /// value
    @JsonKey(name: AdvancedCustomPositiveIntQueries.valueKey)
    required int value,

    /// value2
    @JsonKey(name: AdvancedCustomPositiveIntQueries.value2Key)
    required int value2,
  }) = _AdvancedCustomPositiveIntQueries;

  factory AdvancedCustomPositiveIntQueries.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedCustomPositiveIntQueriesFromJson(json);
}
