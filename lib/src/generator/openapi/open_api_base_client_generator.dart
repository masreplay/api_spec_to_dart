import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiBaseClientGenerator {
  const OpenApiBaseClientGenerator({
    required this.config,
  });

  final SwaggerToDartConfig config;

  String generator({
    required List<String> clients,
  }) {
    final buffer = StringBuffer();

    buffer.writeln('''import 'package:dio/dio.dart';''');

    buffer.writeln(config.importClientsCode);

    buffer.writeln();

    buffer.writeln('''class ${config.swaggerToDart.apiClientClassName} {''');

    buffer.writeln();

    buffer.writeln(
      '''${config.swaggerToDart.apiClientClassName}(this._dio);''',
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
