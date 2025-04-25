import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'all_types_with_validation.freezed.dart';
part 'all_types_with_validation.g.dart';

/// AllTypesWithValidation
@freezed
abstract class AllTypesWithValidation with _$AllTypesWithValidation {
  @JsonSerializable(converters: Convertors.convertors)
  const factory AllTypesWithValidation({
    required int intValue,
    required double floatValue,
    required String strValue,
    required bool boolValue,
    required String emailValue,
    required String urlValue,
    required List<String> listValue,
  }) = _AllTypesWithValidation;

  factory AllTypesWithValidation.fromJson(Map<String, dynamic> json) =>
      _$AllTypesWithValidationFromJson(json);
}
