import 'package:code_builder/code_builder.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart' hide Method, Field;
import 'package:swagger_to_dart/src/swagger_to_dart_base.dart';

/// Generated Client Code
///
/// Swagger
/// ```json
/// "/datetime/datetime": {
///   "get": {
///       "tags": [
///           "basic"
///       ],
///       "summary": "Handle datetime parameters",
///       "description": "Handle datetime parameter (YYYY-MM-DDThh:mm:ss).",
///       "operationId": "basic-datetime_datetime",
///       "parameters": [
///           {
///               "name": "dt",
///               "in": "query",
///               "required": true,
///               "schema": {
///                   "type": "string",
///                   "format": "date-time",
///                   "title": "Dt"
///               }
///           }
///       ],
///       "responses": {
///           "200": {
///               "description": "Successful Response",
///               "content": {
///                   "application/json": {
///                       "schema": {
///                           "type": "object",
///                           "additionalProperties": true,
///                           "title": "Response Basic-Datetime Datetime"
///                       }
///                   }
///               }
///           },
///           "422": {
///               "description": "Validation Error",
///               "content": {
///                   "application/json": {
///                       "schema": {
///                           "$ref": "#/components/schemas/HTTPValidationError"
///                       }
///                   }
///               }
///           }
///       }
///   },
///   "post": {
///       "tags": [
///           "basic"
///       ],
///       "summary": "Handle datetime parameters",
///       "description": "Handle datetime parameter (YYYY-MM-DDThh:mm:ss).",
///       "operationId": "basic-create_datetime_datetime",
///       "parameters": [
///           {
///               "name": "dt",
///               "in": "query",
///               "required": true,
///               "schema": {
///                   "type": "string",
///                   "format": "date-time",
///                   "title": "Dt"
///               }
///           }
///       ],
///       "responses": {
///           "200": {
///               "description": "Successful Response",
///               "content": {
///                   "application/json": {
///                       "schema": {
///                           "type": "object",
///                           "additionalProperties": true,
///                           "title": "Response Basic-Create Datetime Datetime"
///                       }
///                   }
///               }
///           },
///           "422": {
///               "description": "Validation Error",
///               "content": {
///                   "application/json": {
///                       "schema": {
///                           "$ref": "#/components/schemas/HTTPValidationError"
///                       }
///                   }
///               }
///           }
///       }
///   }
/// }
/// ```
///
/// Generated:
/// ```dart
/// import 'package:dio/dio.dart';
/// import 'package:retrofit/retrofit.dart';
/// import 'models.dart';
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
///   @GET('/api/v1/common/settings/')
///   Future<HttpResponse<BaseResponseAppSettingsResponse>>
///   settingsGetAppSettings();
/// }
/// ```

typedef _MultipartMethodInfo = ({
  String methodName,
  Reference responseType,
  List<Parameter> parameters,
  Reference requestBodyType,
});

class ApiClientGenerator {
  const ApiClientGenerator(this.context);

  final GenerationContext context;

  Future<void> generate() async {
    // <basic, </datetime/datetime, < post | get ..., OpenApiPathMethod>>>
    final Map<String, OpenApiPaths> group = {};

    for (final entry in (context.openApi.paths ?? {}).entries) {
      final path = entry.key;
      // <post | get ..., OpenApiPathMethod>
      final methods = entry.value;

      for (final method in methods.values) {
        final tags =
            (method.tags ?? []).map((e) => Recase.instance.removeNonAscii(e));
        if (tags.isEmpty) {
          group['default'] ??= {};
          group['default']![path] = methods;
        } else {
          for (final tag in tags) {
            group[tag] ??= {};
            group[tag]![path] = methods;
          }
        }
      }
    }

    for (final entry in group.entries) {
      final tag = entry.key;
      final paths = entry.value;

      final apiClient = build(
        clientName: tag,
        paths: paths,
      );

      context.addApiClient(apiClient);
    }
  }

  /// import 'package:dio/dio.dart';
  /// import 'package:retrofit/retrofit.dart';
  /// import 'models.dart';
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
  ///   @GET('/api/v1/common/settings/')
  ///   Future<HttpResponse<BaseResponseAppSettingsResponse>>
  ///   settingsGetAppSettings();

