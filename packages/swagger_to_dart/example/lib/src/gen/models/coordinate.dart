import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "coordinate.freezed.dart";
part "coordinate.g.dart";

/// Coordinate
@freezed
abstract class Coordinate with _$Coordinate {
  const Coordinate._();

  static const String latitudeKey = "latitude";
  static const String longitudeKey = "longitude";

  @JsonSerializable(converters: convertors)
  const factory Coordinate({
    /// latitude
    @JsonKey(name: Coordinate.latitudeKey) required double latitude,

    /// longitude
    @JsonKey(name: Coordinate.longitudeKey) required double longitude,
  }) = _Coordinate;

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);
}
