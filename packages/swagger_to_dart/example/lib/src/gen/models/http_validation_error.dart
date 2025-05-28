/// HTTPValidationError
/// {
///     "properties": {
///         "detail": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/ValidationError"
///             },
///             "title": "Detail"
///         }
///     },
///     "type": "object",
///     "title": "HTTPValidationError"
/// }
library;

import 'exports.dart';
part 'http_validation_error.freezed.dart';
part 'http_validation_error.g.dart'; // HttpValidationError

@freezed
abstract class HttpValidationError with _$HttpValidationError {
  const HttpValidationError._();

  @jsonSerializable
  const factory HttpValidationError({
    /// detail
    @JsonKey(name: HttpValidationError.detailKey)
    required List<ValidationError> detail,
  }) = _HttpValidationError;

  factory HttpValidationError.fromJson(Map<String, dynamic> json) =>
      _$HttpValidationErrorFromJson(json);

  static const String detailKey = r'detail';
}
