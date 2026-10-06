/// PostmanFormParameterFileValueSrc
///
/// ```json
/// {
///     "oneOf": [
///         {
///             "type": "array"
///         },
///         {
///             "type": "string"
///         }
///     ],
///     "nullable": true
/// }
/// ```
library;

import 'exports.dart';

sealed class PostmanFormParameterFileValueSrc {
  const PostmanFormParameterFileValueSrc();

  const factory PostmanFormParameterFileValueSrc.list(List<dynamic> value) =
      PostmanFormParameterFileValueSrcList;
  const factory PostmanFormParameterFileValueSrc.string(String value) =
      PostmanFormParameterFileValueSrcString;

  factory PostmanFormParameterFileValueSrc.fromJson(Object? json) =>
      switch (json) {
        String() => PostmanFormParameterFileValueSrcString(json),
        List() => PostmanFormParameterFileValueSrcList(json),
        _ => throw ArgumentError.value(
          json,
          'json',
          'No PostmanFormParameterFileValueSrc variant matches',
        ),
      };

  Object? toJson();
}

final class PostmanFormParameterFileValueSrcList
    extends PostmanFormParameterFileValueSrc {
  const PostmanFormParameterFileValueSrcList(this.value);

  final List<dynamic> value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is PostmanFormParameterFileValueSrcList &&
      const DeepCollectionEquality().equals(other.value, value);

  @override
  int get hashCode => const DeepCollectionEquality().hash(value);

  @override
  String toString() => 'PostmanFormParameterFileValueSrc.list($value)';
}

final class PostmanFormParameterFileValueSrcString
    extends PostmanFormParameterFileValueSrc {
  const PostmanFormParameterFileValueSrcString(this.value);

  final String value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is PostmanFormParameterFileValueSrcString && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanFormParameterFileValueSrc.string($value)';
}
