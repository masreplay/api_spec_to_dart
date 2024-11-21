import 'dart:io';

import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/src/generator/openapi/open_api_model_generator.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:path/path.dart' as path;

class OpenApiDartClientGenerator {
  const OpenApiDartClientGenerator({
    required this.config,
  });

  final OpenApiGeneratorConfig config;

  ({String filename, String content}) generator({
    required OpenApiPaths path,
    required String clientName,
    required List<String> functionsPaths,
  }) {
    final buffer = StringBuffer();

    buffer.writeln('''import 'package:dio/dio.dart';''');
    buffer.writeln('''import 'package:retrofit/retrofit.dart';''');
    buffer.writeln(config.importModelsCode);

    final fileName = '''${config.renameFile(clientName)}_client''';
    buffer.writeln(''' ''');

    buffer.writeln('''part '$fileName.g.dart';''');

    buffer.writeln(''' ''');

    buffer.writeln('''@RestApi()''');

    final className = '${config.renameClass(clientName)}Client';
    buffer.writeln('''abstract class ${className} {''');

    buffer.writeln(
      '''factory ${className}(Dio dio, {String baseUrl}) = _${className};''',
    );

    for (final entry in functionsPaths) {
      final method = path[entry]!;

      for (final function in method.getAllMethods().entries) {
        final response = function.value.responses!['200']!;
        final type = function.key;

        final responseClassName = 'dynamic'; //

        final requestBody = function.value.requestBody?.content.current;

        buffer.writeln('/// ${method.delete}');

        if (requestBody?.key != null) {
          buffer.writeln('@${requestBody?.key}');
        }

        buffer.writeln('@${type}(\'$entry\')');

        final methodName = config.renameMethod(
          function.value.operationId.replaceAll(
            RegExp(clientName, caseSensitive: false),
            '',
          ),
        );

        final parameters = function.value.parameters;

        buffer.writeln(
          '''Future<HttpResponse<$responseClassName>> $methodName(''',
        );

        /// --------- Queries -----------
        final queries = parameters
                ?.where(
                  (param) => param.in_ == OpenApiPathMethodParameterType.query,
                )
                .toList() ??
            [];
        if (queries.isNotEmpty) {
          final queriesClass = generateQueriesClass(
            queries,
            methodName,
          );
          buffer.writeln(
            '''@Queries() ${config.renameClass(queriesClass)} queries,''',
          );
        }

        /// --------- Path -----------
        final pathParams = parameters?.where(
              (para) => para.in_ == OpenApiPathMethodParameterType.path,
            ) ??
            [];

        for (final pathParam in pathParams) {
          final dartType = pathParam.schema.map(
            type: (value) {
              return config.dartType(
                type: value.type,
                format: value.format,
                genericType: value.items?.mapOrNull(
                  ref: (value) =>
                      config.renameClass(value.ref!.split('/').last),
                ),
              );
            },
            ref: (value) => config.renameClass(value.ref!.split('/').last),
            anyOf: (value) => getAnyOfType(value, config),
            oneOf: (value) => '',
          );
          final paramName = config.renameProperty(pathParam.name);
          buffer.writeln(
            '''@Path(\'${pathParam.name}\') $dartType $paramName,''',
          );
        }

        //----------- Body -----------

        if (requestBody != null) {
          final body = requestBody.value?.schema;

          final dartType = body == null
              ? 'dynamic'
              : body.map(
                  type: (value) {
                    return config.dartType(
                      type: value.type,
                      format: value.format,
                      genericType: value.items?.mapOrNull(
                        ref: (value) =>
                            config.renameClass(value.ref!.split('/').last),
                      ),
                    );
                  },
                  ref: (value) =>
                      config.renameClass(value.ref!.split('/').last),
                  anyOf: (value) => getAnyOfType(value, config),
                  oneOf: (value) => '',
                );

          buffer.writeln(
            '''@Body() $dartType body,''',
          );
        }

        buffer.writeln(');');
      }
    }

    buffer.writeln('}');
    return (filename: fileName, content: buffer.toString());
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
    return MapEntry(
      config.renameProperty(e.name),
      e.schema.map(
        type: (value) => OpenApiSchema.type(
          type: value.type,
          format: value.format,
          title: value.title,
          maxLength: value.maxLength,
          minLength: value.minLength,
          description: value.description,
          pattern: value.pattern,
          const_: value.const_,
          default_: value.default_,
        ),
        ref: (value) => OpenApiSchema.ref(
          default_: value.default_,
          ref: value.ref,
        ),
        anyOf: (value) => OpenApiSchema.anyOf(
          anyOf: value.anyOf,
          default_: value.default_,
          title: value.title,
        ),
        oneOf: (value) => OpenApiSchema.oneOf(
          discriminator: value.discriminator,
          oneOf: value.oneOf,
          title: value.title,
          description: value.description,
        ),
      ),
    );
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

getAnyOfType(
  OpenApiSchemaAnyOf value,
  OpenApiGeneratorConfig config,
) {
  String text = '';
  bool isNullable = false;

  for (final schema in value.anyOf!) {
    text += schema.map(
      type: (value) {
        if (value.type == OpenApiSchemaVarType.null_) {
          isNullable = true;
          return '';
        }

        return config.dartType(
          type: value.type,
          format: value.format,
          genericType: value.items?.mapOrNull(
            ref: (value) => config.renameClass(value.ref!.split('/').last),
          ),
        );
      },
      ref: (value) => config.renameClass(value.ref!.split('/').last),
      anyOf: (value) => getAnyOfType(value, config),
      oneOf: (value) => '',
    );
  }

  return isNullable ? '$text?' : text;
}
