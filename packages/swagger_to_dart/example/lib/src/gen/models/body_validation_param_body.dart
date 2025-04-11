import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "body_validation_param_body.freezed.dart";
part "body_validation_param_body.g.dart";

/// Body_validation-param_body
@freezed
abstract class BodyValidationParamBody with _$BodyValidationParamBody {
  const BodyValidationParamBody._();

  static const String dataKey = "data";
  static const String importanceKey = "importance";

  @JsonSerializable(converters: convertors)
  const factory BodyValidationParamBody({
    /// data, Arbitrary data object
    @JsonKey(name: BodyValidationParamBody.dataKey)
    required Map<String, dynamic> data,

    /// importance, Importance level from 0-10
    @JsonKey(name: BodyValidationParamBody.importanceKey)
    required int importance,
  }) = _BodyValidationParamBody;

  factory BodyValidationParamBody.fromJson(Map<String, dynamic> json) =>
      _$BodyValidationParamBodyFromJson(json);
}
