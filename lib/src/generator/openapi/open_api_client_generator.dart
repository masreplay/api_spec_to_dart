import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiClientGenerator {
  const OpenApiClientGenerator({
    required this.config,
  });

  final SwaggerToDartConfig config;

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

    final skippedParameters = config.swaggerToDart.skippedParameters;

    for (final tagPath in tagPaths) {
      final method = path[tagPath]!;

      for (final entry in method.methods.entries) {
        final String methodType = entry.key;
        final OpenApiPathMethod method = entry.value;

        // description / comment

        final operationId = method.operationId;
        buffer.writeln('/// OperationId: ${operationId}');

        final summary = method.summary;
        if (summary != null) buffer.writeln('/// Title: ${summary}');

        final description = method.description;
        if (summary != null) buffer.writeln('/// Description: ${description}');

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
        final methodName = config.renameMethod(method.operationId);

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

        /// headers / properties
        print(
          "skippedParameters: ${skippedParameters} ${parameters.where((e) => e.in_ == OpenApiPathMethodParameterType.header).map((e) => e.name).toList().join(',')}",
        );

        final headerParams = parameters
            .where(
              (e) =>
                  e.in_ == OpenApiPathMethodParameterType.header &&
                  !skippedParameters.contains(e.name),
            )
            .toList();

        for (final headerParam in headerParams) {
          final dartType = headerParam.schema.dartType(config);
          final paramName = config.renameProperty(headerParam.name);
          propertiesSnippets.add(
            '''@Header('${headerParam.name}') required $dartType $paramName,''',
          );
        }

        String propertiesCode = '';

        if (propertiesSnippets.isNotEmpty) {
          propertiesCode = '''{${propertiesSnippets.join('\n')}}''';
        }

        final returnType = response == null ||
                response == 'dynamic' ||
                response == 'Map<String, dynamic>'
            ? 'Future<HttpResponse>'
            : 'Future<HttpResponse<${response}>>';

        buffer.writeln('''$returnType $methodName($propertiesCode);''');
      }
    }

    buffer.writeln('}');
    return (filename: fileName, content: buffer.toString());
  }

  String generateQueriesClass(
    List<OpenApiPathMethodParameter> queries,
    String name,
  ) {
    final generator = OpenApiModelGenerator(config: config);

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
}
