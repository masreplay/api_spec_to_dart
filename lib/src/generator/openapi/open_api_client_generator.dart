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

    buffer.writeln('''part '$fileName.g.dart';''');

    buffer.writeln('''/// ''');

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

        buffer.writeln(
          'Future<HttpResponse<$responseClassName>> ${config.renameFile(method.get!.operationId)}();',
        );
      }
    }

    buffer.writeln('}');
    return (filename: fileName, content: buffer.toString());
  }
}
