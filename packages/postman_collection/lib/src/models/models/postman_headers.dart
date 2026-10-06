/// PostmanHeaders
///
/// ```json
/// {
///     "oneOf": [
///         {
///             "type": "array",
///             "items": {
///                 "oneOf": [
///                     {
///                         "$ref": "#/components/schemas/header"
///                     },
///                     {
///                         "type": "string",
///                         "title": "Header"
///                     }
///                 ]
///             },
///             "description": "No HTTP request is complete without its headers, and the same is true for a Postman request. This field is an array containing all the headers.",
///             "title": "Header"
///         },
///         {
///             "type": "string",
///             "nullable": true
///         }
///     ],
///     "title": "Headers"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_headers.g.dart';

sealed class PostmanHeaders {
  const PostmanHeaders();

  const factory PostmanHeaders.list(List<PostmanHeadersListValueItem> value) =
      PostmanHeadersList;
  const factory PostmanHeaders.string(String value) = PostmanHeadersString;

  factory PostmanHeaders.fromJson(Object? json) => switch (json) {
    String() => PostmanHeadersString(json),
    List() => _$PostmanHeadersListFromJson({'value': json}),
    _ => throw ArgumentError.value(
      json,
      'json',
      'No PostmanHeaders variant matches',
    ),
  };

  Object? toJson();
}

@jsonSerializable
final class PostmanHeadersList extends PostmanHeaders {
  const PostmanHeadersList(this.value);

  @JsonKey(name: 'value')
  final List<PostmanHeadersListValueItem> value;

  @override
  Object? toJson() => _$PostmanHeadersListToJson(this)['value'];

  @override
  bool operator ==(Object other) =>
      other is PostmanHeadersList &&
      const DeepCollectionEquality().equals(other.value, value);

  @override
  int get hashCode => const DeepCollectionEquality().hash(value);

  @override
  String toString() => 'PostmanHeaders.list($value)';
}

final class PostmanHeadersString extends PostmanHeaders {
  const PostmanHeadersString(this.value);

  final String value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is PostmanHeadersString && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanHeaders.string($value)';
}
