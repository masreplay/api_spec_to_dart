import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// ```dart
/// import 'package:dio/dio.dart';
/// import 'package:example/src/gen/api_client/advanced_client.dart';
/// import 'package:retrofit/retrofit.dart';
///
/// class BaseApiClient {
///   const BaseApiClient({
///     required this.baseUrl,
///     required this.dio,
///     this.errorLogger,
///   });
///
///   final Dio dio;
///   final ParseErrorLogger? errorLogger;
///   final String? baseUrl;
///
///   AdvancedClient get advancedClient {
///     return AdvancedClient(dio, baseUrl: baseUrl, errorLogger: errorLogger);
///   }
/// }
/// ```

class BaseApiClientGenerator {
  const BaseApiClientGenerator(this.context);

  final GenerationContext context;

  Library build() {
    final className = 'BaseApiClient';
    final fileName = Renaming.instance.renameFile(className);

    return Library(
      (b) => b
        ..name = fileName
        ..directives.addAll([
          Directive.import('package:dio/dio.dart'),
          Directive.import('package:retrofit/retrofit.dart'),
          Directive.import('exports.dart')
        ])
        ..body.addAll([
          Class(
            (b) => b
              ..docs.addAll([
                if (context.openApi.info case final info?)
                  ...JsonFactory.instance
                      .encode(info.toJson())
                      .split('\n')
                      .map((e) => '/// $e')
                      .toList(),
                if (context.openApi.servers case final servers?)
                  ...servers.map((e) => '/// ${e.url}').toList(),
              ])
              ..name = className
              ..constructors.addAll([
                Constructor(
                  (b) => b
                    ..requiredParameters.addAll([
                      Parameter(
                        (b) => b
                          ..name = 'dio'
                          ..toThis = true,
                      ),
                    ])
                    ..optionalParameters.addAll([
                      Parameter(
                        (b) => b
                          ..name = 'baseUrl'
                          ..named = true
                          ..toThis = true,
                      ),
                      Parameter(
                        (b) => b
                          ..name = 'errorLogger'
                          ..named = true
                          ..toThis = true,
                      ),
                    ]),
                ),
              ])
              ..fields.addAll([
                Field(
                  (b) => b
                    ..name = 'baseUrl'
                    ..type = refer('String?')
                    ..modifier = FieldModifier.final$,
                ),
                Field(
                  (b) => b
                    ..name = 'dio'
                    ..type = refer('Dio')
                    ..modifier = FieldModifier.final$,
                ),
                Field(
                  (b) => b
                    ..name = 'errorLogger'
                    ..type = refer('ParseErrorLogger?')
                    ..modifier = FieldModifier.final$,
                ),
              ])
              ..methods.addAll(
                context.apiClients.map(
                  (apiClient) {
                    final clientName =
                        Recase.instance.toPascalCase(apiClient.name!);
                    return Method(
                      (b) => b
                        ..type = MethodType.getter
                        ..returns = refer(clientName)
                        ..name = Recase.instance.toCamelCase(clientName)
                        ..body = Code(
                          'return $clientName(dio, baseUrl: baseUrl, errorLogger: errorLogger);',
                        ),
                    );
                  },
                ),
              ),
          )
        ]),
    );
  }
}
