/// ModelsResponseMultipleQueryParameters
/// {
///     "properties": {
///         "is_user": {
///             "type": "boolean",
///             "description": "Whether to return a user or location",
///             "default": true,
///             "title": "Is User"
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library models_response_multiple_query_parameters;

import 'exports.dart';
part 'models_response_multiple_query_parameters.freezed.dart';
part 'models_response_multiple_query_parameters.g.dart'; // ModelsResponseMultipleQueryParameters

@freezed
abstract class ModelsResponseMultipleQueryParameters
    with _$ModelsResponseMultipleQueryParameters {
  const ModelsResponseMultipleQueryParameters._();

  @jsonSerializable
  const factory ModelsResponseMultipleQueryParameters({
    /// isUser
    @Default(true)
    @JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey_)
    bool isUser,
  }) = _ModelsResponseMultipleQueryParameters;

  factory ModelsResponseMultipleQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$ModelsResponseMultipleQueryParametersFromJson(json);

  static const String isUserKey_ = r'is_user';
}
