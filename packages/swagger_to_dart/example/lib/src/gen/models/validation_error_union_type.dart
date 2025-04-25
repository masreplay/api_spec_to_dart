import 'package:freezed_annotation/freezed_annotation.dart';
part 'validation_error_union_type.freezed.dart';

@freezed
abstract class ValidationErrorUnionType with _$ValidationErrorUnionType {
  factory ValidationErrorUnionType.string(String value) =
      ValidationErrorUnionTypeString;

  factory ValidationErrorUnionType.int(int value) = ValidationErrorUnionTypeInt;

  factory ValidationErrorUnionType.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorUnionTypeFromJson(json);
}
