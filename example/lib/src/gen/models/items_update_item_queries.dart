import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_update_item_queries.freezed.dart';
part 'items_update_item_queries.g.dart';

/// itemsUpdateItemQueries
@freezed
sealed class ItemsUpdateItemQueries with _$ItemsUpdateItemQueries {
  const factory ItemsUpdateItemQueries.fallback() =
      ItemsUpdateItemQueriesFallback;

  factory ItemsUpdateItemQueries.fromJson(Map<String, dynamic> json) =>
      _$ItemsUpdateItemQueriesFromJson(json);
}
