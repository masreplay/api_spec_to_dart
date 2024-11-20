import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/src/generator/openapi/model_generator.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

void main() {
  late final OpenApiDartModelGenerator generator;

  group('A group of tests', () {
    setUp(() {
      generator = OpenApiDartModelGenerator(
        config: OpenApiGeneratorConfig(packageName: 'example'),
      );
    });

    test('Normal class without fields', () {
      final actual = r"""
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:example/src/models/models.dart';

part 'open_api.freezed.dart';
part 'open_api.g.dart';

@freezed
class OpenApi with _$OpenApi {
  const factory OpenApi({
    @JsonKey(name: 'openapi') required String openapi,
  }) = _OpenApi;

  factory OpenApi.fromJson(Map<String, dynamic> json) => _$OpenApiFromJson(json);
}
""";

      final expected = generator.run(
        model: MapEntry(
          'OpenApi',
          OpenApiSchemas(
            type: 'object',
            properties: {
              'openapi': OpenApiSchema.type(
                type: OpenApiSchemaVarType.string,
                title: 'openapi',
              ),
            },
            required_: [
              'openapi',
            ],
          ),
        ),
      );

      print(actual);
      print(expected);

      expect(actual, expected);
    });
  });
}
