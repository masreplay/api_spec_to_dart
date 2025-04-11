import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "advanced_collection_set_queries.freezed.dart";
part "advanced_collection_set_queries.g.dart";

/// advancedCollectionSetQueries
@freezed
abstract class AdvancedCollectionSetQueries
    with _$AdvancedCollectionSetQueries {
  const AdvancedCollectionSetQueries._();

  static const String itemsKey = "items";

  @JsonSerializable(converters: convertors)
  const factory AdvancedCollectionSetQueries({
    /// items
    @Default([1, 2, 3])
    @JsonKey(name: AdvancedCollectionSetQueries.itemsKey)
    List<int> items,
  }) = _AdvancedCollectionSetQueries;

  factory AdvancedCollectionSetQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedCollectionSetQueriesFromJson(json);
}
