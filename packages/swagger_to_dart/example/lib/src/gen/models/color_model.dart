import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'color_model.freezed.dart';
part 'color_model.g.dart';

/// ColorModel
@freezed
abstract class ColorModel with _$ColorModel {
  @JsonSerializable(converters: Convertors.convertors)
  const factory ColorModel({required String color}) = _ColorModel;

  factory ColorModel.fromJson(Map<String, dynamic> json) =>
      _$ColorModelFromJson(json);
}
