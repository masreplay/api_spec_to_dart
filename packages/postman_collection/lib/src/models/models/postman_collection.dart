/// Collection
///
/// ```json
/// {
///     "properties": {
///         "info": {
///             "$ref": "#/components/schemas/info"
///         },
///         "item": {
///             "type": "array",
///             "items": {
///                 "oneOf": [
///                     {
///                         "$ref": "#/components/schemas/item"
///                     },
///                     {
///                         "$ref": "#/components/schemas/item-group"
///                     }
///                 ],
///                 "title": "Items"
///             },
///             "description": "Items are the basic unit for a Postman collection. You can think of them as corresponding to a single API endpoint. Each Item has one request and may have multiple API responses associated with it."
///         },
///         "event": {
///             "$ref": "#/components/schemas/event-list"
///         },
///         "variable": {
///             "$ref": "#/components/schemas/variable-list"
///         },
///         "auth": {
///             "oneOf": [
///                 {
///                     "type": "null"
///                 },
///                 {
///                     "$ref": "#/components/schemas/auth"
///                 }
///             ]
///         },
///         "protocolProfileBehavior": {
///             "$ref": "#/components/schemas/protocol-profile-behavior"
///         }
///     },
///     "type": "object",
///     "required": [
///         "info",
///         "item"
///     ]
/// }
/// ```
library;

import 'exports.dart';
part 'postman_collection.freezed.dart';
part 'postman_collection.g.dart';

@freezed
abstract class PostmanCollection with _$PostmanCollection {
  const PostmanCollection._();

  @jsonSerializable
  const factory PostmanCollection({
    /// info
    @JsonKey(name: PostmanCollection.infoKey_) required PostmanInfo info,

    /// item
    @JsonKey(name: PostmanCollection.itemKey_) required List<PostmanItems> item,

    /// event
    @JsonKey(name: PostmanCollection.eventKey_) PostmanEventList? event,

    /// variable
    @JsonKey(name: PostmanCollection.variableKey_)
    PostmanVariableList? variable,

    /// auth
    @JsonKey(name: PostmanCollection.authKey_) PostmanAuth? auth,

    /// protocolProfileBehavior
    @JsonKey(name: PostmanCollection.protocolProfileBehaviorKey_)
    PostmanProtocolProfileBehavior? protocolProfileBehavior,
  }) = _PostmanCollection;

  factory PostmanCollection.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionFromJson(json);

  static const String infoKey_ = 'info';

  static const String itemKey_ = 'item';

  static const String eventKey_ = 'event';

  static const String variableKey_ = 'variable';

  static const String authKey_ = 'auth';

  static const String protocolProfileBehaviorKey_ = 'protocolProfileBehavior';
}
