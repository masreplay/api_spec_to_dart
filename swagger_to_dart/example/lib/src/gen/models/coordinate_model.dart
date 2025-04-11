import "package:freezed_annotation/freezed_annotation.dart";

part "coordinate_model.freezed.dart";
part "coordinate_model.g.dart";

/// CoordinateModel
@freezed
sealed class CoordinateModel with _$CoordinateModel {
  static const String coordinateKey = "coordinate";
  static const String latitudeKey = "latitude";
  static const String longitudeKey = "longitude";

  const factory CoordinateModel.fallback() = CoordinateModelFallback;

  factory CoordinateModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinateModelFromJson(json);
}
