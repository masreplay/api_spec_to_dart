import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "advanced_collection_variable_tuple_queries.freezed.dart";
part "advanced_collection_variable_tuple_queries.g.dart";

/// advancedCollectionVariableTupleQueries
@freezed
abstract class AdvancedCollectionVariableTupleQueries
    with _$AdvancedCollectionVariableTupleQueries {
  const AdvancedCollectionVariableTupleQueries._();

  static const String itemsKey = "items";

  @JsonSerializable(converters: convertors)
  const factory AdvancedCollectionVariableTupleQueries({
    /// items
    @JsonKey(name: AdvancedCollectionVariableTupleQueries.itemsKey)
    required List<String> items,
  }) = _AdvancedCollectionVariableTupleQueries;

  factory AdvancedCollectionVariableTupleQueries.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedCollectionVariableTupleQueriesFromJson(json);
}
