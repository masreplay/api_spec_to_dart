import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/builder/retrofit_class_code_builder.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';

import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';

/// Generated Client Code
///
/// ```dart
/// import 'package:dio/dio.dart';
/// import 'package:retrofit/retrofit.dart';
/// import 'package:api_client/src/gen/models/models.dart';
///
/// part 'settings_client.g.dart';
///
/// @RestApi()
/// abstract class SettingsClient {
///   factory SettingsClient(
///     Dio dio, {
///     String? baseUrl,
///     ParseErrorLogger? errorLogger,
///   }) = _SettingsClient;
///
///   /// OperationId: settings-get_app_settings
///   /// Summery: Get App Settings
///   /// Description: **Status**: implemented
///   /// **Ready for production**: Yes
///   /// **Priority**: medium
///   /// **Note**: N/A
///   @GET('/api/v1/common/settings/')
///   Future<HttpResponse<BaseResponseAppSettingsResponse>>
///   settingsGetAppSettings();
/// }
/// ```

class ApiClientGenerator {
  const ApiClientGenerator(this.context);

  final GenerationContext context;

  Future<void> generate() async {
    if (context.openApi.paths case final openApiPaths?) {
      for (final MapEntry<String, OpenApiPath> entry in openApiPaths.entries) {
        final client = build(clientName: entry.key);

        context.addClient(client);
      }
    }
  }

  Library build({
    required String clientName,
  }) {

    return Library(
      (b) => b
        ..name = filename
        ..directives.addAll([
          Directive.import('package:retrofit/retrofit.dart'),
          Directive.import('package:dio/dio.dart'),
          Directive.part('${filename}.g.dart'),
        ])
        ..annotations.addAll([
          generateRestApiAnnotation(retrofit.RestApi()),
        ])
        ..body.addAll([
          Class(
            (b) => b
              ..abstract = true
              ..name = className
              ..constructors.addAll([
                Constructor(
                  (b) => b
                    ..constant = true
                    ..factory = true
                    ..redirect = refer('_${className}')
                    ..optionalParameters.addAll([
                      Parameter(
                        (b) => b
                          ..name = 'dio'
                          ..type = refer('Dio'),
                      ),
                    ])
                    ..requiredParameters.addAll([
                      Parameter(
                        (b) => b
                          ..name = 'baseUrl'
                          ..type = refer('String'),
                      ),
                      Parameter(
                        (b) => b
                          ..name = 'errorLogger'
                          ..type = refer('ParseErrorLogger'),
                      ),
                    ]),
                ),
              ])
              ..fields.addAll([])
              ..methods.addAll([]),
          ),
          Extension(
            (b) => b
              ..name = '${className}Extension'
              ..on = refer(className),
          ),
        ]),
    );
  }
}
