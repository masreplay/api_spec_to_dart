import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "basic_basic_string_queries.freezed.dart";
part "basic_basic_string_queries.g.dart";

/// basicBasicStringQueries
@freezed
abstract class BasicBasicStringQueries with _$BasicBasicStringQueries {
  const BasicBasicStringQueries._();

  static const String textKey = "text";

  @JsonSerializable(converters: convertors)
  const factory BasicBasicStringQueries({
    /// text
    @JsonKey(name: BasicBasicStringQueries.textKey) required String text,
  }) = _BasicBasicStringQueries;

  factory BasicBasicStringQueries.fromJson(Map<String, dynamic> json) =>
      _$BasicBasicStringQueriesFromJson(json);
}
