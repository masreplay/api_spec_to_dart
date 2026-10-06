/// PostmanHost
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
///                 "type": "string"
///             },
///             "description": "The host, split into subdomain strings."
///         }
///     ],
///     "description": "The host for the URL, E.g: api.yourdomain.com. Can be stored as a string or as an array of strings.",
///     "title": "Host"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_host.g.dart';

sealed class PostmanHost {
  const PostmanHost();

  const factory PostmanHost.string(String value) = PostmanHostString;
  const factory PostmanHost.list(List<String> value) = PostmanHostList;

  factory PostmanHost.fromJson(Object? json) => switch (json) {
    String() => PostmanHostString(json),
    List() => _$PostmanHostListFromJson({'value': json}),
    _ => throw ArgumentError.value(
      json,
      'json',
      'No PostmanHost variant matches',
    ),
  };

  Object? toJson();
}

final class PostmanHostString extends PostmanHost {
  const PostmanHostString(this.value);

  final String value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is PostmanHostString && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanHost.string($value)';
}

@jsonSerializable
final class PostmanHostList extends PostmanHost {
  const PostmanHostList(this.value);

  @JsonKey(name: 'value')
  final List<String> value;

  @override
  Object? toJson() => _$PostmanHostListToJson(this)['value'];

  @override
  bool operator ==(Object other) =>
      other is PostmanHostList &&
      const DeepCollectionEquality().equals(other.value, value);

  @override
  int get hashCode => const DeepCollectionEquality().hash(value);

  @override
  String toString() => 'PostmanHost.list($value)';
}
