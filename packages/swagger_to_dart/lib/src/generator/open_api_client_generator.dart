import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/swagger_to_dart.dart';

String commentLine(String line) {
  return '''/// ${line.split('\n').join('\n/// ')}''';
}

class OpenApiClientGenerator {
  const OpenApiClientGenerator({required this.config});

  final BaseConfig config;

  ({String filename, String content}) generator({
    required OpenApiPaths path,
    required String clientName,
    required List<String> tagPaths,
  }) {
    final buffer = StringBuffer();

    buffer.writeln('''import 'package:dio/dio.dart';''');
    buffer.writeln('''import 'package:retrofit/retrofit.dart';''');
    buffer.writeln(config.importConfig.importModelDirective);

    final fileName = '''${NamingUtils.renameFile(clientName)}_client''';
    buffer.writeln(''' ''');

    buffer.writeln('''part '$fileName.g.dart';''');

    buffer.writeln(''' ''');

    buffer.writeln('''@RestApi()''');

    final className = '${NamingUtils.renameClass(clientName)}Client';
    buffer.writeln('''abstract class ${className} {''');

    buffer.writeln(
      '''factory ${className}(Dio dio, {
        String? baseUrl,
        ParseErrorLogger? errorLogger,
      }) = _${className};''',
    );

    final skippedParameters = config.baseConfig.swaggerToDart.skippedParameters;

    final privateMethods = <({String methodName, OpenApiPathMethod method})>[];
    for (final tagPath in tagPaths) {
      final method = path[tagPath]!;

      for (final entry in method.methods.entries) {
        final String methodType = entry.key;
        final OpenApiPathMethod method = entry.value;

        // method name
        final methodName = NamingUtils.renameMethod(
          method.operationId ?? "${methodType}_${tagPath.replaceAll('/', '_')}",
        );

        // description / comment

        final operationId = method.operationId;
        buffer.writeln(commentLine('OperationId: ${operationId}'));

        final summary = method.summary;
        if (summary != null) {
          buffer.writeln(commentLine('Summery: ${summary}'));
        }

        final description = method.description;
        if (description != null) {
          buffer.writeln(commentLine('Description: ${description}'));
        }

        // response / return type
        final responses = method.responses ?? {};
        final successResponse = responses['200'] ?? responses['201'];

        final response = _getDartType(
          successResponse?.content?.current.value?.schema,
          methodName,
        );

        // request type + http method type + path / annotation
        final requestBody = method.requestBody?.content.current;
        final isMultipart = requestBody?.key == 'MultiPart()';
        if (isMultipart)
          privateMethods.add((methodName: methodName, method: method));

        if (requestBody?.key case final key?) {
          buffer.writeln('@${key}');
        }

        final retrofitHttpMethodType = Recase.instance.toScreamingSnakeCase(
          methodType,
        );

        if (method.deprecated == true) {
          buffer.writeln('@deprecated');
        }
        buffer.writeln('''@${retrofitHttpMethodType}('${tagPath}')''');

        final propertiesSnippets = <String>[];

        final parameters = method.parameters ?? [];

        /// queries / properties
        final queriesParams = parameters
            .where((e) => e.in_ == OpenApiPathMethodParameterType.query)
            .toList();

        if (queriesParams.isNotEmpty) {
          final queriesClass = generateQueriesClass(queriesParams, methodName);

          propertiesSnippets.add(
            '''@Queries() required ${NamingUtils.renameClass(queriesClass)} queries,''',
          );
        }

        /// path params / properties
        final pathParams = parameters.where(
          (e) => e.in_ == OpenApiPathMethodParameterType.path,
        );

        for (final pathParam in pathParams) {
          final dartType = _getDartType(pathParam.schema, methodName);
          final paramName = NamingUtils.renameProperty(pathParam.name);

          propertiesSnippets.add(
            '''@Path('${pathParam.name}') required $dartType $paramName,''',
          );
        }

        // body / properties
        if (requestBody != null) {
          final body = requestBody.value?.schema;

          final dartType =
              body == null ? 'dynamic' : _getDartType(body, methodName);

          if (isMultipart) {
            propertiesSnippets.add(
              '''@Part() required Map<String, dynamic> body,''',
            );
          } else {
            propertiesSnippets.add('''@Body() required $dartType body,''');
          }
        }

        /// headers / properties
        // print(
        //   "skippedParameters: ${skippedParameters} ${parameters.where((e) => e.in_ == OpenApiPathMethodParameterType.header).map((e) => e.name).toList().join(',')}",
        // );

        final headerParams = parameters
            .where(
              (e) =>
                  e.in_ == OpenApiPathMethodParameterType.header &&
                  !skippedParameters.contains(e.name),
            )
            .toList();

        for (final headerParam in headerParams) {
          final dartType = _getDartType(headerParam.schema, methodName);
          final paramName = NamingUtils.renameProperty(headerParam.name);
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

        buffer.writeln(
          '''$returnType ${isMultipart ? '_' : ''}$methodName($propertiesCode);''',
        );
      }
    }

    buffer.writeln('}');

    if (privateMethods.isNotEmpty) {
      buffer.writeln('extension ${className}Extension on ${className} {');
      for (final entry in privateMethods) {
        final method = entry.method;

        final methodName = entry.methodName;

        // response / return type
        final responses = method.responses ?? {};
        final successResponse = responses['200'] ?? responses['201'];

        final response = _getDartType(
          successResponse?.content?.current.value?.schema,
          methodName,
        );

        final requestBody = method.requestBody?.content.current;
        final body = requestBody?.value?.schema;

        final dartType =
            body == null ? 'dynamic' : _getDartType(body, methodName);
        final parameters = method.parameters?.where((e) {
              return !(e.in_ == OpenApiPathMethodParameterType.header &&
                  skippedParameters.contains(e.name));
            }) ??
            [];

        final params = StringBuffer();
        for (final param in parameters) {
          final dartType = _getDartType(param.schema, methodName);
          final paramName = NamingUtils.renameProperty(param.name);
          params.writeln('required $dartType  $paramName,\n ');
        }

        final returnType = response == null ||
                response == 'dynamic' ||
                response == 'Map<String, dynamic>'
            ? 'Future<HttpResponse>'
            : 'Future<HttpResponse<${response}>>';

        buffer.writeln('''$returnType $methodName(
      {${params.toString()}
      required $dartType body,
      }
     ){
      return _$methodName(
        body: body.toJson(),
        ${parameters.map((e) => '${NamingUtils.renameProperty(e.name)}: ${NamingUtils.renameProperty(e.name)},').join(',\n')}
      );
    }''');
      }

      buffer.writeln('}');
    }

    return (filename: fileName, content: buffer.toString());
  }

  String generateQueriesClass(
    List<OpenApiPathMethodParameter> queries,
    String name,
  ) {
    final generator = OpenApiModelGenerator(config: config);

    final className = '${name}Queries';

    final params = queries.map((e) {
      return MapEntry(e.name, e.schema);
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

    if (!Directory(config.pathConfig.modelsOutputDirectory).existsSync()) {
      Directory(
        config.pathConfig.modelsOutputDirectory,
      ).createSync(recursive: true);
    }

    final filepath = path.join(
      config.pathConfig.modelsOutputDirectory,
      '${NamingUtils.renameFile(className)}.dart',
    );

    final file = File(filepath);

    file.writeAsString(result.content);

    print('Generated: $filepath');

    return className;
  }

  String? _getDartType(OpenApiSchema? model, String className) {
    if (model == null) return null;

    return switch (model) {
      OpenApiSchemaType value => config.dartTypeConverter.dartType(
          type: value.type,
          format: value.format,
          genericType: switch (value.items) {
            OpenApiSchemaRef value => NamingUtils.renameRefClass(value),
            OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                value,
                config.dartTypeConverter,
              ),
            _ => null,
          },
          items: value.items,
          title: value.title,
        ),
      OpenApiSchemaRef value => NamingUtils.renameRefClass(value),
      OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
          value,
          config.dartTypeConverter,
        ),
      OpenApiSchemaOneOf value => handleOpenApiOneOfToDartType(
          '${className}Union${value.title ?? 'Model'}',
          value,
          config.dartTypeConverter,
        ),
    };
  }
}
