library;

import 'package:freezed_annotation/freezed_annotation.dart';
part 'item_response.freezed.dart';
part 'item_response.g.dart'; // ItemResponse

@freezed
abstract class ItemResponse with _$ItemResponse {
  const ItemResponse._();

  const factory ItemResponse({
    /// id
    @JsonKey(name: idKey) int id,

    /// name
    @JsonKey(name: nameKey) String name,

    /// description
    @JsonKey(name: descriptionKey) String? description,

    /// price
    @JsonKey(name: priceKey) double price,

    /// tax
    @JsonKey(name: taxKey) double? tax,
  }) = _ItemResponse;

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);

  static const String idKey = "id";

  static const String nameKey = "name";

  static const String descriptionKey = "description";

  static const String priceKey = "price";

  static const String taxKey = "tax";
}
