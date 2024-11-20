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

    test('First Test', () {
      final actual = r"""
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:example/src/models/models.dart';

part 'open_api.freezed.dart';
part 'open_api.g.dart';

@freezed
class OpenApi with _$OpenApi {
  const factory OpenApi({
    @JsonKey(name: 'openapi') required String openapi,
    @Default(SelectedCourseResultEnum.selected)
    @JsonKey(name: 'selected_course_result_enum')  SelectedCourseResultEnum selectedCourseResultEnum,
    @JsonKey(name: 'description')  String? description,
  }) = _OpenApi;

  factory OpenApi.fromJson(Map<String, dynamic> json) => _$OpenApiFromJson(json);
}
""";

      final expected = generator.run(
        MapEntry(
          'OpenApi',
          OpenApiSchemas(
            type: 'object',
            properties: {
              'openapi': OpenApiSchema.type(
                type: OpenApiSchemaVarType.string,
                title: 'openapi',
              ),
              'selected_course_result_enum': OpenApiSchema.ref(
                ref: '#/components/schemas/SelectedCourseResultEnum',
                default_: 'selected',
              ),
              'description': OpenApiSchema.anyOf(
                anyOf: [
                  OpenApiSchema.type(
                    type: OpenApiSchemaVarType.string,
                  ),
                  OpenApiSchema.type(
                    type: OpenApiSchemaVarType.null_,
                  ),
                ],
                title: 'description',
              ),
            },
            required_: [
              'openapi',
            ],
          ),
        ),
      );

      print('-------------------');
      print(actual);
      print('-------------------');
      print(expected);
      print('-------------------');

      expect(actual, expected);
    });
  });
}
