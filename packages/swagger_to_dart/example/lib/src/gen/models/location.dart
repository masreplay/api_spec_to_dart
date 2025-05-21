/// Location
/// {
///     "properties": {
///         "lat": {
///             "type": "number",
///             "description": "Latitude coordinate between -90 and 90 degrees",
///             "title": "Latitude"
///         },
///         "lng": {
///             "type": "number",
///             "description": "Longitude coordinate between -180 and 180 degrees",
///             "title": "Longitude"
///         },
///         "name": {
///             "anyOf": [
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "description": "Optional location name",
///             "title": "Name"
///         }
///     },
///     "type": "object",
///     "required": [
///         "lat",
///         "lng"
///     ],
///     "title": "Location"
/// }
library;

import 'exports.dart';
part 'location.freezed.dart';
part 'location.g.dart'; // Location

@freezed
abstract class Location with _$Location {
  const Location._();

  @jsonSerializable
  const factory Location({
    /// lat
    @JsonKey(name: Location.latKey) required double lat,

    /// lng
    @JsonKey(name: Location.lngKey) required double lng,

    /// name
    @JsonKey(name: Location.nameKey) required String? name,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  static const String latKey = "lat";

  static const String lngKey = "lng";

  static const String nameKey = "name";
}
