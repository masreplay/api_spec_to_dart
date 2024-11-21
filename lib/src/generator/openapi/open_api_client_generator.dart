import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

typedef OpenApiModel = MapEntry<String, OpenApiSchemas>;

class OpenApiDartClientGenerator {
  const OpenApiDartClientGenerator({
    required this.config,
  });

  final OpenApiGeneratorConfig config;

  ({String filename, String content}) generator({
    required OpenApiPaths model,
    required String clientName,
    required List<String> functionsPaths,
  }) {
    final buffer = StringBuffer();

//     import 'package:dio/dio.dart';
// import 'package:retrofit/retrofit.dart';
// import 'package:ums_api_client/src/model/model.dart';

// import 'settings_response.dart';

// part 'app_client.g.dart';

// /// A REST client for Settings API
// /// This client is used to fetch settings from the server
// @RestApi(baseUrl: '/api/v1/common/settings')
// abstract class AppClient {
//   factory AppClient(Dio dio, {String baseUrl}) = _AppClient;

//   /// Fetches settings from the server
//   @GET('/')
//   Future<HttpResponse<ApiResponse<SettingsResponse>>> getSettings();
// }

    buffer.writeln('import \'package:dio/dio.dart\';');
    buffer.writeln('import \'package:retrofit/retrofit.dart\';');
    buffer.writeln(
        'import \'package:${config.modelsOutputDirectory}/model.dart\';');
    buffer.writeln('import \'settings_response.dart\';');

    buffer.writeln('part \'${config.renameFile(clientName)}Client.g.dart\';');

    buffer.writeln('/// This client is used to fetch settings from the server');

    buffer.writeln('@RestApi(baseUrl: \'\')');
    buffer.writeln('abstract class ${config.renameFile(clientName)}Client {');

    buffer.writeln(
        'factory ${config.renameFile(clientName)}Client(Dio dio, {String baseUrl}) = _${config.renameFile(clientName)}Client;');

    for (final entry in functionsPaths) {
      final function = model[entry]!;

      if (function.get != null) {
        final response = function.get!.responses!['200']!;
        buffer.writeln('/// function path $entry');
        buffer.writeln('@GET(\'$entry\')');
        buffer.writeln(
            'Future<HttpResponse<ApiResponse<${config.renameFile(response.toString())}Response>>> ${config.renameFile(function.operationId)}();');
      }
    }

    buffer.writeln('}');
    return (
      filename: '${config.renameFile(clientName)}Client',
      content: buffer.toString()
    );
  }
}
