/// ValidationError
/// {
///     "properties": {
///         "loc": {
///             "type": "array",
///             "items": {
///                 "anyOf": [
///                     {
///                         "type": "string"
///                     },
///                     {
///                         "type": "integer"
///                     }
///                 ]
///             },
///             "title": "Location"
///         },
///         "msg": {
///             "type": "string",
///             "title": "Message"
///         },
///         "type": {
///             "type": "string",
///             "title": "Error Type"
///         }
///     },
///     "type": "object",
///     "required": [
///         "loc",
///         "msg",
///         "type"
///     ],
///     "title": "ValidationError"
/// }
library validation_error;

import 'exports.dart';
part 'validation_error.freezed.dart';
part 'validation_error.g.dart'; // ValidationError

@freezed
abstract class ValidationError with _$ValidationError {
  const ValidationError._();

  @jsonSerializable
  const factory ValidationError({
    /// loc
    @JsonKey(name: ValidationError.locKey_) required List<dynamic> loc,

    /// msg
    @JsonKey(name: ValidationError.msgKey_) required String msg,

    /// type
    @JsonKey(name: ValidationError.typeKey_) required String type,
  }) = _ValidationError;

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);

  static const String locKey_ = r'loc';

  static const String msgKey_ = r'msg';

  static const String typeKey_ = r'type';
}
