/// AllTypesWithValidation
/// {
///     "properties": {
///         "int_value": {
///             "type": "integer",
///             "description": "Integer between 1-99",
///             "title": "Integer Value"
///         },
///         "float_value": {
///             "type": "number",
///             "description": "Pi or other values",
///             "title": "Float Value"
///         },
///         "str_value": {
///             "type": "string",
///             "maxLength": 50,
///             "minLength": 3,
///             "description": "String with alphanumeric characters, underscores and hyphens",
///             "pattern": "^[a-zA-Z0-9_-]+$",
///             "title": "Str Value"
///         },
///         "bool_value": {
///             "type": "boolean",
///             "description": "Boolean value",
///             "title": "Bool Value"
///         },
///         "email_value": {
///             "type": "string",
///             "format": "email",
///             "description": "Valid email address",
///             "title": "Email Value"
///         },
///         "url_value": {
///             "type": "string",
///             "maxLength": 2083,
///             "minLength": 1,
///             "format": "uri",
///             "description": "Valid HTTP URL",
///             "title": "Url Value"
///         },
///         "list_value": {
///             "type": "array",
///             "items": {
///                 "type": "string"
///             },
///             "description": "list with 1-5 strings",
///             "title": "List Value"
///         }
///     },
///     "type": "object",
///     "required": [
///         "int_value",
///         "float_value",
///         "str_value",
///         "bool_value",
///         "email_value",
///         "url_value",
///         "list_value"
///     ],
///     "title": "AllTypesWithValidation"
/// }
library all_types_with_validation;

import 'exports.dart';
part 'all_types_with_validation.freezed.dart';
part 'all_types_with_validation.g.dart'; // AllTypesWithValidation

@freezed
abstract class AllTypesWithValidation with _$AllTypesWithValidation {
  const AllTypesWithValidation._();

  @jsonSerializable
  const factory AllTypesWithValidation({
    /// intValue
    @JsonKey(name: AllTypesWithValidation.intValueKey_) required int intValue,

    /// floatValue
    @JsonKey(name: AllTypesWithValidation.floatValueKey_)
    required double floatValue,

    /// strValue
    @JsonKey(name: AllTypesWithValidation.strValueKey_)
    required String strValue,

    /// boolValue
    @JsonKey(name: AllTypesWithValidation.boolValueKey_)
    required bool boolValue,

    /// emailValue
    @JsonKey(name: AllTypesWithValidation.emailValueKey_)
    required String emailValue,

    /// urlValue
    @JsonKey(name: AllTypesWithValidation.urlValueKey_) required Uri urlValue,

    /// listValue
    @JsonKey(name: AllTypesWithValidation.listValueKey_)
    required List<String> listValue,
  }) = _AllTypesWithValidation;

  factory AllTypesWithValidation.fromJson(Map<String, dynamic> json) =>
      _$AllTypesWithValidationFromJson(json);

  static const String intValueKey_ = r'int_value';

  static const String floatValueKey_ = r'float_value';

  static const String strValueKey_ = r'str_value';

  static const String boolValueKey_ = r'bool_value';

  static const String emailValueKey_ = r'email_value';

  static const String urlValueKey_ = r'url_value';

  static const String listValueKey_ = r'list_value';
}
