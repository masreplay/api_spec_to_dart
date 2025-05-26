/// ItemResponse-Input
/// {
///     "properties": {
///         "id": {
///             "type": "integer",
///             "title": "Id"
///         },
///         "name": {
///             "type": "string",
///             "title": "Name"
///         }
///     },
///     "type": "object",
///     "required": [
///         "id",
///         "name"
///     ],
///     "title": "ItemResponse"
/// }
library;

import 'exports.dart';
part 'item_response.freezed.dart';
part 'item_response.g.dart'; // ItemResponse

@freezed
abstract class ItemResponse with _$ItemResponse {
  const ItemResponse._();

  @jsonSerializable
  const factory ItemResponse({
    /// id
    @JsonKey(name: ItemResponse.idKey) required int id,

    /// name
    @JsonKey(name: ItemResponse.nameKey) required String name,
  }) = _ItemResponse;

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);

  static const String idKey = "id";

  static const String nameKey = "name";
}
