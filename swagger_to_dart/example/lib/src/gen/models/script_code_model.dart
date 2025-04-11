import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "script_code_model.freezed.dart";
part "script_code_model.g.dart";

/// ScriptCodeModel
@freezed
abstract class ScriptCodeModel with _$ScriptCodeModel {
  const ScriptCodeModel._();

  static const String scriptCodeKey = "script_code";

  @JsonSerializable(converters: convertors)
  const factory ScriptCodeModel({
    /// script_code
    @JsonKey(name: ScriptCodeModel.scriptCodeKey) required String scriptCode,
  }) = _ScriptCodeModel;

  factory ScriptCodeModel.fromJson(Map<String, dynamic> json) =>
      _$ScriptCodeModelFromJson(json);
}
