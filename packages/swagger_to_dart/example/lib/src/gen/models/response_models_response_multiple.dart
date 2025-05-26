/// ResponseModelsResponseMultiple
/// {
///     "anyOf": [
///         {
///             "$ref": "#/components/schemas/User"
///         },
///         {
///             "$ref": "#/components/schemas/Location"
///         }
///     ],
///     "title": "Response Models-Response Multiple",
///     "runtimeType": "anyOf"
/// }
library;

import 'exports.dart';
part 'response_models_response_multiple.freezed.dart';
part 'response_models_response_multiple.g.dart'; // ResponseModelsResponseMultiple

@freezed
sealed class ResponseModelsResponseMultiple
    with _$ResponseModelsResponseMultiple {
  const ResponseModelsResponseMultiple._();

  @jsonSerializable
  @FreezedUnionValue("#/components/schemas/User")
  const factory ResponseModelsResponseMultiple.componentsSchemasUser(
    User value,
  ) = ResponseModelsResponseMultipleComponentsSchemasUser;

  @jsonSerializable
  @FreezedUnionValue("#/components/schemas/Location")
  const factory ResponseModelsResponseMultiple.componentsSchemasLocation(
    Location value,
  ) = ResponseModelsResponseMultipleComponentsSchemasLocation;

  factory ResponseModelsResponseMultiple.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelsResponseMultipleFromJson(json);
}
