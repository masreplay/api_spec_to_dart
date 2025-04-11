import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'advanced_union_optional_queries.freezed.dart';
part 'advanced_union_optional_queries.g.dart';

/// advancedUnionOptionalQueries
@freezed
abstract class AdvancedUnionOptionalQueries
    with _$AdvancedUnionOptionalQueries {
  const AdvancedUnionOptionalQueries._();

  static const String valueKey = 'value';

  @JsonSerializable(converters: convertors)
  const factory AdvancedUnionOptionalQueries({
    /// Value
    @JsonKey(name: AdvancedUnionOptionalQueries.valueKey)
    required String? value,
  }) = _AdvancedUnionOptionalQueries;

  factory AdvancedUnionOptionalQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedUnionOptionalQueriesFromJson(json);
}
