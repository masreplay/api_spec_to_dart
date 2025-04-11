import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "color_model.freezed.dart";
part "color_model.g.dart";

/// ColorModel
@freezed
abstract class ColorModel with _$ColorModel {
  const ColorModel._();

  static const String colorKey = "color";

  @JsonSerializable(converters: convertors)
  const factory ColorModel({
    /// color
    @JsonKey(name: ColorModel.colorKey) required String color,
  }) = _ColorModel;

  factory ColorModel.fromJson(Map<String, dynamic> json) =>
      _$ColorModelFromJson(json);
}
