import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'advanced_collection_tuple_queries.freezed.dart';
part 'advanced_collection_tuple_queries.g.dart';

/// advancedCollectionTupleQueries
@freezed
abstract class AdvancedCollectionTupleQueries
    with _$AdvancedCollectionTupleQueries {
  const AdvancedCollectionTupleQueries._();

  static const String itemsKey = 'items';

  @JsonSerializable(converters: convertors)
  const factory AdvancedCollectionTupleQueries({
    /// items
    @JsonKey(name: AdvancedCollectionTupleQueries.itemsKey)
    required List<dynamic> items,
  }) = _AdvancedCollectionTupleQueries;

  factory AdvancedCollectionTupleQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedCollectionTupleQueriesFromJson(json);
}
