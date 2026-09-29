import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

SwaggerToDart parse(String yaml) =>
    SwaggerToDartYaml.fromYamlMap(loadYaml(yaml) as YamlMap).swaggerToDart;

void main() {
  test('defaults', () {
    final config = parse('swagger_to_dart: {}');
    expect(config.url, isNull);
    expect(config.inputDirectory, 'schema/swagger.json');
    expect(config.outputDirectory, 'lib/src/gen');
    expect(config.generationSource, isNull);
    expect(config.model.supportGenericArguments, isFalse);
    expect(config.model.enumFallbackType, EnumFallbackType.throwException);
    expect(config.model.removeModelPrefixes, isEmpty);
    expect(config.apiClient.baseApiClientClassName, 'BaseApiClient');
    expect(config.apiClient.useClassForQueryParameters, isFalse);
    expect(config.apiClient.skippedParameters, isEmpty);
    expect(config.apiClient.includeOpenapiExtras, isTrue);
  });

  test('every option', () {
    final config = parse('''
swagger_to_dart:
  url: https://api.example.com/openapi.json
  input_directory: spec/openapi.json
  output_directory: lib/api
  generation_source: abp.io
  model:
    support_generic_arguments: true
    union_class_fallback_name: fallback
    enum_fallback_type: last
    remove_model_prefixes: [Dto]
    enums:
      StatusEnum:
        0: created
        10: pgRegistered
  api_client:
    base_api_client_class_name: Api
    use_class_for_query_parameters: true
    use_class_for_multipart_form_data: true
    skipped_parameters: [X-API-Key]
    include_openapi_extras: false
  imports:
    global:
      - "import 'package:app/app.dart';"
''');
    expect(config.url, 'https://api.example.com/openapi.json');
    expect(config.inputDirectory, 'spec/openapi.json');
    expect(config.outputDirectory, 'lib/api');
    expect(config.generationSource, GenerationSource.abpIO);
    expect(config.model.supportGenericArguments, isTrue);
    expect(config.model.unionClassFallbackName, 'fallback');
    expect(config.model.enumFallbackType, EnumFallbackType.last);
    expect(config.model.removeModelPrefixes, ['Dto']);
    expect(config.model.enums, {
      'StatusEnum': {'0': 'created', '10': 'pgRegistered'},
    });
    expect(config.apiClient.baseApiClientClassName, 'Api');
    expect(config.apiClient.useClassForQueryParameters, isTrue);
    expect(config.apiClient.useClassForMultipartFormData, isTrue);
    expect(config.apiClient.skippedParameters, ['X-API-Key']);
    expect(config.apiClient.includeOpenapiExtras, isFalse);
    expect(config.imports?.globalImports, ["import 'package:app/app.dart';"]);
  });

  test('generation_source values', () {
    expect(
      parse('swagger_to_dart:\n  generation_source: FastAPI').generationSource,
      GenerationSource.fastAPI,
    );
    expect(
      parse('swagger_to_dart:\n  generation_source: dotnet').generationSource,
      GenerationSource.dotnet,
    );
  });
}
