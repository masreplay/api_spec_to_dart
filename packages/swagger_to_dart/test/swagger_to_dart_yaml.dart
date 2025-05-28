import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

void main() {
  group('SwaggerToDartYaml parsing', () {
    test('parses example/swagger_to_dart.yaml correctly', () async {
      final config = SwaggerToDartYaml(
        swaggerToDart: SwaggerToDart(
          generationSource: GenerationSource.fastAPI,
          inputDirectory: 'schema/swagger.json',
          outputDirectory: 'lib/src/gen',
          model: ModelConfig(
            supportGenericArguments: true,
            enumFallbackType: EnumFallbackType.first,
            unionClassFallbackName: 'fallback',
          ),
          apiClient: ApiClientConfig(
            baseApiClientClassName: 'BaseApiClient',
            useClassForQueryParameters: true,
            skippedParameters: [
              'Language',
              'X-API-Key',
            ],
          ),
        ),
      );

      final yaml = YamlMapConverter.mapToYaml(config.toJson());

      print(yaml);

      expect(yaml, isNotEmpty);
    });
  });
}
