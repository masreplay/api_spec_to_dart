import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'advanced_collection_list_queries.freezed.dart';
part 'advanced_collection_list_queries.g.dart';

/// advancedCollectionListQueries
@freezed
abstract class AdvancedCollectionListQueries
    with _$AdvancedCollectionListQueries {
  const AdvancedCollectionListQueries._();

  static const String itemsKey = 'items';

  @JsonSerializable(converters: convertors)
  const factory AdvancedCollectionListQueries({
    /// items
    @Default(['default'])
    @JsonKey(name: AdvancedCollectionListQueries.itemsKey)
    List<String> items,
  }) = _AdvancedCollectionListQueries;

  factory AdvancedCollectionListQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedCollectionListQueriesFromJson(json);
}
