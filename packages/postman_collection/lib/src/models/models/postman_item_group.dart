/// item-group
///
/// ```json
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "description": "A folder's friendly name is defined by this field. You would want to set this field to a value that would allow you to easily identify this folder."
///         },
///         "description": {
///             "$ref": "#/components/schemas/description"
///         },
///         "variable": {
///             "$ref": "#/components/schemas/variable-list"
///         },
///         "item": {
///             "type": "array",
///             "items": {
///                 "anyOf": [
///                     {
///                         "$ref": "#/components/schemas/item"
///                     },
///                     {
///                         "$ref": "#/components/schemas/item-group"
///                     }
///                 ],
///                 "title": "Items"
///             },
///             "description": "Items are entities which contain an actual HTTP request, and sample responses attached to it. Folders may contain many items."
///         },
///         "event": {
///             "$ref": "#/components/schemas/event-list"
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
///         "item"
///     ],
///     "description": "One of the primary goals of Postman is to organize the development of APIs. To this end, it is necessary to be able to group requests together. This can be achived using 'Folders'. A folder just is an ordered set of requests."
/// }
/// ```
library;

import 'exports.dart';
part 'postman_item_group.freezed.dart';
part 'postman_item_group.g.dart';

@freezed
abstract class PostmanItemGroup with _$PostmanItemGroup {
  const PostmanItemGroup._();

  @jsonSerializable
  const factory PostmanItemGroup({
    /// name
    @JsonKey(name: PostmanItemGroup.nameKey_) String? name,

    /// description
    @JsonKey(name: PostmanItemGroup.descriptionKey_)
    PostmanDescription? description,

    /// variable
    @JsonKey(name: PostmanItemGroup.variableKey_) PostmanVariableList? variable,

    /// item
    @JsonKey(name: PostmanItemGroup.itemKey_) required List<PostmanItems> item,

    /// event
    @JsonKey(name: PostmanItemGroup.eventKey_) PostmanEventList? event,

    /// auth
    @JsonKey(name: PostmanItemGroup.authKey_) PostmanAuth? auth,

    /// protocolProfileBehavior
    @JsonKey(name: PostmanItemGroup.protocolProfileBehaviorKey_)
    PostmanProtocolProfileBehavior? protocolProfileBehavior,
  }) = _PostmanItemGroup;

  factory PostmanItemGroup.fromJson(Map<String, dynamic> json) =>
      _$PostmanItemGroupFromJson(json);

  static const String nameKey_ = 'name';

  static const String descriptionKey_ = 'description';

  static const String variableKey_ = 'variable';

  static const String itemKey_ = 'item';

  static const String eventKey_ = 'event';

  static const String authKey_ = 'auth';

  static const String protocolProfileBehaviorKey_ = 'protocolProfileBehavior';
}
