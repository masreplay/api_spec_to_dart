/// PostmanScriptExec
///
/// ```json
/// {
///     "oneOf": [
///         {
///             "type": "array",
///             "items": {
///                 "type": "string"
///             },
///             "description": "This is an array of strings, where each line represents a single line of code. Having lines separate makes it possible to easily track changes made to scripts."
///         },
///         {
///             "type": "string"
///         }
///     ]
/// }
/// ```
library;

import 'exports.dart';
part 'postman_script_exec.g.dart';

sealed class PostmanScriptExec {
  const PostmanScriptExec();

  const factory PostmanScriptExec.list(List<String> value) =
      PostmanScriptExecList;
  const factory PostmanScriptExec.string(String value) =
      PostmanScriptExecString;

  factory PostmanScriptExec.fromJson(Object? json) => switch (json) {
    String() => PostmanScriptExecString(json),
    List() => _$PostmanScriptExecListFromJson({'value': json}),
    _ => throw ArgumentError.value(
      json,
      'json',
      'No PostmanScriptExec variant matches',
    ),
  };

  Object? toJson();
}

@jsonSerializable
final class PostmanScriptExecList extends PostmanScriptExec {
  const PostmanScriptExecList(this.value);

  @JsonKey(name: 'value')
  final List<String> value;

  @override
  Object? toJson() => _$PostmanScriptExecListToJson(this)['value'];

  @override
  bool operator ==(Object other) =>
      other is PostmanScriptExecList &&
      const DeepCollectionEquality().equals(other.value, value);

  @override
  int get hashCode => const DeepCollectionEquality().hash(value);

  @override
  String toString() => 'PostmanScriptExec.list($value)';
}

final class PostmanScriptExecString extends PostmanScriptExec {
  const PostmanScriptExecString(this.value);

  final String value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is PostmanScriptExecString && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanScriptExec.string($value)';
}
