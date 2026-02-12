/// ConditionalBody
/// {
///     "properties": {
///         "item_id": {
///             "anyOf": [
///                 {
///                     "type": "integer"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "description": "Item ID (if provided)",
///             "title": "Item Id"
///         },
///         "item_name": {
///             "anyOf": [
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "description": "Item name (if provided)",
///             "title": "Item Name"
///         }
///     },
///     "type": "object",
///     "title": "ConditionalBody"
/// }
library conditional_body;

import 'exports.dart';
part 'conditional_body.freezed.dart';
part 'conditional_body.g.dart'; // ConditionalBody

@freezed
abstract class ConditionalBody with _$ConditionalBody {
  const ConditionalBody._();

  @jsonSerializable
  const factory ConditionalBody({
    /// itemId
    @JsonKey(name: ConditionalBody.itemIdKey_) int? itemId,

    /// itemName
    @JsonKey(name: ConditionalBody.itemNameKey_) String? itemName,
  }) = _ConditionalBody;

  factory ConditionalBody.fromJson(Map<String, dynamic> json) =>
      _$ConditionalBodyFromJson(json);

  static const String itemIdKey_ = r'item_id';

  static const String itemNameKey_ = r'item_name';
}
