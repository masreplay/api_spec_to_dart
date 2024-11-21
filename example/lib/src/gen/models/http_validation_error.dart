import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'http_validation_error.freezed.dart';
part 'http_validation_error.g.dart';

@freezed
class HttpValidationError with _$HttpValidationError {
  const HttpValidationError._();

  @JsonSerializable(converters: convertors)
  const factory HttpValidationError({
    /// Detail
    @JsonKey(name: 'detail') required List<ValidationError> detail,
  }) = _HttpValidationError;

  factory HttpValidationError.fromJson(Map<String, dynamic> json) =>
      _$HttpValidationErrorFromJson(json);
}
