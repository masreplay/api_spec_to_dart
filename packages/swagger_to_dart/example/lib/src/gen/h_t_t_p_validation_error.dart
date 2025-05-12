library h_t_t_p_validation_error;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'h_t_t_p_validation_error.freezed.dart';
part 'h_t_t_p_validation_error.g.dart'; // HTTPValidationError

@freezed
abstract class HTTPValidationError with _$HTTPValidationError {
  const HTTPValidationError._();

  const factory HTTPValidationError(
    /// detail
    @JsonKey(name: detailKey) List<ValidationError> detail,
  ) = _HTTPValidationError;

  factory HTTPValidationError.fromJson(Map<String, dynamic> json) =>
      _$HTTPValidationErrorFromJson(json);

  static const String detailKey = "detail";
}
