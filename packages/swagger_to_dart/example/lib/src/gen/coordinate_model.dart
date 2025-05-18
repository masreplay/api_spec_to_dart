/// CoordinateModel
/// {
///     "properties": {
///         "coordinate": {
///             "anyOf": [
///                 {
///                     "$ref": "#/components/schemas/Coordinate"
///                 },
///                 {
///                     "type": "array"
///                 },
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Coordinate"
///         },
///         "latitude": {
///             "anyOf": [
///                 {
///                     "type": "number"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Latitude"
///         },
///         "longitude": {
///             "anyOf": [
///                 {
///                     "type": "number"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Longitude"
///         }
///     },
///     "type": "object",
///     "title": "CoordinateModel"
/// }
library;

import 'exports.dart';
part 'coordinate_model.freezed.dart';
part 'coordinate_model.g.dart'; // CoordinateModel

@freezed
abstract class CoordinateModel with _$CoordinateModel {
  const CoordinateModel._();

  @generationJsonSerializable
  const factory CoordinateModel({
    /// coordinate
    @JsonKey(name: CoordinateModel.coordinateKey) required dynamic coordinate,

    /// latitude
    @JsonKey(name: CoordinateModel.latitudeKey) required double? latitude,

    /// longitude
    @JsonKey(name: CoordinateModel.longitudeKey) required double? longitude,
  }) = _CoordinateModel;

  factory CoordinateModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinateModelFromJson(json);

  static const String coordinateKey = "coordinate";

  static const String latitudeKey = "latitude";

  static const String longitudeKey = "longitude";
}
