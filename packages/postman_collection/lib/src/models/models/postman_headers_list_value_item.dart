/// PostmanHeadersListValueItem
///
/// ```json
/// {
///     "oneOf": [
///         {
///             "$ref": "#/components/schemas/header"
///         },
///         {
///             "type": "string",
///             "title": "Header"
///         }
///     ]
/// }
/// ```
library;

import 'exports.dart';

sealed class PostmanHeadersListValueItem {
  const PostmanHeadersListValueItem();

  const factory PostmanHeadersListValueItem.header(PostmanHeader value) =
      PostmanHeadersListValueItemHeader;
  const factory PostmanHeadersListValueItem.string(String value) =
      PostmanHeadersListValueItemString;

  factory PostmanHeadersListValueItem.fromJson(Object? json) => switch (json) {
    String() => PostmanHeadersListValueItemString(json),
    Map<String, dynamic>() => PostmanHeadersListValueItemHeader(
      PostmanHeader.fromJson(json),
    ),
    _ => throw ArgumentError.value(
      json,
      'json',
      'No PostmanHeadersListValueItem variant matches',
    ),
  };

  Object? toJson();
}

final class PostmanHeadersListValueItemHeader
    extends PostmanHeadersListValueItem {
  const PostmanHeadersListValueItemHeader(this.value);

  final PostmanHeader value;

  @override
  Object? toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is PostmanHeadersListValueItemHeader && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanHeadersListValueItem.header($value)';
}

final class PostmanHeadersListValueItemString
    extends PostmanHeadersListValueItem {
  const PostmanHeadersListValueItemString(this.value);

  final String value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is PostmanHeadersListValueItemString && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanHeadersListValueItem.string($value)';
}
