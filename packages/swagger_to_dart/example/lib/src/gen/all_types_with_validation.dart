library all_types_with_validation;

import 'exports.dart';
part 'all_types_with_validation.freezed.dart';
part 'all_types_with_validation.g.dart'; // AllTypesWithValidation

@freezed
abstract class AllTypesWithValidation with _$AllTypesWithValidation {
  const AllTypesWithValidation._();

  const factory AllTypesWithValidation({
    /// intValue
    @JsonKey(name: AllTypesWithValidation.intValueKey) required int intValue,

    /// floatValue
    @JsonKey(name: AllTypesWithValidation.floatValueKey)
    required double floatValue,

    /// strValue
    @JsonKey(name: AllTypesWithValidation.strValueKey) required String strValue,

    /// boolValue
    @JsonKey(name: AllTypesWithValidation.boolValueKey) required bool boolValue,

    /// emailValue
    @JsonKey(name: AllTypesWithValidation.emailValueKey)
    required String emailValue,

    /// urlValue
    @JsonKey(name: AllTypesWithValidation.urlValueKey) required Uri urlValue,

    /// listValue
    @JsonKey(name: AllTypesWithValidation.listValueKey)
    required List<String> listValue,
  }) = _AllTypesWithValidation;

  factory AllTypesWithValidation.fromJson(Map<String, dynamic> json) =>
      _$AllTypesWithValidationFromJson(json);

  static const String intValueKey = "intValue";

  static const String floatValueKey = "floatValue";

  static const String strValueKey = "strValue";

  static const String boolValueKey = "boolValue";

  static const String emailValueKey = "emailValue";

  static const String urlValueKey = "urlValue";

  static const String listValueKey = "listValue";
}