  Library build({
    required String clientName,
    required OpenApiPaths paths,
  }) {
    final fileName = Renaming.instance.renameFile('${clientName}_client');
    final className = Recase.instance.toPascalCase(fileName);

    // Collect multipart methods for extension generation
    final List<_MultipartMethodInfo> multipartMethods = [];

    return Library(
      (b) => b
        ..directives.addAll([
          Directive.import('package:dio/dio.dart'),
          Directive.import('package:retrofit/retrofit.dart'),
          Directive.import('../models/models.dart'),
          Directive.part('${fileName}.g.dart'),
        ])
        ..name = fileName
        ..body.addAll([
          Class(
            (b) => b
              ..annotations.addAll([
                refer('$RestApi()'),
              ])
              ..abstract = true
              ..name = className
              ..constructors.addAll([
                Constructor(
                  (b) => b
                    ..factory = true
                    ..redirect = refer('_$className')
                    ..requiredParameters.addAll([
                      Parameter(
                        (b) => b
                          ..name = 'dio'
                          ..type = refer('Dio')
                          ..named = true,
                      ),
                    ])
                    ..optionalParameters.addAll([
                      Parameter(
                        (b) => b
                          ..named = true
                          ..name = 'errorLogger'
                          ..type = refer('ParseErrorLogger?'),
                      ),
                      Parameter(
                        (b) => b
                          ..named = true
                          ..name = 'baseUrl'
                          ..type = refer('String?'),
                      ),
                    ]),
                ),
              ])
              ..methods.addAll([
                for (final path in paths.entries)
                  for (final method in path.value.entries)
                    Method(
                      (b) {
                        final methodType = Recase.instance.toScreamingSnakeCase(
                          method.key.name,
                        );

                        final baseMethodName = Renaming.instance.renameFunction(
                          method.value.operationId ??
                              '${clientName}_${path.key}_${method.key.name}',
                        );

                        final isMultipart = method
                                .value.requestBody?.content.multipartFormData !=
                            null;

                        final methodName =
                            isMultipart ? '_$baseMethodName' : baseMethodName;

                        final parameters = _handleParameters(
                          method.value.parameters ?? [],
                          className: className,
                          methodName: methodName,
                        );

                        final responseType = _handleResponseType(
                          method.value.responses ?? {},
                          className,
                        );

                        final requestBody = _handleRequestBody(
                          method.value.requestBody,
                          className,
                        );

                        // Store multipart method info for extension
                        if (isMultipart && requestBody != null) {
                          final body = method
                              .value.requestBody!.content.multipartFormData;

                          multipartMethods.add((
                            methodName: methodName,
                            responseType: responseType,
                            parameters: parameters,
                            requestBodyType: refer(
                              context.extension.typeConverter.get(
                                body!.schema,
                                className: className,
                              ),
                            ),
                          ));
                        }

                        b
                          ..docs.addAll([
                            '/// ${method.key.name}',
                            ...JsonFactory.instance
                                .encode(method.value.toJson())
                                .split('\n')
                                .map((e) => '/// $e')
                                .toList(),
                          ])
                          ..annotations.addAll([
                            refer('$methodType("${path.key}")'),
                            // if requestBody is FormUrlEncoded or MultiPart
                            // must add @FormUrlEncoded or @MultiPart
                            if (method.value.requestBody?.content
                                    .applicationXWwwFormUrlencoded !=
                                null)
                              refer('FormUrlEncoded()')
                            else if (method.value.requestBody?.content
                                    .multipartFormData !=
                                null)
                              refer('MultiPart()'),
                          ])
                          ..returns = responseType
                          ..name = methodName
                          ..optionalParameters.addAll([
                            if (requestBody != null) requestBody,
                            ...parameters,
                            ..._optionalParameters,
                          ]);
                      },
                    ),
              ]),
          ),
          // Add extension for multipart methods
          if (multipartMethods.isNotEmpty)
            Extension(
              (b) => b
                ..name = '${className}Extension'
                ..on = refer(className)
                ..methods.addAll([
                  for (final methodInfo in multipartMethods)
                    Method(
                      (b) => b
                        ..returns = methodInfo.responseType
                        ..name = methodInfo.methodName.replaceAll('_', '')
                        ..optionalParameters.addAll([
                          Parameter(
                            (b) => b
                              ..named = true
                              ..required = true
                              ..name = 'requestBody'
                              ..type = methodInfo.requestBodyType,
                          ),
                          ..._extensionOptionalParameters,
                        ])
                        ..body = Code('return ${methodInfo.methodName}('
                            'requestBody: requestBody.toJson(), '
                            'extras: extras, '
                            'cancelToken: cancelToken, '
                            'onSendProgress: onSendProgress, '
                            'onReceiveProgress: onReceiveProgress'
                            ');'),
                    ),
                ]),
            ),
        ]),
    );
  }

