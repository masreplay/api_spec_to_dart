/// PostmanUrlObjectValuePath
///
/// ```json
/// {
///     "oneOf": [
///         {
///             "type": "string"
///         },
///         {
///             "type": "array",
///             "items": {
///                 "oneOf": [
///                     {
///                         "type": "string"
///                     },
///                     {
///                         "type": "object",
///                         "properties": {
///                             "type": {
///                                 "type": "string"
///                             },
///                             "value": {
///                                 "type": "string"
///                             }
///                         }
///                     }
///                 ]
///             },
///             "description": "The complete path of the current url, broken down into segments. A segment could be a string, or a path variable."
///         }
///     ]
/// }
/// ```
library;

import 'exports.dart';
part 'postman_url_object_value_path.g.dart';

sealed class PostmanUrlObjectValuePath {
  const PostmanUrlObjectValuePath();

  const factory PostmanUrlObjectValuePath.string(String value) =
      PostmanUrlObjectValuePathString;
  const factory PostmanUrlObjectValuePath.list(
    List<PostmanUrlObjectValuePathListValueItem> value,
  ) = PostmanUrlObjectValuePathList;

  factory PostmanUrlObjectValuePath.fromJson(Object? json) => switch (json) {
    String() => PostmanUrlObjectValuePathString(json),
    List() => _$PostmanUrlObjectValuePathListFromJson({'value': json}),
    _ => throw ArgumentError.value(
      json,
      'json',
      'No PostmanUrlObjectValuePath variant matches',
    ),
  };

  Object? toJson();
}

final class PostmanUrlObjectValuePathString extends PostmanUrlObjectValuePath {
  const PostmanUrlObjectValuePathString(this.value);

  final String value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is PostmanUrlObjectValuePathString && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanUrlObjectValuePath.string($value)';
}

@jsonSerializable
final class PostmanUrlObjectValuePathList extends PostmanUrlObjectValuePath {
  const PostmanUrlObjectValuePathList(this.value);

  @JsonKey(name: 'value')
  final List<PostmanUrlObjectValuePathListValueItem> value;

  @override
  Object? toJson() => _$PostmanUrlObjectValuePathListToJson(this)['value'];

  @override
  bool operator ==(Object other) =>
      other is PostmanUrlObjectValuePathList &&
      const DeepCollectionEquality().equals(other.value, value);

  @override
  int get hashCode => const DeepCollectionEquality().hash(value);

  @override
  String toString() => 'PostmanUrlObjectValuePath.list($value)';
}
