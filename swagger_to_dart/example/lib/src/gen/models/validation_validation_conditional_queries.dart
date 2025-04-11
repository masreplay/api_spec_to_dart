import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "validation_validation_conditional_queries.freezed.dart";
part "validation_validation_conditional_queries.g.dart";

/// validationValidationConditionalQueries
@freezed
abstract class ValidationValidationConditionalQueries
    with _$ValidationValidationConditionalQueries {
  const ValidationValidationConditionalQueries._();

  static const String userIdKey = "user_id";
  static const String usernameKey = "username";

  @JsonSerializable(converters: convertors)
  const factory ValidationValidationConditionalQueries({
    /// User Id, User ID
    @JsonKey(name: ValidationValidationConditionalQueries.userIdKey)
    required int? userId,

    /// Username, Username
    @JsonKey(name: ValidationValidationConditionalQueries.usernameKey)
    required String? username,
  }) = _ValidationValidationConditionalQueries;

  factory ValidationValidationConditionalQueries.fromJson(
    Map<String, dynamic> json,
  ) => _$ValidationValidationConditionalQueriesFromJson(json);
}
