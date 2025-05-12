library coordinate_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'coordinate_model.freezed.dart';
part 'coordinate_model.g.dart'; // CoordinateModel

@freezed
abstract class CoordinateModel with _$CoordinateModel {
  const CoordinateModel._();

  factory CoordinateModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinateModelFromJson(json);
}
