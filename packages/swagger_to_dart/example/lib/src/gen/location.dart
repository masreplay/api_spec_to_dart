library location;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'location.freezed.dart';
part 'location.g.dart'; // Location

@freezed
abstract class Location with _$Location {
  const Location._();

  const factory Location(
    /// lat
    @JsonKey(name: latKey) double lat,

    /// lng
    @JsonKey(name: lngKey) double lng,

    /// name
    @JsonKey(name: nameKey) String? name,
  ) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  static const String latKey = "lat";

  static const String lngKey = "lng";

  static const String nameKey = "name";
}
