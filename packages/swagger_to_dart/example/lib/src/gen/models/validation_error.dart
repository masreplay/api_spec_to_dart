import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'validation_error.freezed.dart';
part 'validation_error.g.dart';

/// ValidationError
@freezed
abstract class ValidationError with _$ValidationError {
  @JsonSerializable(converters: Convertors.convertors)
  const factory ValidationError({
    required List<ValidationErrorUnionType> loc,
    required String msg,
    required String type,
  }) = _ValidationError;

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);
}
