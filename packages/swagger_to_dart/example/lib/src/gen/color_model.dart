library color_model;

import 'exports.dart';
part 'color_model.freezed.dart';
part 'color_model.g.dart'; // ColorModel

@freezed
abstract class ColorModel with _$ColorModel {
  const ColorModel._();

  const factory ColorModel({
    /// color
    @JsonKey(name: ColorModel.colorKey) required String color,
  }) = _ColorModel;

  factory ColorModel.fromJson(Map<String, dynamic> json) =>
      _$ColorModelFromJson(json);

  static const String colorKey = "color";
}
