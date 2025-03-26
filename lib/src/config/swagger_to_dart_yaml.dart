import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as path;

part 'swagger_to_dart_yaml.freezed.dart';
part 'swagger_to_dart_yaml.g.dart';

@freezed
abstract class SwaggerToDartYaml with _$SwaggerToDartYaml {
  const SwaggerToDartYaml._();

  const factory SwaggerToDartYaml({
    required String inputDirectory,
    required String outputDirectory,
    required String apiClientClassName,
    required List<String> skippedParameters,
    required List<String> imports,
  }) = _SwaggerToDartYaml;

  factory SwaggerToDartYaml.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartYamlFromJson(json);

  factory SwaggerToDartYaml.fromYaml(Map<String, dynamic> json) {
    return SwaggerToDartYaml(
      inputDirectory:
          json['swagger_to_dart']['input_directory'] ??
          path.join(Directory.current.path, 'schema/swagger.json'),
      outputDirectory:
          json['swagger_to_dart']['output_directory'] ??
          path.join(Directory.current.path, 'lib/src/gen'),
      apiClientClassName:
          json['swagger_to_dart']['api_client_class_name'] ?? 'ApiClient',
      skippedParameters:
          ((json['swagger_to_dart']['skipped_parameters'] as List?) ?? [])
              .map((e) => e.toString())
              .toList(),
      imports:
          ((json['swagger_to_dart']['imports'] as List?) ?? [])
              .map((e) => e.toString())
              .toList(),
    );
  }

  static const String filename = 'swagger_to_dart.yaml';
}
