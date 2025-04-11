import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "location.freezed.dart";
part "location.g.dart";

/// Location
@freezed
abstract class Location with _$Location {
  const Location._();

  static const String latKey = "lat";
  static const String lngKey = "lng";
  static const String nameKey = "name";

  @JsonSerializable(converters: convertors)
  const factory Location({
    /// lat, Latitude coordinate between -90 and 90 degrees
    @JsonKey(name: Location.latKey) required double lat,

    /// lng, Longitude coordinate between -180 and 180 degrees
    @JsonKey(name: Location.lngKey) required double lng,

    /// Name, Optional location name
    @JsonKey(name: Location.nameKey) required String? name,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
