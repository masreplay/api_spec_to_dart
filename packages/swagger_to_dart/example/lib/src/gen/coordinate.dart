library coordinate.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'coordinate.freezed.dart';
part 'coordinate.g.dart'; // Coordinate

@freezed
abstract class Coordinate with _$Coordinate {
  const Coordinate._();

  const factory Coordinate() = _Coordinate;

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);
}
