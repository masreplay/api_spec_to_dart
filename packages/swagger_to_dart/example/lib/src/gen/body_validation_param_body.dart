library body_validation_param_body;

import 'exports.dart';
part 'body_validation_param_body.freezed.dart';
part 'body_validation_param_body.g.dart'; // BodyValidationParamBody

@freezed
abstract class BodyValidationParamBody with _$BodyValidationParamBody {
  const BodyValidationParamBody._();

  const factory BodyValidationParamBody({
    /// data
    @JsonKey(name: BodyValidationParamBody.dataKey)
    required Map<String, dynamic> data,

    /// importance
    @JsonKey(name: BodyValidationParamBody.importanceKey)
    required int importance,
  }) = _BodyValidationParamBody;

  factory BodyValidationParamBody.fromJson(Map<String, dynamic> json) =>
      _$BodyValidationParamBodyFromJson(json);

  static const String dataKey = "data";

  static const String importanceKey = "importance";
}
