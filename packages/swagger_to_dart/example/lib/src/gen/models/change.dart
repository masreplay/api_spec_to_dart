/// Change
/// {
///     "properties": {
///         "change_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "entity_name": {
///             "type": "string"
///         },
///         "entity_id": {
///             "type": "array",
///             "items": {}
///         },
///         "change_type": {
///             "$ref": "#/components/schemas/ChangeType"
///         },
///         "etag": {
///             "type": "integer",
///             "format": "int32"
///         },
///         "new_data_json": {
///             "type": "string"
///         },
///         "source_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "timestamp": {
///             "type": "string",
///             "format": "date-time"
///         }
///     },
///     "type": "object",
///     "required": [
///         "change_id",
///         "change_type",
///         "entity_id",
///         "entity_name",
///         "etag",
///         "new_data_json",
///         "source_id",
///         "timestamp"
///     ],
///     "additionalProperties": false
/// }
library change;

import 'exports.dart';
part 'change.freezed.dart';
part 'change.g.dart'; // Change

@freezed
abstract class Change with _$Change {
  const Change._();

  @jsonSerializable
  const factory Change({
    /// changeId
    @JsonKey(name: Change.changeIdKey_) required String changeId,

    /// entityName
    @JsonKey(name: Change.entityNameKey_) required String entityName,

    /// entityId
    @JsonKey(name: Change.entityIdKey_) required List<dynamic> entityId,

    /// changeType
    @JsonKey(name: Change.changeTypeKey_) required ChangeType changeType,

    /// etag
    @JsonKey(name: Change.etagKey_) required int etag,

    /// newDataJson
    @JsonKey(name: Change.newDataJsonKey_) required String newDataJson,

    /// sourceId
    @JsonKey(name: Change.sourceIdKey_) required String sourceId,

    /// timestamp
    @JsonKey(name: Change.timestampKey_) required DateTime timestamp,
  }) = _Change;

  factory Change.fromJson(Map<String, dynamic> json) => _$ChangeFromJson(json);

  static const String changeIdKey_ = r'change_id';

  static const String entityNameKey_ = r'entity_name';

  static const String entityIdKey_ = r'entity_id';

  static const String changeTypeKey_ = r'change_type';

  static const String etagKey_ = r'etag';

  static const String newDataJsonKey_ = r'new_data_json';

  static const String sourceIdKey_ = r'source_id';

  static const String timestampKey_ = r'timestamp';
}
