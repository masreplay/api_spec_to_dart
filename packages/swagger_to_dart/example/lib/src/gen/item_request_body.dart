library;

import 'exports.dart';
part 'item_request_body.freezed.dart';
part 'item_request_body.g.dart'; // ItemRequestBody

@freezed
abstract class ItemRequestBody with _$ItemRequestBody {
  const ItemRequestBody._();

  const factory ItemRequestBody({
    /// name
    @JsonKey(name: ItemRequestBody.nameKey) required String name,

    /// description
    @JsonKey(name: ItemRequestBody.descriptionKey) required String? description,

    /// price
    @JsonKey(name: ItemRequestBody.priceKey) required double price,

    /// tax
    @JsonKey(name: ItemRequestBody.taxKey) required double? tax,
  }) = _ItemRequestBody;

  factory ItemRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ItemRequestBodyFromJson(json);

  static const String nameKey = "name";

  static const String descriptionKey = "description";

  static const String priceKey = "price";

  static const String taxKey = "tax";
}
