import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiBaseClientGenerator {
  const OpenApiBaseClientGenerator({
    required this.config,
  });

  final SwaggerToDartConfig config;

  String generator({
    required List<String> clients,
  }) {
    final _openApi = readOpenApiFile(config);

    final buffer = StringBuffer();

    buffer.writeln('''import 'package:dio/dio.dart';''');

    buffer.writeln(config.importClientsCode);

    buffer.writeln();

    buffer.writeln(commentLine(DateTime.now().toString()));
    buffer.writeln(commentLine(_openApi.info.title));
    buffer.writeln(commentLine(_openApi.info.description));
    buffer.writeln(commentLine(_openApi.info.version));

    final className = config.swaggerToDart.apiClientClassName;
    buffer.writeln('''class ${className} {''');

    buffer.writeln();

    buffer.writeln(
      '''${className}(this.dio);''',
    );

    buffer.writeln();
    buffer.writeln('''final Dio dio;''');
    buffer.writeln();
    for (final client in clients) {
      buffer.writeln(
        '''${config.renameClass(client)}Client get ${config.renameProperty(client)}{
          return ${config.renameClass(client)}Client(dio);
        }''',
      );
    }

    buffer.writeln('}');
    return buffer.toString();
  }
}
