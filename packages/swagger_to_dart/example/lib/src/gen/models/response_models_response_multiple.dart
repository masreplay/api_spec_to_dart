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
library response_models_response_multiple;

import 'exports.dart';
part 'response_models_response_multiple.freezed.dart';
part 'response_models_response_multiple.g.dart'; // ResponseModelsResponseMultiple

@Freezed(fallbackUnion: r"fallback")
sealed class ResponseModelsResponseMultiple
    with _$ResponseModelsResponseMultiple {
  const ResponseModelsResponseMultiple._();

  @jsonSerializable
  @FreezedUnionValue(r"User")
  const factory ResponseModelsResponseMultiple.user(User value) =
      ResponseModelsResponseMultipleUser;

  @jsonSerializable
  @FreezedUnionValue(r"Location")
  const factory ResponseModelsResponseMultiple.location(Location value) =
      ResponseModelsResponseMultipleLocation;

  @jsonSerializable
  @FreezedUnionValue(r"fallback")
  const factory ResponseModelsResponseMultiple.fallback(
    Map<String, dynamic>? value,
  ) = ResponseModelsResponseMultipleFallback;

  factory ResponseModelsResponseMultiple.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelsResponseMultipleFromJson(json);
}
