/// CoordinateModelCoordinate
///
/// ```json
/// {
///     "anyOf": [
///         {
///             "$ref": "#/components/schemas/Coordinate"
///         },
///         {
///             "type": "array"
///         },
///         {
///             "type": "string"
///         },
///         {
///             "type": "null"
///         }
///     ],
///     "title": "Coordinate"
/// }
/// ```
library;

import 'exports.dart';

sealed class CoordinateModelCoordinate {
  const CoordinateModelCoordinate();

  const factory CoordinateModelCoordinate.coordinate(Coordinate value) =
      CoordinateModelCoordinateCoordinate;
  const factory CoordinateModelCoordinate.list(List<dynamic> value) =
      CoordinateModelCoordinateList;
  const factory CoordinateModelCoordinate.string(String value) =
      CoordinateModelCoordinateString;
  const factory CoordinateModelCoordinate.fallback(Object? value) =
      CoordinateModelCoordinateFallback;

  factory CoordinateModelCoordinate.fromJson(Object? json) => switch (json) {
    String() => CoordinateModelCoordinateString(json),
    List() => CoordinateModelCoordinateList(json),
    Map<String, dynamic>() => CoordinateModelCoordinateCoordinate(
      Coordinate.fromJson(json),
    ),
    _ => CoordinateModelCoordinateFallback(json),
  };

  Object? toJson();
}

final class CoordinateModelCoordinateCoordinate
    extends CoordinateModelCoordinate {
  const CoordinateModelCoordinateCoordinate(this.value);

  final Coordinate value;

  @override
  Object? toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is CoordinateModelCoordinateCoordinate && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'CoordinateModelCoordinate.coordinate($value)';
}

final class CoordinateModelCoordinateList extends CoordinateModelCoordinate {
  const CoordinateModelCoordinateList(this.value);

  final List<dynamic> value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is CoordinateModelCoordinateList &&
      const DeepCollectionEquality().equals(other.value, value);

  @override
  int get hashCode => const DeepCollectionEquality().hash(value);

  @override
  String toString() => 'CoordinateModelCoordinate.list($value)';
}

final class CoordinateModelCoordinateString extends CoordinateModelCoordinate {
  const CoordinateModelCoordinateString(this.value);

  final String value;

  @override
  Object? toJson() => value;

  @override
  bool operator ==(Object other) =>
      other is CoordinateModelCoordinateString && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'CoordinateModelCoordinate.string($value)';
}

final class CoordinateModelCoordinateFallback
    extends CoordinateModelCoordinate {
  const CoordinateModelCoordinateFallback(this.value);

  final Object? value;

  @override
  Object? toJson() => value;

  @override
  String toString() => 'CoordinateModelCoordinate.fallback($value)';
}
