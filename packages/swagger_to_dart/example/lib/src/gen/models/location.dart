import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'location.freezed.dart';
part 'location.g.dart';

/// Location
@freezed
abstract class Location with _$Location {
  @JsonSerializable(converters: Convertors.convertors)
  const factory Location({
    required double lat,
    required double lng,
    required String? name,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
