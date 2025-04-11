import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'all_types_with_validation.freezed.dart';
part 'all_types_with_validation.g.dart';

/// AllTypesWithValidation
@freezed
abstract class AllTypesWithValidation with _$AllTypesWithValidation {
  const AllTypesWithValidation._();

  static const String intValueKey = 'int_value';
  static const String floatValueKey = 'float_value';
  static const String strValueKey = 'str_value';
  static const String boolValueKey = 'bool_value';
  static const String emailValueKey = 'email_value';
  static const String urlValueKey = 'url_value';
  static const String listValueKey = 'list_value';

  @JsonSerializable(converters: convertors)
  const factory AllTypesWithValidation({
    /// int_value, Integer between 1-99
    @JsonKey(name: AllTypesWithValidation.intValueKey) required int intValue,

    /// float_value, Pi or other values
    @JsonKey(name: AllTypesWithValidation.floatValueKey)
    required double floatValue,

    /// str_value, String with alphanumeric characters, underscores and hyphens
    @JsonKey(name: AllTypesWithValidation.strValueKey) required String strValue,

    /// bool_value, Boolean value
    @JsonKey(name: AllTypesWithValidation.boolValueKey) required bool boolValue,

    /// email_value, Valid email address
    @JsonKey(name: AllTypesWithValidation.emailValueKey)
    required String emailValue,

    /// url_value, Valid HTTP URL
    @JsonKey(name: AllTypesWithValidation.urlValueKey) required Uri urlValue,

    /// list_value, List with 1-5 strings
    @JsonKey(name: AllTypesWithValidation.listValueKey)
    required List<String> listValue,
  }) = _AllTypesWithValidation;

  factory AllTypesWithValidation.fromJson(Map<String, dynamic> json) =>
      _$AllTypesWithValidationFromJson(json);
}
