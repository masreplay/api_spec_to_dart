import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';
     
    


part 'items_read_items_queries.freezed.dart';
part 'items_read_items_queries.g.dart';

/// itemsReadItemsQueries

@freezed
abstract class ItemsReadItemsQueries with _$ItemsReadItemsQueries {
  const ItemsReadItemsQueries._();

  static const String skipKey = 'skip';
static const String limitKey = 'limit';

  @JsonSerializable(converters: convertors)
  const factory ItemsReadItemsQueries({
/// skip
@Default(0)
@JsonKey(name: ItemsReadItemsQueries.skipKey)
int skip,/// limit
@Default(100)
@JsonKey(name: ItemsReadItemsQueries.limitKey)
int limit,  }) = _ItemsReadItemsQueries;

  factory ItemsReadItemsQueries.fromJson(
    Map<String, dynamic> json,
  ) => _$ItemsReadItemsQueriesFromJson(
    json,
  );
}
