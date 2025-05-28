/// ValidationValidationConditionalQueryParameters
/// {
///     "properties": {
///         "user_id": {
///             "anyOf": [
///                 {
///                     "type": "integer"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "description": "User ID",
///             "title": "User Id"
///         },
///         "username": {
///             "anyOf": [
///                 {
///                     "type": "string",
///                     "minLength": 3
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "description": "Username",
///             "title": "Username"
///         }
///     },
///     "type": "object"
/// }
library;

import 'exports.dart';
part 'validation_validation_conditional_query_parameters.freezed.dart';
part 'validation_validation_conditional_query_parameters.g.dart'; // ValidationValidationConditionalQueryParameters

@freezed
abstract class ValidationValidationConditionalQueryParameters
    with _$ValidationValidationConditionalQueryParameters {
  const ValidationValidationConditionalQueryParameters._();

  @jsonSerializable
  const factory ValidationValidationConditionalQueryParameters({
    /// userId
    @JsonKey(name: ValidationValidationConditionalQueryParameters.userIdKey)
    required int? userId,

    /// username
    @JsonKey(name: ValidationValidationConditionalQueryParameters.usernameKey)
    required String? username,
  }) = _ValidationValidationConditionalQueryParameters;

  factory ValidationValidationConditionalQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$ValidationValidationConditionalQueryParametersFromJson(json);

  static const String userIdKey = r'user_id';

  static const String usernameKey = r'username';
}
