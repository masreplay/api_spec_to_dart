/// description
///
/// ```json
/// {
///     "description": "A Description can be a raw text, or be an object, which holds the description along with its format.",
///     "oneOf": [
///         {
///             "type": "object",
///             "properties": {
///                 "content": {
///                     "type": "string",
///                     "description": "The content of the description goes here, as a raw string."
///                 },
///                 "type": {
///                     "type": "string",
///                     "description": "Holds the mime type of the raw description content. E.g: 'text/markdown' or 'text/html'.\nThe type is used to correctly render the description when generating documentation, or in the Postman app."
///                 },
///                 "version": {
///                     "description": "Description can have versions associated with it, which should be put in this property."
///                 }
///             },
///             "title": "Description"
///         },
///         {
///             "type": "string"
///         },
///         {
///             "type": "null"
///         }
///     ]
/// }
/// ```
library;

import 'exports.dart';

sealed class PostmanDescription {
  const PostmanDescription();

  const factory PostmanDescription.object(PostmanDescriptionObjectValue value) =
      PostmanDescriptionObject;
  const factory PostmanDescription.string(String value) =
      PostmanDescriptionString;

  factory PostmanDescription.fromJson(Object? json) => switch (json) {
    String() => PostmanDescriptionString(json),
    Map<String, dynamic>() => PostmanDescriptionObject(
      PostmanDescriptionObjectValue.fromJson(json),
    ),
    _ => throw ArgumentError.value(
      json,
      'json',
      'No PostmanDescription variant matches',
    ),
  };

  Object? toJson();
}

final class PostmanDescriptionObject extends PostmanDescription {
  const PostmanDescriptionObject(this.value);

  final PostmanDescriptionObjectValue value;

  @override
  Object? toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is PostmanDescriptionObject && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanDescription.object($value)';
}

final class PostmanDescriptionString extends PostmanDescription {
  const PostmanDescriptionString(this.value);

  final String value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is PostmanDescriptionString && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanDescription.string($value)';
}
