import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart' hide Method, Field;
import 'package:swagger_to_dart/src/swagger_to_dart_base.dart';

const _requestBodyName = 'requestBody';
const _queriesParameterName = 'queries';

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
        final tags = (method.tags ?? []).map(
          (e) => Recase.instance.removeNonAscii(e),
        );
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

      final apiClient = build(clientName: tag, paths: paths);

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
  Library build({required String clientName, required OpenApiPaths paths}) {
    final fileName = Renaming.instance.renameFile('${clientName}_client');
    final className = Recase.instance.toPascalCase(fileName);

    final extensionMethods = <Method>[];

    final methods = <Method>[];

    for (final path in paths.entries) {
      for (final method in path.value.entries) {
        final methodType = Recase.instance.toScreamingSnakeCase(
          method.key.name,
        );

        final methodName = Renaming.instance.renameFunction(
          method.value.operationId ??
              '${clientName}_${path.key}_${method.key.name}',
        );

        final parameters = _handleParameters(
          method.value.parameters ?? [],
          className: className,
          methodName: methodName,
        );

        final responseType = _handleResponseType(
          method.value.responses ?? {},
          className,
        );

        final requestBody = <Parameter>[];
        final content = method.value.requestBody?.content ?? {};

        for (final entry in content.entries) {
          OpenApiContentType? contentType;
          try {
            contentType = OpenApiContentType.fromJson(entry.key);
          } catch (e) {
            print('Invalid content type: ${entry.key}');
          }

          switch (contentType) {
            case null:
              continue;
            case OpenApiContentType.applicationJson:
            case OpenApiContentType.applicationXWwwFormUrlencoded:
              requestBody.add(
                Parameter(
                  (b) => b
                    ..annotations.addAll([refer('$Body()')])
                    ..name = _requestBodyName
                    ..named = true
                    ..required = true
                    ..type = refer(
                      context.extension.typeConverter.get(
                        entry.value.schema,
                        className: className,
                      ),
                    ),
                ),
              );
            case OpenApiContentType.multipartFormData:
              requestBody.add(
                Parameter(
                  (b) => b
                    ..annotations.addAll([refer('$Part()')])
                    ..name = _requestBodyName
                    ..named = true
                    ..required = true
                    ..type = refer('Map<String, dynamic>'),
                ),
              );

              // WORKAROUND for sending class as request body in `multipart/form-data`
              final dartType = context.extension.typeConverter.get(
                entry.value.schema,
                className: className,
              );

              final canToJson = dartType != 'Map<String, dynamic>';
              extensionMethods.add(
                Method(
                  (b) => b
                    ..name = methodName
                    ..returns = responseType
                    ..optionalParameters.addAll([
                      Parameter(
                        (b) => b
                          ..name = _requestBodyName
                          ..required = true
                          ..type = refer(dartType),
                      ),
                      ...parameters,
                      ..._extraParameters(openapiMetadata: method.value.json),
                    ])
                    ..body = Block.of([
                      Code(
                        '''return ${methodName}_($_requestBodyName: $_requestBodyName${canToJson ? '.toJson()' : ''}, extras: extras,
                      ${parameters.firstWhereOrNull((e) => e.name == _queriesParameterName) != null ? 'queries: queries,' : ''}
                      cancelToken: cancelToken,
                      onSendProgress: onSendProgress,
                      onReceiveProgress: onReceiveProgress
                      );''',
                      ),
                    ]),
                ),
              );
              break;
          }
        }

        methods.add(
          Method(
            (b) => b
              // ..docs.addAll([
              //  '/// ${method.key.name}',
              //  ...JsonFactory.instance
              //      .encode(method.value.toJson())
              //      .split('\n')
              //      .map((e) => '/// $e'),
              // ])
              ..annotations.addAll([
                refer('$methodType("${path.key}")'),
                if (content[OpenApiContentType.applicationXWwwFormUrlencoded
                        .toJson()] !=
                    null)
                  refer('$FormUrlEncoded()'),
                if (content[OpenApiContentType.multipartFormData.toJson()] !=
                    null)
                  refer('$MultiPart()'),
              ])
              ..returns = responseType
              ..name =
                  content[OpenApiContentType.multipartFormData.toJson()] != null
                      ? '${methodName}_'
                      : methodName
              ..optionalParameters.addAll([
                ...requestBody,
                ...parameters,
                ..._extraParameters(openapiMetadata: method.value.json),
              ]),
          ),
        );
      }
    }

    return Library(
      (b) => b
        ..directives.addAll([
          for (final import in context.config.imports?.globalImports ?? [])
            Directive.import(import),
          Directive.import('package:dio/dio.dart', hide: ['Headers']),
          Directive.import('package:retrofit/retrofit.dart'),
          Directive.import('../models/models.dart'),
          Directive.part('$fileName.g.dart'),
        ])
        ..name = fileName
        ..body.addAll([
          Class(
            (b) => b
              ..annotations.addAll([refer('$RestApi()')])
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
              ..methods.addAll(methods),
          ),
          if (extensionMethods.isNotEmpty)
            Extension(
              (b) => b
                ..name = '${className}X'
                ..on = refer(className)
                ..methods.addAll(extensionMethods),
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

    final queryParameters = parameters.where(
      (e) => e.in_ == OpenApiPathMethodParameterType.query,
    );

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
          required_: queryParameters
              .where((e) => e.required_ == true)
              .map((e) => e.name)
              .toList(),
          properties: {
            for (final p in queryParameters)
              if (p.schema case final schema?) p.name: schema,
          },
        ),
      );

      result.add(
        Parameter(
          (b) => b
            ..annotations.addAll([refer('$Queries()')])
            ..name = _queriesParameterName
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
                OpenApiPathMethodParameterType.query => refer(
                    '$Query("${p.name}")',
                  ),
                OpenApiPathMethodParameterType.path => refer(
                    '$Path("${p.name}")',
                  ),
                OpenApiPathMethodParameterType.header => refer(
                    '$Header("${p.name}")',
                  ),
                OpenApiPathMethodParameterType.cookie => refer(
                    '$Header("${p.name}")',
                  ),
              },
            ])
            ..named = true
            ..name = Renaming.instance.renameProperty(p.name)
            ..required = defaultValue == null
            ..defaultTo = defaultValue == null ? null : Code(defaultValue)
            ..type = refer(dartType),
        ),
      );
    }

    return result;
  }

  Reference _handleResponseType(
    OpenApiPathMethodResponses responses,
    String className,
  ) {
    final response = responses.values.firstOrNull
        ?.content?[OpenApiContentType.applicationJson.toJson()];

    final responseTypeString = response == null
        ? null
        : context.extension.typeConverter.get(
            response.schema,
            className: className,
          );

    return responseTypeString == null
        ? refer('Future<HttpResponse>')
        : refer('Future<HttpResponse<$responseTypeString>>');
  }

  List<Parameter> _extraParameters({
    required Map<String, dynamic>? openapiMetadata,
  }) {
    return [
      Parameter(
        (b) => b
          ..annotations.addAll([refer('$CancelRequest()')])
          ..named = true
          ..name = 'cancelToken'
          ..type = refer('$CancelToken?'),
      ),
      Parameter(
        (b) => b
          ..annotations.addAll([refer('$SendProgress()')])
          ..named = true
          ..name = 'onSendProgress'
          ..type = refer('ProgressCallback?'),
      ),
      Parameter(
        (b) => b
          ..annotations.addAll([refer('$ReceiveProgress()')])
          ..named = true
          ..name = 'onReceiveProgress'
          ..type = refer('ProgressCallback?'),
      ),
      Parameter(
        (b) => b
          ..annotations.addAll([refer('$Extras()')])
          ..named = true
          ..name = 'extras'
          ..defaultTo = Code('const ${encodeWithRawKeys(openapiMetadata)}')
          ..type = refer('Map<String, dynamic>?'),
      ),
    ];
  }
}

String encodeWithRawKeys(dynamic value) {
  String escapeForRaw(String s) => s.replaceAll('"', r'\"');

  if (value is Map) {
    final buffer = StringBuffer('{');
    var first = true;
    value.forEach((key, val) {
      if (!first) buffer.write(', ');
      first = false;

      final keyLiteral = "r'${escapeForRaw(key.toString())}'";
      buffer.write('$keyLiteral: ${encodeWithRawKeys(val)}');
    });
    buffer.write('}');
    return buffer.toString();
  }

  if (value is List) {
    return '[${value.map(encodeWithRawKeys).join(', ')}]';
  }

  if (value is String) {
    return "r'${escapeForRaw(value)}'";
  }

  return value.toString();
}
