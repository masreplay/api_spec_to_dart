/// ItemRequestBody
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "title": "Name"
///         },
///         "description": {
///             "anyOf": [
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Description"
///         },
///         "price": {
///             "type": "number",
///             "title": "Price"
///         },
///         "tax": {
///             "anyOf": [
///                 {
///                     "type": "number"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Tax"
///         }
///     },
///     "type": "object",
///     "required": [
///         "name",
///         "description",
///         "price"
///     ],
///     "title": "ItemRequestBody"
/// }
library item_request_body;

import 'exports.dart';
part 'item_request_body.freezed.dart';
part 'item_request_body.g.dart'; // ItemRequestBody

@freezed
abstract class ItemRequestBody with _$ItemRequestBody {
  const ItemRequestBody._();

  @jsonSerializable
  const factory ItemRequestBody({
    /// name
    @JsonKey(name: ItemRequestBody.nameKey_) required String name,

    /// description
    @JsonKey(name: ItemRequestBody.descriptionKey_)
    required String? description,

    /// price
    @JsonKey(name: ItemRequestBody.priceKey_) required double price,

    /// tax
    @JsonKey(name: ItemRequestBody.taxKey_) double? tax,
  }) = _ItemRequestBody;

  factory ItemRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ItemRequestBodyFromJson(json);

  static const String nameKey_ = r'name';

  static const String descriptionKey_ = r'description';

  static const String priceKey_ = r'price';

  static const String taxKey_ = r'tax';
}
