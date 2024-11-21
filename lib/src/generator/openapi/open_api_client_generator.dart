import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/src/generator/openapi/open_api_model_generator.dart';
import 'package:swagger_to_dart/src/utils/recase.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

const dynamicClassName = 'dynamic';

class OpenApiDartClientGenerator {
  const OpenApiDartClientGenerator({
    required this.config,
  });

  final OpenApiGeneratorConfig config;

  ({String filename, String content}) generator({
    required OpenApiPaths path,
    required String clientName,
    required List<String> tagPaths,
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

    for (final tagPath in tagPaths) {
      final method = path[tagPath]!;

      for (final entry in method.methods.entries) {
        final String methodType = entry.key;
        final OpenApiPathMethod method = entry.value;

        // description / comment
        buffer.writeln('/// ${method.operationId}');
        buffer.writeln('/// ${method.summary}');

        // response / return type
        final responses = method.responses ?? {};
        final successResponse = responses['200']!;

        final response =
            successResponse.content.current.value?.schema.dartType(config);

        // request type + http method type + path / annotation
        final requestBody = method.requestBody?.content.current;
        if (requestBody?.key case final key?) {
          buffer.writeln('@${key}');
        }

        final retrofitHttpMethodType =
            Recase.instance.toScreamingSnakeCase(methodType);
        buffer.writeln('''@${retrofitHttpMethodType}('${tagPath}')''');

        // method name
        final methodName = config.renameMethod(
          method.operationId.replaceAll(
            RegExp(clientName, caseSensitive: false),
            '',
          ),
        );

        final propertiesSnippets = <String>[];

        final parameters = method.parameters ?? [];

        /// queries / properties
        final queriesParams = parameters
            .where((e) => e.in_ == OpenApiPathMethodParameterType.query)
            .toList();

        if (queriesParams.isNotEmpty) {
          final queriesClass = generateQueriesClass(queriesParams, methodName);

          propertiesSnippets.add(
            '''@Queries() required ${config.renameClass(queriesClass)} queries,''',
          );
        }

        /// path params / properties
        final pathParams = parameters.where(
          (e) => e.in_ == OpenApiPathMethodParameterType.path,
        );

        for (final pathParam in pathParams) {
          final dartType = pathParam.schema.dartType(config);
          final paramName = config.renameProperty(pathParam.name);
          propertiesSnippets.add(
            '''@Path('${pathParam.name}') required $dartType $paramName,''',
          );
        }

        // body / properties
        if (requestBody != null) {
          final body = requestBody.value?.schema;

          final dartType = body == null ? 'dynamic' : body.dartType(config);

          propertiesSnippets.add(
            '''@Body() required $dartType body,''',
          );
        }

        String propertiesCode = '';

        if (propertiesSnippets.isNotEmpty) {
          propertiesCode = '''{${propertiesSnippets.join('\n')}}''';
        }

        buffer.writeln(
          '''Future<HttpResponse<${response ?? dynamicClassName}>> $methodName($propertiesCode);''',
        );
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
            ref: (value) => config.renameRefClass(value),
          ),
        );
      },
      ref: (value) => config.renameRefClass(value),
      anyOf: (value) => getAnyOfType(value, config),
      oneOf: (value) => '',
    );
  }

  return isNullable ? '$text?' : text;
}
