/// PostmanRequestObjectValueHeader
///
/// ```json
/// {
///     "oneOf": [
///         {
///             "$ref": "#/components/schemas/header-list"
///         },
///         {
///             "type": "string"
///         }
///     ]
/// }
/// ```
library;

import 'exports.dart';
part 'postman_request_object_value_header.g.dart';

sealed class PostmanRequestObjectValueHeader {
  const PostmanRequestObjectValueHeader();

  const factory PostmanRequestObjectValueHeader.headerList(
    PostmanHeaderList value,
  ) = PostmanRequestObjectValueHeaderHeaderList;
  const factory PostmanRequestObjectValueHeader.string(String value) =
      PostmanRequestObjectValueHeaderString;

  factory PostmanRequestObjectValueHeader.fromJson(Object? json) =>
      switch (json) {
        String() => PostmanRequestObjectValueHeaderString(json),
        List() => _$PostmanRequestObjectValueHeaderHeaderListFromJson({
          'value': json,
        }),
        _ => throw ArgumentError.value(
          json,
          'json',
          'No PostmanRequestObjectValueHeader variant matches',
        ),
      };

  Object? toJson();
}

@jsonSerializable
final class PostmanRequestObjectValueHeaderHeaderList
    extends PostmanRequestObjectValueHeader {
  const PostmanRequestObjectValueHeaderHeaderList(this.value);

  @JsonKey(name: 'value')
  final PostmanHeaderList value;

  @override
  Object? toJson() =>
      _$PostmanRequestObjectValueHeaderHeaderListToJson(this)['value'];

  @override
  bool operator ==(Object other) =>
      other is PostmanRequestObjectValueHeaderHeaderList &&
      const DeepCollectionEquality().equals(other.value, value);

  @override
  int get hashCode => const DeepCollectionEquality().hash(value);

  @override
  String toString() => 'PostmanRequestObjectValueHeader.headerList($value)';
}

final class PostmanRequestObjectValueHeaderString
    extends PostmanRequestObjectValueHeader {
  const PostmanRequestObjectValueHeaderString(this.value);

  final String value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is PostmanRequestObjectValueHeaderString && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanRequestObjectValueHeader.string($value)';
}
