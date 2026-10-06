/// item
///
/// ```json
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "description": "A unique ID that is used to identify collections internally"
///         },
///         "name": {
///             "type": "string",
///             "description": "A human readable identifier for the current item."
///         },
///         "description": {
///             "$ref": "#/components/schemas/description"
///         },
///         "variable": {
///             "$ref": "#/components/schemas/variable-list"
///         },
///         "event": {
///             "$ref": "#/components/schemas/event-list"
///         },
///         "request": {
///             "$ref": "#/components/schemas/request"
///         },
///         "response": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/response"
///             },
///             "title": "Responses"
///         },
///         "protocolProfileBehavior": {
///             "$ref": "#/components/schemas/protocol-profile-behavior"
///         }
///     },
///     "type": "object",
///     "required": [
///         "request"
///     ],
///     "description": "Items are entities which contain an actual HTTP request, and sample responses attached to it."
/// }
/// ```
library;

import 'exports.dart';
part 'postman_item.freezed.dart';
part 'postman_item.g.dart';

@freezed
abstract class PostmanItem with _$PostmanItem {
  const PostmanItem._();

  @jsonSerializable
  const factory PostmanItem({
    /// id
    @JsonKey(name: PostmanItem.idKey_) String? id,

    /// name
    @JsonKey(name: PostmanItem.nameKey_) String? name,

    /// description
    @JsonKey(name: PostmanItem.descriptionKey_) PostmanDescription? description,

    /// variable
    @JsonKey(name: PostmanItem.variableKey_) PostmanVariableList? variable,

    /// event
    @JsonKey(name: PostmanItem.eventKey_) PostmanEventList? event,

    /// request
    @JsonKey(name: PostmanItem.requestKey_) required PostmanRequest request,

    /// response
    @JsonKey(name: PostmanItem.responseKey_) List<PostmanResponse>? response,

    /// protocolProfileBehavior
    @JsonKey(name: PostmanItem.protocolProfileBehaviorKey_)
    PostmanProtocolProfileBehavior? protocolProfileBehavior,
  }) = _PostmanItem;

  factory PostmanItem.fromJson(Map<String, dynamic> json) =>
      _$PostmanItemFromJson(json);

  static const String idKey_ = 'id';

  static const String nameKey_ = 'name';

  static const String descriptionKey_ = 'description';

  static const String variableKey_ = 'variable';

  static const String eventKey_ = 'event';

  static const String requestKey_ = 'request';

  static const String responseKey_ = 'response';

  static const String protocolProfileBehaviorKey_ = 'protocolProfileBehavior';
}
