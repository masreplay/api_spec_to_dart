/// Coordinate
/// {
///     "properties": {
///         "latitude": {
///             "type": "number",
///             "title": "Latitude"
///         },
///         "longitude": {
///             "type": "number",
///             "title": "Longitude"
///         }
///     },
///     "type": "object",
///     "required": [
///         "latitude",
///         "longitude"
///     ],
///     "title": "Coordinate"
/// }
library coordinate;

import 'exports.dart';
part 'coordinate.freezed.dart';
part 'coordinate.g.dart'; // Coordinate

@freezed
abstract class Coordinate with _$Coordinate {
  const Coordinate._();

  @jsonSerializable
  const factory Coordinate({
    /// latitude
    @JsonKey(name: Coordinate.latitudeKey_) required double latitude,

    /// longitude
    @JsonKey(name: Coordinate.longitudeKey_) required double longitude,
  }) = _Coordinate;

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);

  static const String latitudeKey_ = r'latitude';

  static const String longitudeKey_ = r'longitude';
}
