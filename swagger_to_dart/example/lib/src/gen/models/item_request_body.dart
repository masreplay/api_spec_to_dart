import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "item_request_body.freezed.dart";
part "item_request_body.g.dart";

/// ItemRequestBody
@freezed
abstract class ItemRequestBody with _$ItemRequestBody {
  const ItemRequestBody._();

  static const String nameKey = "name";
  static const String descriptionKey = "description";
  static const String priceKey = "price";
  static const String taxKey = "tax";

  @JsonSerializable(converters: convertors)
  const factory ItemRequestBody({
    /// name
    @JsonKey(name: ItemRequestBody.nameKey) required String name,

    /// Description
    @JsonKey(name: ItemRequestBody.descriptionKey) required String? description,

    /// price
    @JsonKey(name: ItemRequestBody.priceKey) required double price,

    /// Tax
    @JsonKey(name: ItemRequestBody.taxKey) required double? tax,
  }) = _ItemRequestBody;

  factory ItemRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ItemRequestBodyFromJson(json);
}
