/// event
///
/// ```json
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "description": "A unique identifier for the enclosing event."
///         },
///         "listen": {
///             "type": "string",
///             "description": "Can be set to `test` or `prerequest` for test scripts or pre-request scripts respectively."
///         },
///         "script": {
///             "$ref": "#/components/schemas/script"
///         },
///         "disabled": {
///             "type": "boolean",
///             "description": "Indicates whether the event is disabled. If absent, the event is assumed to be enabled.",
///             "default": false
///         }
///     },
///     "type": "object",
///     "required": [
///         "listen"
///     ],
///     "description": "Defines a script associated with an associated event name"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_event.freezed.dart';
part 'postman_event.g.dart';

@freezed
abstract class PostmanEvent with _$PostmanEvent {
  const PostmanEvent._();

  @jsonSerializable
  const factory PostmanEvent({
    /// id
    @JsonKey(name: PostmanEvent.idKey_) String? id,

    /// listen
    @JsonKey(name: PostmanEvent.listenKey_) required String listen,

    /// script
    @JsonKey(name: PostmanEvent.scriptKey_) PostmanScript? script,

    /// disabled
    @Default(false) @JsonKey(name: PostmanEvent.disabledKey_) bool disabled,
  }) = _PostmanEvent;

  factory PostmanEvent.fromJson(Map<String, dynamic> json) =>
      _$PostmanEventFromJson(json);

  static const String idKey_ = 'id';

  static const String listenKey_ = 'listen';

  static const String scriptKey_ = 'script';

  static const String disabledKey_ = 'disabled';
}
