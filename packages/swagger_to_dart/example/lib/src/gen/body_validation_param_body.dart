library body_validation_param_body;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'body_validation_param_body.freezed.dart';
part 'body_validation_param_body.g.dart'; // BodyValidationParamBody

@freezed
abstract class BodyValidationParamBody with _$BodyValidationParamBody {
  const BodyValidationParamBody._();

  const factory BodyValidationParamBody(
    /// data
    @JsonKey(name: dataKey) Map<String, dynamic> data,

    /// importance
    @JsonKey(name: importanceKey) int importance,
  ) = _BodyValidationParamBody;

  factory BodyValidationParamBody.fromJson(Map<String, dynamic> json) =>
      _$BodyValidationParamBodyFromJson(json);

  static const String dataKey = "data";

  static const String importanceKey = "importance";
}
