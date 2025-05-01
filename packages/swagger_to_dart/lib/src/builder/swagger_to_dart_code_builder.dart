import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class SwaggerToDartCodeBuilder {
  SwaggerToDartCodeBuilder._();

  static SwaggerToDartCodeBuilder get _instance => SwaggerToDartCodeBuilder._();
  static SwaggerToDartCodeBuilder get instance => _instance;

  Library class_({
    required BaseConfig config,
    required OpenApi openApi,
    required List<String> clients,
  }) {
    final className = NamingUtils.instance.renameClass(
      config.swaggerToDart.apiClientClassName,
    );

    final parameters = [
      (
        optional: true,
        parameter: Parameter(
          (b) => b
            ..name = 'dio'
            ..type = refer('Dio'),
        )
      ),
      (
        optional: false,
        parameter: Parameter(
          (b) => b
            ..name = 'baseUrl'
            ..type = refer('String?'),
        )
      ),
      (
        optional: false,
        parameter: Parameter(
          (b) => b
            ..name = 'errorLogger'
            ..type = refer('ParseErrorLogger?'),
        )
      ),
    ];

    return Library(
      (b) => b
        ..name = 'api_base_client'
        ..docs.addAll([
          openApi.info.title,
          if (openApi.info.description case final description?) description,
          if (openApi.info.version case final version?) version,
          DateTime.now().toString(),
        ])
        ..directives.addAll([
          Directive.import('package:dio/dio.dart'),
          Directive.import('package:retrofit/retrofit.dart'),
          config.importModelsDirective,
        ])
        ..body.add(
          Class((b) => b
            ..name = className
            ..constructors.addAll([
              Constructor(
                (b) => b
                  ..requiredParameters.addAll([
                    for (final item in parameters)
                      if (!item.optional) item.parameter,
                  ])
                  ..optionalParameters.addAll([
                    for (final item in parameters)
                      if (item.optional) item.parameter,
                  ]),
              ),
            ])
            ..fields.addAll([
              for (final item in parameters)
                Field(
                  (b) => b
                    ..name = item.parameter.name
                    ..type = item.parameter.type,
                ),
            ])),
        ),
    );
  }
}
