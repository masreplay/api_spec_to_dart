/// ColorModel
/// {
///     "properties": {
///         "color": {
///             "type": "string",
///             "format": "color",
///             "title": "Color"
///         }
///     },
///     "type": "object",
///     "required": [
///         "color"
///     ],
///     "title": "ColorModel"
/// }
library;

import 'exports.dart';
part 'color_model.freezed.dart';
part 'color_model.g.dart'; // ColorModel

@freezed
abstract class ColorModel with _$ColorModel {
  const ColorModel._();

  @jsonSerializable
  const factory ColorModel({
    /// color
    @JsonKey(name: ColorModel.colorKey) required Color color,
  }) = _ColorModel;

  factory ColorModel.fromJson(Map<String, dynamic> json) =>
      _$ColorModelFromJson(json);

  static const String colorKey = r'color';
}
