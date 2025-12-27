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
library coordinate_model;

import 'exports.dart';
part 'coordinate_model.freezed.dart';
part 'coordinate_model.g.dart'; // CoordinateModel

@freezed
abstract class CoordinateModel with _$CoordinateModel {
  const CoordinateModel._();

  @jsonSerializable
  const factory CoordinateModel({
    /// coordinate
    @JsonKey(name: CoordinateModel.coordinateKey_) dynamic? coordinate,

    /// latitude
    @JsonKey(name: CoordinateModel.latitudeKey_) double? latitude,

    /// longitude
    @JsonKey(name: CoordinateModel.longitudeKey_) double? longitude,
  }) = _CoordinateModel;

  factory CoordinateModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinateModelFromJson(json);

  static const String coordinateKey_ = r'coordinate';

  static const String latitudeKey_ = r'latitude';

  static const String longitudeKey_ = r'longitude';
}
