import 'dart:convert';

import 'package:swagger_to_dart/src/config/swagger_to_dart_yaml.dart';
import 'package:test/test.dart';

void main() {
  group('SwaggerToDartYaml', () {
    test('fromYamlMap should correctly parse YAML', () {
      final value = SwaggerToDartYaml(
        swaggerToDart: SwaggerToDart(
          skippedParameters: ['Accept-Language', 'X-Language', 'X-Platform'],
        ),
      );
      print(value.toJson());
      print(value.toYaml());

      print(JsonEncoder.withIndent('  ').convert(value.toJson()));
      expect(SwaggerToDartYaml.filename, 'swagger_to_dart.yaml');
    });
  });
}
