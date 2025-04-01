import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'items_read_items_queries.freezed.dart';
part 'items_read_items_queries.g.dart';

/// itemsReadItemsQueries

@freezed
abstract class ItemsReadItemsQueries with _$ItemsReadItemsQueries {
  @JsonSerializable(converters: convertors)
  const factory ItemsReadItemsQueries({
    /// skip
    @Default(0) @JsonKey(name: ItemsReadItemsQueries.skipKey) int skip,

    /// limit
    @Default(100) @JsonKey(name: ItemsReadItemsQueries.limitKey) int limit,
  }) = _ItemsReadItemsQueries;

  factory ItemsReadItemsQueries.fromJson(Map<String, dynamic> json) =>
      _$ItemsReadItemsQueriesFromJson(json);
  const ItemsReadItemsQueries._();

  static const String skipKey = 'skip';
  static const String limitKey = 'limit';
}
