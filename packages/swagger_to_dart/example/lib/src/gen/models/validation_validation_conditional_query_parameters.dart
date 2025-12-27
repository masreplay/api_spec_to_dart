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
///     "type": "object",
///     "required": []
/// }
library validation_validation_conditional_query_parameters;

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
    @JsonKey(name: ValidationValidationConditionalQueryParameters.userIdKey_)
    int? userId,

    /// username
    @JsonKey(name: ValidationValidationConditionalQueryParameters.usernameKey_)
    String? username,
  }) = _ValidationValidationConditionalQueryParameters;

  factory ValidationValidationConditionalQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$ValidationValidationConditionalQueryParametersFromJson(json);

  static const String userIdKey_ = r'user_id';

  static const String usernameKey_ = r'username';
}
