library script_code_model;

import 'exports.dart';
part 'script_code_model.freezed.dart';
part 'script_code_model.g.dart'; // ScriptCodeModel

@freezed
abstract class ScriptCodeModel with _$ScriptCodeModel {
  const ScriptCodeModel._();

  const factory ScriptCodeModel({
    /// scriptCode
    @JsonKey(name: ScriptCodeModel.scriptCodeKey) required String scriptCode,
  }) = _ScriptCodeModel;

  factory ScriptCodeModel.fromJson(Map<String, dynamic> json) =>
      _$ScriptCodeModelFromJson(json);

  static const String scriptCodeKey = "scriptCode";
}
