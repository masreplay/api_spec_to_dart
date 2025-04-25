import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'script_code_model.freezed.dart';
part 'script_code_model.g.dart';

/// ScriptCodeModel
@freezed
abstract class ScriptCodeModel with _$ScriptCodeModel {
  @JsonSerializable(converters: Convertors.convertors)
  const factory ScriptCodeModel({required String scriptCode}) =
      _ScriptCodeModel;

  factory ScriptCodeModel.fromJson(Map<String, dynamic> json) =>
      _$ScriptCodeModelFromJson(json);
}
