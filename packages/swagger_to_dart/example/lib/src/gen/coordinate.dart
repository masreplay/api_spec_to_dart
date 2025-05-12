library;

import 'package:freezed_annotation/freezed_annotation.dart';
part 'coordinate.freezed.dart';
part 'coordinate.g.dart'; // Coordinate

@freezed
abstract class Coordinate with _$Coordinate {
  const Coordinate._();

  const factory Coordinate({
    /// latitude
    @JsonKey(name: latitudeKey) double latitude,

    /// longitude
    @JsonKey(name: longitudeKey) double longitude,
  }) = _Coordinate;

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);

  static const String latitudeKey = "latitude";

  static const String longitudeKey = "longitude";
}
