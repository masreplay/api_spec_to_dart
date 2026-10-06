/// variable
///
/// ```json
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "description": "A variable ID is a unique user-defined value that identifies the variable within a collection. In traditional terms, this would be a variable name."
///         },
///         "key": {
///             "type": "string",
///             "description": "A variable key is a human friendly value that identifies the variable within a collection. In traditional terms, this would be a variable name."
///         },
///         "value": {
///             "description": "The value that a variable holds in this collection. Ultimately, the variables will be replaced by this value, when say running a set of requests from a collection"
///         },
///         "type": {
///             "enum": [
///                 "string",
///                 "boolean",
///                 "any",
///                 "number"
///             ],
///             "type": "string",
///             "description": "A variable may have multiple types. This field specifies the type of the variable."
///         },
///         "name": {
///             "type": "string",
///             "description": "Variable name"
///         },
///         "description": {
///             "$ref": "#/components/schemas/description"
///         },
///         "system": {
///             "type": "boolean",
///             "description": "When set to true, indicates that this variable has been set by Postman",
///             "default": false
///         },
///         "disabled": {
///             "type": "boolean",
///             "default": false
///         }
///     },
///     "type": "object",
///     "description": "Using variables in your Postman requests eliminates the need to duplicate requests, which can save a lot of time. Variables can be defined, and referenced to from any part of a request.",
///     "anyOf": [
///         {
///             "required": [
///                 "id"
///             ]
///         },
///         {
///             "required": [
///                 "key"
///             ]
///         },
///         {
///             "required": [
///                 "id",
///                 "key"
///             ]
///         }
///     ]
/// }
/// ```
library;

import 'exports.dart';
part 'postman_variable.freezed.dart';
part 'postman_variable.g.dart';

@freezed
abstract class PostmanVariable with _$PostmanVariable {
  const PostmanVariable._();

  @jsonSerializable
  const factory PostmanVariable({
    /// id
    @JsonKey(name: PostmanVariable.idKey_) String? id,

    /// key
    @JsonKey(name: PostmanVariable.keyKey_) String? key,

    /// value
    @JsonKey(name: PostmanVariable.valueKey_) dynamic value,

    /// type
    @JsonKey(name: PostmanVariable.typeKey_) PostmanVariableType? type,

    /// name
    @JsonKey(name: PostmanVariable.nameKey_) String? name,

    /// description
    @JsonKey(name: PostmanVariable.descriptionKey_)
    PostmanDescription? description,

    /// system
    @Default(false) @JsonKey(name: PostmanVariable.systemKey_) bool system,

    /// disabled
    @Default(false) @JsonKey(name: PostmanVariable.disabledKey_) bool disabled,
  }) = _PostmanVariable;

  factory PostmanVariable.fromJson(Map<String, dynamic> json) =>
      _$PostmanVariableFromJson(json);

  static const String idKey_ = 'id';

  static const String keyKey_ = 'key';

  static const String valueKey_ = 'value';

  static const String typeKey_ = 'type';

  static const String nameKey_ = 'name';

  static const String descriptionKey_ = 'description';

  static const String systemKey_ = 'system';

  static const String disabledKey_ = 'disabled';
}
