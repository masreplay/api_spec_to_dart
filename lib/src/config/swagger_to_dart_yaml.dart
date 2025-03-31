import 'package:freezed_annotation/freezed_annotation.dart';

part 'swagger_to_dart_yaml.freezed.dart';
part 'swagger_to_dart_yaml.g.dart';

@freezed
abstract class SwaggerToDartYaml with _$SwaggerToDartYaml {
  const SwaggerToDartYaml._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SwaggerToDartYaml({required SwaggerToDart swaggerToDart}) =
      _SwaggerToDartYaml;

  factory SwaggerToDartYaml.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartYamlFromJson(json);

  factory SwaggerToDartYaml.fromYamlMap(Map<String, dynamic> yamlMap) {
    return SwaggerToDartYaml.fromJson(yamlMap);
  }

  static const String filename = 'swagger_to_dart.yaml';
}

@freezed
abstract class SwaggerToDart with _$SwaggerToDart {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory SwaggerToDart({
    String? url,
    @Default('schema/swagger.json') String inputDirectory,
    @Default('lib/src/gen') String outputDirectory,
    @Default('ApiClient') String apiClientClassName,
    @Default([]) List<String> imports,
    @Default([]) List<String> skippedParameters,
  }) = _SwaggerToDart;

  factory SwaggerToDart.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartFromJson(json);
}
