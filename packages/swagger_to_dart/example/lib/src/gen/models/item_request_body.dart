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
library;

import 'exports.dart';
part 'item_request_body.freezed.dart';
part 'item_request_body.g.dart'; // ItemRequestBody

@freezed
abstract class ItemRequestBody with _$ItemRequestBody {
  const ItemRequestBody._();

  @jsonSerializable
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

  static const String nameKey = r'name';

  static const String descriptionKey = r'description';

  static const String priceKey = r'price';

  static const String taxKey = r'tax';
}
