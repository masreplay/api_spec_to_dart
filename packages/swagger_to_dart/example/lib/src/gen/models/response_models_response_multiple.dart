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
    // No discriminator in the spec: the variant whose required keys are all
    // present and that declares the most of the payload's keys wins (the
    // earlier one on a tie).
    const variants = <({Set<String> required, Set<String> declared})>[
      (
        required: {'username', 'email', 'id'},
        declared: {
          'username',
          'email',
          'full_name',
          'id',
          'is_active',
          'created_at',
          'location',
          'tags',
        },
      ),
      (required: {'lat', 'lng'}, declared: {'lat', 'lng', 'name'}),
    ];
    var best = -1;
    var bestScore = -1;
    for (var i = 0; i < variants.length; i++) {
      final variant = variants[i];
      if (!variant.required.every(json.containsKey)) continue;
      final score = json.keys.where(variant.declared.contains).length;
      if (score > bestScore) {
        best = i;
        bestScore = score;
      }
    }
    return switch (best) {
      0 => ResponseModelsResponseMultipleUser(User.fromJson(json)),
      1 => ResponseModelsResponseMultipleLocation(Location.fromJson(json)),
      _ => ResponseModelsResponseMultipleFallback(json),
    };
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
