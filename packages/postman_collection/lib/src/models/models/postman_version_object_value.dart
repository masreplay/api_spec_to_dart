/// PostmanVersionObjectValue
///
/// ```json
/// {
///     "properties": {
///         "major": {
///             "type": "integer",
///             "description": "Increment this number if you make changes to the collection that changes its behaviour. E.g: Removing or adding new test scripts. (partly or completely)."
///         },
///         "minor": {
///             "type": "integer",
///             "description": "You should increment this number if you make changes that will not break anything that uses the collection. E.g: removing a folder."
///         },
///         "patch": {
///             "type": "integer",
///             "description": "Ideally, minor changes to a collection should result in the increment of this number."
///         },
///         "identifier": {
///             "type": "string",
///             "maxLength": 10,
///             "description": "A human friendly identifier to make sense of the version numbers. E.g: 'beta-3'"
///         },
///         "meta": {}
///     },
///     "type": "object",
///     "required": [
///         "major",
///         "minor",
///         "patch"
///     ]
/// }
/// ```
library;

import 'exports.dart';
part 'postman_version_object_value.freezed.dart';
part 'postman_version_object_value.g.dart';

@freezed
abstract class PostmanVersionObjectValue with _$PostmanVersionObjectValue {
  const PostmanVersionObjectValue._();

  @jsonSerializable
  const factory PostmanVersionObjectValue({
    /// major
    @JsonKey(name: PostmanVersionObjectValue.majorKey_) required int major,

    /// minor
    @JsonKey(name: PostmanVersionObjectValue.minorKey_) required int minor,

    /// patch
    @JsonKey(name: PostmanVersionObjectValue.patchKey_) required int patch,

    /// identifier
    @JsonKey(name: PostmanVersionObjectValue.identifierKey_) String? identifier,

    /// meta
    @JsonKey(name: PostmanVersionObjectValue.metaKey_) dynamic meta,
  }) = _PostmanVersionObjectValue;

  factory PostmanVersionObjectValue.fromJson(Map<String, dynamic> json) =>
      _$PostmanVersionObjectValueFromJson(json);

  static const String majorKey_ = 'major';

  static const String minorKey_ = 'minor';

  static const String patchKey_ = 'patch';

  static const String identifierKey_ = 'identifier';

  static const String metaKey_ = 'meta';
}
