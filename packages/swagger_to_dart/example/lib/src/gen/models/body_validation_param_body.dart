import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'body_validation_param_body.freezed.dart';
part 'body_validation_param_body.g.dart';

/// Body_validation-param_body
@freezed
abstract class BodyValidationParamBody with _$BodyValidationParamBody {
  @JsonSerializable(converters: Convertors.convertors)
  const factory BodyValidationParamBody({
    required Map<String, dynamic> data,
    required int importance,
  }) = _BodyValidationParamBody;

  factory BodyValidationParamBody.fromJson(Map<String, dynamic> json) =>
      _$BodyValidationParamBodyFromJson(json);
}
