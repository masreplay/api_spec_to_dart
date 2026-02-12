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
library location;

import 'exports.dart';
part 'location.freezed.dart';
part 'location.g.dart'; // Location

@freezed
abstract class Location with _$Location {
  const Location._();

  @jsonSerializable
  const factory Location({
    /// lat
    @JsonKey(name: Location.latKey_) required double lat,

    /// lng
    @JsonKey(name: Location.lngKey_) required double lng,

    /// name
    @JsonKey(name: Location.nameKey_) String? name,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  static const String latKey_ = r'lat';

  static const String lngKey_ = r'lng';

  static const String nameKey_ = r'name';
}
