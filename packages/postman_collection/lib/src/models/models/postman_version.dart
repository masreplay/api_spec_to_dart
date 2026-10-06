/// version
///
/// ```json
/// {
///     "description": "Postman allows you to version your collections as they grow, and this field holds the version number. While optional, it is recommended that you use this field to its fullest extent!",
///     "oneOf": [
///         {
///             "type": "object",
///             "properties": {
///                 "major": {
///                     "type": "integer",
///                     "description": "Increment this number if you make changes to the collection that changes its behaviour. E.g: Removing or adding new test scripts. (partly or completely)."
///                 },
///                 "minor": {
///                     "type": "integer",
///                     "description": "You should increment this number if you make changes that will not break anything that uses the collection. E.g: removing a folder."
///                 },
///                 "patch": {
///                     "type": "integer",
///                     "description": "Ideally, minor changes to a collection should result in the increment of this number."
///                 },
///                 "identifier": {
///                     "type": "string",
///                     "maxLength": 10,
///                     "description": "A human friendly identifier to make sense of the version numbers. E.g: 'beta-3'"
///                 },
///                 "meta": {}
///             },
///             "required": [
///                 "major",
///                 "minor",
///                 "patch"
///             ]
///         },
///         {
///             "type": "string"
///         }
///     ]
/// }
/// ```
library;

import 'exports.dart';

sealed class PostmanVersion {
  const PostmanVersion();

  const factory PostmanVersion.object(PostmanVersionObjectValue value) =
      PostmanVersionObject;
  const factory PostmanVersion.string(String value) = PostmanVersionString;

  factory PostmanVersion.fromJson(Object? json) => switch (json) {
    String() => PostmanVersionString(json),
    Map<String, dynamic>() => PostmanVersionObject(
      PostmanVersionObjectValue.fromJson(json),
    ),
    _ => throw ArgumentError.value(
      json,
      'json',
      'No PostmanVersion variant matches',
    ),
  };

  Object? toJson();
}

final class PostmanVersionObject extends PostmanVersion {
  const PostmanVersionObject(this.value);

  final PostmanVersionObjectValue value;

  @override
  Object? toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is PostmanVersionObject && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanVersion.object($value)';
}

final class PostmanVersionString extends PostmanVersion {
  const PostmanVersionString(this.value);

  final String value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is PostmanVersionString && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanVersion.string($value)';
}
