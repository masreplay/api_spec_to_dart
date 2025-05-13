library;

import 'exports.dart';
part 'coordinate_model.freezed.dart';
part 'coordinate_model.g.dart'; // CoordinateModel

@freezed
sealed class CoordinateModel with _$CoordinateModel {
  const CoordinateModel._();

  const factory CoordinateModel.fallback(Map<String, dynamic> value) =
      CoordinateModelFallback;

  factory CoordinateModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinateModelFromJson(json);
}
