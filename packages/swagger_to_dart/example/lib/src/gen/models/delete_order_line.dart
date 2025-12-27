/// DeleteOrderLine
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "type": {
///             "type": "string",
///             "default": "delete"
///         }
///     },
///     "type": "object",
///     "required": [
///         "id",
///         "type"
///     ],
///     "title": "DeleteOrderLine",
///     "additionalProperties": false
/// }
library delete_order_line;

import 'exports.dart';
part 'delete_order_line.freezed.dart';
part 'delete_order_line.g.dart'; // DeleteOrderLine

@freezed
abstract class DeleteOrderLine with _$DeleteOrderLine {
  const DeleteOrderLine._();

  @jsonSerializable
  const factory DeleteOrderLine({
    /// id
    @JsonKey(name: DeleteOrderLine.idKey_) required String id,

    /// type
    @Default('delete') @JsonKey(name: DeleteOrderLine.typeKey_) String type,
  }) = _DeleteOrderLine;

  factory DeleteOrderLine.fromJson(Map<String, dynamic> json) =>
      _$DeleteOrderLineFromJson(json);

  static const String idKey_ = r'id';

  static const String typeKey_ = r'type';
}
