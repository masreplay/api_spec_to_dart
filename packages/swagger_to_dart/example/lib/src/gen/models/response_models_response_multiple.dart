/// ResponseModelsResponseMultiple
///
/// ```json
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
/// ```
library;

import 'exports.dart';

sealed class ResponseModelsResponseMultiple {
  const ResponseModelsResponseMultiple();

  const factory ResponseModelsResponseMultiple.user(User value) =
      ResponseModelsResponseMultipleUser;
  const factory ResponseModelsResponseMultiple.location(Location value) =
      ResponseModelsResponseMultipleLocation;
  const factory ResponseModelsResponseMultiple.fallback(
    Map<String, dynamic> value,
  ) = ResponseModelsResponseMultipleFallback;

  factory ResponseModelsResponseMultiple.fromJson(Map<String, dynamic> json) {
    // No discriminator in the spec: the first variant that decodes wins.
    for (final decode
        in <ResponseModelsResponseMultiple Function(Map<String, dynamic>)>[
          (json) => ResponseModelsResponseMultipleUser(User.fromJson(json)),
          (json) =>
              ResponseModelsResponseMultipleLocation(Location.fromJson(json)),
        ]) {
      try {
        return decode(json);
      } catch (_) {
        // Not this variant; try the next one.
      }
    }
    return ResponseModelsResponseMultipleFallback(json);
  }

  Map<String, dynamic> toJson();
}

final class ResponseModelsResponseMultipleUser
    extends ResponseModelsResponseMultiple {
  const ResponseModelsResponseMultipleUser(this.value);

  final User value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is ResponseModelsResponseMultipleUser && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ResponseModelsResponseMultiple.user($value)';
}

final class ResponseModelsResponseMultipleLocation
    extends ResponseModelsResponseMultiple {
  const ResponseModelsResponseMultipleLocation(this.value);

  final Location value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is ResponseModelsResponseMultipleLocation && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ResponseModelsResponseMultiple.location($value)';
}

final class ResponseModelsResponseMultipleFallback
    extends ResponseModelsResponseMultiple {
  const ResponseModelsResponseMultipleFallback(this.value);

  final Map<String, dynamic> value;

  @override
  Map<String, dynamic> toJson() => value;

  @override
  String toString() => 'ResponseModelsResponseMultiple.fallback($value)';
}
