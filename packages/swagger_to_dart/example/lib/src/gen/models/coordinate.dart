import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'coordinate.freezed.dart';
part 'coordinate.g.dart';

/// Coordinate
@freezed
abstract class Coordinate with _$Coordinate {
  @JsonSerializable(converters: Convertors.convertors)
  const factory Coordinate({
    required double latitude,
    required double longitude,
  }) = _Coordinate;

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);
}