  List<Parameter> _handleParameters(
    List<OpenApiPathMethodParameter> parameters, {
    required String methodName,
    required String className,
  }) {
    final useClass = context.config.apiClient.useClassForQueryParameters;
    final skippedParameters = context.config.apiClient.skippedParameters;

    parameters =
        parameters.where((e) => !skippedParameters.contains(e.name)).toList();

    final queryParameters =
        parameters.where((e) => e.in_ == OpenApiPathMethodParameterType.query);

    final List<Parameter> result = [];

    if (useClass && queryParameters.isNotEmpty) {
      final strategy = RegularModelGeneratorStrategy(context);

      final queryParametersClassName = Renaming.instance.renameClass(
        '${methodName}QueryParameters',
      );

      final model = MapEntry<String, OpenApiSchemas>(
        queryParametersClassName,
        OpenApiSchemas(
          type: 'object',
          properties: {
            for (final p in queryParameters) p.name: p.schema,
          },
        ),
      );

      result.add(
        Parameter(
          (b) => b
            ..annotations.addAll([refer('$Queries()')])
            ..name = 'queries'
            ..required = true
            ..named = true
            ..type = refer(queryParametersClassName),
        ),
      );

      context.addModel(strategy.build(model));
    }

    for (final p in parameters) {
      if (useClass && queryParameters.contains(p)) {
        continue;
      }

      final dartType = context.extension.typeConverter.get(
        p.schema,
        className: className,
      );

      final defaultValue = context.extension.typeConverter.getDefaultValue(
        p.schema,
      );

      result.add(
        Parameter(
          (b) => b
            ..annotations.addAll([
              switch (p.in_) {
                OpenApiPathMethodParameterType.query =>
                  refer('$Query("${p.name}")'),
                OpenApiPathMethodParameterType.path =>
                  refer('$Path("${p.name}")'),
                OpenApiPathMethodParameterType.header =>
                  refer('$Header("${p.name}")'),
                OpenApiPathMethodParameterType.cookie =>
                  refer('$Header("${p.name}")'),
              }
            ])
            ..named = true
            ..name = Renaming.instance.renameProperty(
              p.name,
            )
            ..required = defaultValue == null
            ..defaultTo = defaultValue == null ? null : Code(defaultValue)
            ..type = refer(dartType),
        ),
      );
    }

    return result;
  }

  Parameter? _handleRequestBody(
    OpenApiPathMethodRequestBody? requestBody,
    String className,
  ) {
    if (requestBody?.content.applicationXWwwFormUrlencoded case final body?) {
      return Parameter((b) => b
        ..annotations.addAll([
          refer('$Body()'),
        ])
        ..name = 'requestBody'
        ..named = true
        ..required = true
        ..type = refer(
          context.extension.typeConverter.get(
            body.schema,
            className: className,
          ),
        ));
    } else if (requestBody?.content.multipartFormData case final body?) {
      return Parameter((b) => b
        ..annotations.addAll([
          refer('$Part()'),
        ])
        ..name = 'requestBody'
        ..named = true
        ..required = true
        ..type = refer('Map<String, dynamic>'));
    } else if (requestBody?.content.applicationJson case final body?) {
      return Parameter((b) => b
        ..annotations.addAll([
          refer('$Body()'),
        ])
        ..name = 'requestBody'
        ..named = true
        ..required = true
        ..type = refer(
          context.extension.typeConverter.get(
            body.schema,
            className: className,
          ),
        ));
    } else {
      return null;
    }
  }

  Reference _handleResponseType(
    OpenApiPathMethodResponses responses,
    String className,
  ) {
    final response = responses.values.firstOrNull?.content?.applicationJson;

    final responseTypeString = response == null
        ? null
        : context.extension.typeConverter.get(
            response.schema,
            className: className,
          );

    return responseTypeString == null
        ? refer('Future<HttpResponse>')
        : refer('Future<HttpResponse<${responseTypeString}>>');
  }

  List<Parameter> get _optionalParameters => [
        Parameter(
          (b) => b
            ..annotations.addAll([
              refer('$Extras()'),
            ])
            ..named = true
            ..name = 'extras'
            ..type = refer('Map<String, dynamic>?'),
        ),
        Parameter(
          (b) => b
            ..annotations.addAll([
              refer('$CancelRequest()'),
            ])
            ..named = true
            ..name = 'cancelToken'
            ..type = refer('$CancelToken?'),
        ),
        Parameter(
          (b) => b
            ..annotations.addAll([
              refer('$SendProgress()'),
            ])
            ..named = true
            ..name = 'onSendProgress'
            ..type = refer('ProgressCallback?'),
        ),
        Parameter(
          (b) => b
            ..annotations.addAll([
              refer('$ReceiveProgress()'),
            ])
            ..named = true
            ..name = 'onReceiveProgress'
            ..type = refer('ProgressCallback?'),
        ),
      ];

  List<Parameter> get _extensionOptionalParameters => [
        Parameter(
          (b) => b
            ..named = true
            ..name = 'extras'
            ..type = refer('Map<String, dynamic>?'),
        ),
        Parameter(
          (b) => b
            ..named = true
            ..name = 'cancelToken'
            ..type = refer('$CancelToken?'),
        ),
        Parameter(
          (b) => b
            ..named = true
            ..name = 'onSendProgress'
            ..type = refer('ProgressCallback?'),
        ),
        Parameter(
          (b) => b
            ..named = true
            ..name = 'onReceiveProgress'
            ..type = refer('ProgressCallback?'),
        ),
      ];
}
