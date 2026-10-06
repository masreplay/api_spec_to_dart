/// PostmanUrlObjectValuePathListValueItemObjectValue
///
/// ```json
/// {
///     "properties": {
///         "type": {
///             "type": "string"
///         },
///         "value": {
///             "type": "string"
///         }
///     },
///     "type": "object"
/// }
/// ```
library;

import 'exports.dart';
part 'postman_url_object_value_path_list_value_item_object_value.freezed.dart';
part 'postman_url_object_value_path_list_value_item_object_value.g.dart';

@freezed
abstract class PostmanUrlObjectValuePathListValueItemObjectValue
    with _$PostmanUrlObjectValuePathListValueItemObjectValue {
  const PostmanUrlObjectValuePathListValueItemObjectValue._();

  @jsonSerializable
  const factory PostmanUrlObjectValuePathListValueItemObjectValue({
    /// type
    @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.typeKey_)
    String? type,

    /// value
    @JsonKey(name: PostmanUrlObjectValuePathListValueItemObjectValue.valueKey_)
    String? value,
  }) = _PostmanUrlObjectValuePathListValueItemObjectValue;

  factory PostmanUrlObjectValuePathListValueItemObjectValue.fromJson(
    Map<String, dynamic> json,
  ) => _$PostmanUrlObjectValuePathListValueItemObjectValueFromJson(json);

  static const String typeKey_ = 'type';

  static const String valueKey_ = 'value';
}
