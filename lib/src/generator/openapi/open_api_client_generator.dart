import 'dart:math';

import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

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

      if (method.get != null) {
        final response = method.get!.responses!['200']!;

        final responseClassName = 'dynamic'; //
        response.content.applicationJson;

        buffer.writeln('/// ${method.delete}');
        buffer.writeln('@GET(\'$entry\')');

        final methodName = config
            .renameMethod(method.get!.operationId.replaceAll(clientName, ''));

        final parameters = method.current?.parameters;

        final queries = parameters
                ?.where((param) =>
                    param.in_ == OpenApiPathMethodParameterType.query)
                .toList() ??
            [];

        buffer.writeln(
          '''Future<HttpResponse<$responseClassName>> $methodName(''',
        );

        if (queries.isNotEmpty) {
          final queriesClass = generateQueriesClass(
            queries
              ..removeWhere(
                (param) => param.name == 'page' || param.name == 'per_page',
              ),
          );
          buffer.writeln(
            '''@Queries() $queriesClass queries,''',
          );
        }

        if (queries
            .any((param) => param.name == 'page' || param.name == 'per_page')) {
          buffer.writeln(
            '''@Queries() PaginationQueries paginationQueries,''',
          );
        }

        final pathParams = parameters?.where(
              (para) => para.in_ == OpenApiPathMethodParameterType.path,
            ) ??
            [];
        for (final pathParam in pathParams) {
          final dartType = pathParam.schema.map(
            type: (value) => 'String',
            ref: (value) => value.ref?.split('/').last,
            anyOf: (value) => 'anyOf',
            oneOf: (value) => 'oneOf',
          );
          final paramName = config.renameProperty(pathParam.name);
          buffer.writeln(
            '''@Path(\'${pathParam.name}\') $dartType $paramName,''',
          );
        }

        buffer.writeln(');');
      }
    }

    buffer.writeln('}');
    return (filename: fileName, content: buffer.toString());
  }
}

generatePaginationQueriesClassIfNotExists() {
  
}

String generateQueriesClass(List<OpenApiPathMethodParameter> query) {
  return 'QueriesClass';
}
