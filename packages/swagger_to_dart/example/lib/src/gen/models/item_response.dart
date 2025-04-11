import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "item_response.freezed.dart";
part "item_response.g.dart";

/// ItemResponse
@freezed
abstract class ItemResponse with _$ItemResponse {
  const ItemResponse._();

  static const String idKey = "id";
  static const String nameKey = "name";
  static const String descriptionKey = "description";
  static const String priceKey = "price";
  static const String taxKey = "tax";

  @JsonSerializable(converters: convertors)
  const factory ItemResponse({
    /// id
    @JsonKey(name: ItemResponse.idKey) required int id,

    /// name
    @JsonKey(name: ItemResponse.nameKey) required String name,

    /// Description
    @JsonKey(name: ItemResponse.descriptionKey) required String? description,

    /// price
    @JsonKey(name: ItemResponse.priceKey) required double price,

    /// Tax
    @JsonKey(name: ItemResponse.taxKey) required double? tax,
  }) = _ItemResponse;

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);
}
