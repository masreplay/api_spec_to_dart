/// info
///
/// ```json
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "description": "A collection's friendly name is defined by this field. You would want to set this field to a value that would allow you to easily identify this collection among a bunch of other collections, as such outlining its usage or content.",
///             "title": "Name of the collection"
///         },
///         "_postman_id": {
///             "type": "string",
///             "description": "Every collection is identified by the unique value of this field. The value of this field is usually easiest to generate using a UID generator function. If you already have a collection, it is recommended that you maintain the same id since changing the id usually implies that is a different collection than it was originally.\n *Note: This field exists for compatibility reasons with Collection Format V1.*"
///         },
///         "description": {
///             "$ref": "#/components/schemas/description"
///         },
///         "version": {
///             "$ref": "#/components/schemas/version"
///         },
///         "schema": {
///             "type": "string",
///             "description": "This should ideally hold a link to the Postman schema that is used to validate this collection. E.g: https://schema.getpostman.com/collection/v1"
///         }
///     },
///     "type": "object",
///     "required": [
///         "name",
///         "schema"
///     ],
///     "description": "Detailed description of the info block"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_info.freezed.dart';
part 'postman_info.g.dart';

@freezed
abstract class PostmanInfo with _$PostmanInfo {
  const PostmanInfo._();

  @jsonSerializable
  const factory PostmanInfo({
    /// name
    @JsonKey(name: PostmanInfo.nameKey_) required String name,

    /// postmanId
    @JsonKey(name: PostmanInfo.postmanIdKey_) String? postmanId,

    /// description
    @JsonKey(name: PostmanInfo.descriptionKey_) PostmanDescription? description,

    /// version
    @JsonKey(name: PostmanInfo.versionKey_) PostmanVersion? version,

    /// schema
    @JsonKey(name: PostmanInfo.schemaKey_) required String schema,
  }) = _PostmanInfo;

  factory PostmanInfo.fromJson(Map<String, dynamic> json) =>
      _$PostmanInfoFromJson(json);

  static const String nameKey_ = 'name';

  static const String postmanIdKey_ = '_postman_id';

  static const String descriptionKey_ = 'description';

  static const String versionKey_ = 'version';

  static const String schemaKey_ = 'schema';
}
