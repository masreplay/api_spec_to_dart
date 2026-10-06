/// PostmanUrlObjectValuePathListValueItem
///
/// ```json
/// {
///     "oneOf": [
///         {
///             "type": "string"
///         },
///         {
///             "type": "object",
///             "properties": {
///                 "type": {
///                     "type": "string"
///                 },
///                 "value": {
///                     "type": "string"
///                 }
///             }
///         }
///     ]
/// }
/// ```
library;

import 'exports.dart';

sealed class PostmanUrlObjectValuePathListValueItem {
  const PostmanUrlObjectValuePathListValueItem();

  const factory PostmanUrlObjectValuePathListValueItem.string(String value) =
      PostmanUrlObjectValuePathListValueItemString;
  const factory PostmanUrlObjectValuePathListValueItem.object(
    PostmanUrlObjectValuePathListValueItemObjectValue value,
  ) = PostmanUrlObjectValuePathListValueItemObject;

  factory PostmanUrlObjectValuePathListValueItem.fromJson(Object? json) =>
      switch (json) {
        String() => PostmanUrlObjectValuePathListValueItemString(json),
        Map<String, dynamic>() => PostmanUrlObjectValuePathListValueItemObject(
          PostmanUrlObjectValuePathListValueItemObjectValue.fromJson(json),
        ),
        _ => throw ArgumentError.value(
          json,
          'json',
          'No PostmanUrlObjectValuePathListValueItem variant matches',
        ),
      };

  Object? toJson();
}

final class PostmanUrlObjectValuePathListValueItemString
    extends PostmanUrlObjectValuePathListValueItem {
  const PostmanUrlObjectValuePathListValueItemString(this.value);

  final String value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is PostmanUrlObjectValuePathListValueItemString &&
      other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanUrlObjectValuePathListValueItem.string($value)';
}

final class PostmanUrlObjectValuePathListValueItemObject
    extends PostmanUrlObjectValuePathListValueItem {
  const PostmanUrlObjectValuePathListValueItemObject(this.value);

  final PostmanUrlObjectValuePathListValueItemObjectValue value;

  @override
  Object? toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is PostmanUrlObjectValuePathListValueItemObject &&
      other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanUrlObjectValuePathListValueItem.object($value)';
}
