library item_request_body;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'item_request_body.freezed.dart';
part 'item_request_body.g.dart'; // ItemRequestBody

@freezed
abstract class ItemRequestBody with _$ItemRequestBody {
  const ItemRequestBody._();

  const factory ItemRequestBody(
    /// name
    @JsonKey(name: nameKey) String name,

    /// description
    @JsonKey(name: descriptionKey) String? description,

    /// price
    @JsonKey(name: priceKey) double price,

    /// tax
    @JsonKey(name: taxKey) double? tax,
  ) = _ItemRequestBody;

  factory ItemRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ItemRequestBodyFromJson(json);

  static const String nameKey = "name";

  static const String descriptionKey = "description";

  static const String priceKey = "price";

  static const String taxKey = "tax";
}
