library all_types_with_validation.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'all_types_with_validation.freezed.dart';
part 'all_types_with_validation.g.dart'; // AllTypesWithValidation

@freezed
abstract class AllTypesWithValidation with _$AllTypesWithValidation {
  const AllTypesWithValidation._();

  const factory AllTypesWithValidation() = _AllTypesWithValidation;

  factory AllTypesWithValidation.fromJson(Map<String, dynamic> json) =>
      _$AllTypesWithValidationFromJson(json);
}
