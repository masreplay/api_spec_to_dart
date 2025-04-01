import 'dart:convert' show jsonEncode;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

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

  factory SwaggerToDartYaml.fromYamlMap(YamlMap yaml) {
    Map<String, dynamic> convertYamlMapToMap(YamlMap yamlMap) {
      final map = <String, dynamic>{};

      for (final entry in yamlMap.entries) {
        final key = entry.key.toString();
        final value = entry.value;
        if (value is YamlMap || value is Map) {
          map[key] = convertYamlMapToMap(value);
        } else if (value is YamlList || value is List) {
          map[key] =
              value
                  .map((e) => e is YamlMap ? convertYamlMapToMap(e) : e)
                  .toList();
        } else {
          map[key] = value.toString();
        }
      }
      return map;
    }

    return SwaggerToDartYaml.fromJson(convertYamlMapToMap(yaml));
  }

  // swagger_to_dart:
  // input_directory: schema/swagger.json
  // output_directory: lib/src/gen
  // skipped_parameters:
  //   - "Accept-Language"
  //   - "X-Language"
  //   - "X-Platform"

  String toYaml() {
    final yamlMap = <String, dynamic>{
      'swagger_to_dart': swaggerToDart.toJson(),
    };

    String convertMapToYaml(Map<String, dynamic> map) {
      final buffer = StringBuffer();
      for (final entry in map.entries) {
        final key = entry.key;
        final value = entry.value;
        if (value is Map || value is YamlMap) {
          buffer.writeln('$key:');
          buffer.write(convertMapToYaml(value));
        } else if (value is List || value is YamlList) {
          buffer.writeln('$key:');
          for (final item in value) {
            buffer.writeln('  - $item');
          }
        } else {
          buffer.writeln('$key: $value');
        }
      }
      return buffer.toString();
    }

    return convertMapToYaml(yamlMap);
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
