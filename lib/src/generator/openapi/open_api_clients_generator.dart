import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiDartClientsGenerator {
  const OpenApiDartClientsGenerator({
    required this.config,
  });

  final OpenApiGeneratorConfig config;

  String generator({
    required List<String> clients,
  }) {
    final buffer = StringBuffer();

    buffer.writeln('''import 'package:dio/dio.dart';''');

    buffer.writeln(config.importClientsCode);

    buffer.writeln();

    buffer.writeln('''class ${config.clientsClassName} {''');

    buffer.writeln();

    buffer.writeln(
      '''${config.clientsClassName}(this._dio);''',
    );

    buffer.writeln();
    buffer.writeln('''final Dio _dio;''');
    buffer.writeln();
    for (final client in clients) {
      buffer.writeln(
        '''${config.renameClass(client)}Client get ${config.renameProperty(client)}{
          return ${config.renameClass(client)}Client(_dio);
        }''',
      );
    }

    buffer.writeln('}');
    return buffer.toString();
  }
}

String generateQueriesClass(
  List<OpenApiPathMethodParameter> queries,
  String name,
) {
  final String dir = Directory.current.path;

  final config = OpenApiGeneratorConfig(
    packageName: 'example',
    input: path.join(dir, 'schema/swagger.json'),
    output: path.join(dir, 'lib/src/gen'),
    isFlutter: false,
  );

  final generator = OpenApiDartModelGenerator(config: config);

  final className = '${name}Queries';

  final params = queries.map((e) {
    return MapEntry(config.renameProperty(e.name), e.schema);
  }).toList();

  final result = generator.run(
    MapEntry(
      className,
      OpenApiSchemas(
        type: 'object',
        properties: Map.fromIterable(
          params,
          key: (e) => e.key,
          value: (e) => e.value,
        ),
      ),
    ),
  );

  if (!Directory(config.modelsOutputDirectory).existsSync()) {
    Directory(config.modelsOutputDirectory).createSync(recursive: true);
  }

  final filepath = path.join(
    config.modelsOutputDirectory,
    '${config.renameFile(className)}.dart',
  );

  final file = File(filepath);

  file.writeAsString(result.content);

  print('Generated: $filepath');

  return className;
}

String getAnyOfType(
  OpenApiSchemaAnyOf value,
  OpenApiGeneratorConfig config,
) {
  String className = '';
  bool isNullable = false;

  for (final schema in value.anyOf!) {
    className += schema.map(
      type: (value) {
        if (value.type == OpenApiSchemaVarType.null_) {
          isNullable = true;
          return '';
        }

        return config.dartType(
          type: value.type,
          format: value.format,
          genericType: value.items?.mapOrNull(
            ref: (value) => config.renameRefClass(value),
            anyOf: (value) => getAnyOfType(value, config),
          ),
        );
      },
      ref: (value) => config.renameRefClass(value),
      anyOf: (value) => getAnyOfType(value, config),
      oneOf: (value) => '',
    );
  }

  return isNullable ? '$className?' : 'dynamic';
}
