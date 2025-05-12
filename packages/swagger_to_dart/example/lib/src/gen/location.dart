library;

import 'exports.dart';
part 'location.freezed.dart';
part 'location.g.dart'; // Location

@freezed
abstract class Location with _$Location {
  const Location._();

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
