import 'package:swagger_to_dart/src/generator/generator.dart';
import 'package:test/test.dart';

void main() {
  late final FreezedClassGenerator generator;

  group('A group of tests', () {
    setUp(() {
      generator = FreezedClassGenerator();
    });

    test('Normal class without fields', () {
      final actual = r"""
import 'package:freezed_annotation/freezed_annotation.dart';

import '../src/models/models.dart';

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

      final generated = generator.normalClassTemplate(
        fileName: 'open_api',
        modelName: 'OpenApi',
        imports: [
          r"import '../src/models/models.dart';",
        ],
        fields: [
          r"@JsonKey(name: 'openapi') required String openapi",
        ],
      );

      print(actual);
      print(generated);

      expect(actual, generated);
    });
  });
}
