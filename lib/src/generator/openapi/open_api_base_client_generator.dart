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

    buffer.writeln(commentLine(_openApi.info.title));
    if (_openApi.info.description case final description?)
      buffer.writeln(commentLine(description));
    if (_openApi.info.version case final version?)
      buffer.writeln(commentLine(version));
    buffer.writeln(commentLine(DateTime.now().toString()));

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
