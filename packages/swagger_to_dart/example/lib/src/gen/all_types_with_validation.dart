library;

import 'package:freezed_annotation/freezed_annotation.dart';
part 'all_types_with_validation.freezed.dart';
part 'all_types_with_validation.g.dart'; // AllTypesWithValidation

@freezed
abstract class AllTypesWithValidation with _$AllTypesWithValidation {
  const AllTypesWithValidation._();

  const factory AllTypesWithValidation({
    /// intValue
    @JsonKey(name: intValueKey) int intValue,

    /// floatValue
    @JsonKey(name: floatValueKey) double floatValue,

    /// strValue
    @JsonKey(name: strValueKey) String strValue,

    /// boolValue
    @JsonKey(name: boolValueKey) bool boolValue,

    /// emailValue
    @JsonKey(name: emailValueKey) String emailValue,

    /// urlValue
    @JsonKey(name: urlValueKey) Uri urlValue,

    /// listValue
    @JsonKey(name: listValueKey) List<String> listValue,
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
