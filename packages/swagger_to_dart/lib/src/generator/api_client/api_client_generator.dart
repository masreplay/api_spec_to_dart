import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:swagger_to_dart/src/code/string.dart';
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

  void generate() {
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

  /// Builds one retrofit client library for [clientName], e.g.:
  ///
  /// ```dart
  /// @RestApi()
  /// abstract class SettingsClient {
  ///   factory SettingsClient(Dio dio, {String? baseUrl}) = _SettingsClient;
  ///
  ///   @GET('/api/v1/common/settings/')
  ///   Future<HttpResponse<AppSettings>> settingsGetAppSettings();
  /// }
  /// ```
  Library build({required String clientName, required OpenApiPaths paths}) {
    final fileName = Renaming.instance.renameFile('${clientName}_client');
    final className = Recase.instance.toPascalCase(fileName);

    final extensionMethods = <Method>[];

    final methods = <Method>[];
    final usedMethodNames = <String>{};

    for (final path in paths.entries) {
      for (final method in path.value.entries) {
        final methodType = Recase.instance.toScreamingSnakeCase(
          method.key.name,
        );

        final baseMethodName = Renaming.instance.renameFunction(
          method.value.operationId ??
              '${clientName}_${path.key}_${method.key.name}',
        );
        // operationIds are not always unique; methods in one class must be.
        var methodName = baseMethodName;
        for (var i = 2; !usedMethodNames.add(methodName); i++) {
          methodName = '$baseMethodName$i';
        }

        final parameters = _handleParameters(
          method.value.parameters ?? [],
          className: className,
          methodName: methodName,
        );

        final responseTypeResult = _handleResponseType(
          method.value.responses ?? {},
          className,
          contextName: '${methodName}_response',
        );
        final responseType = responseTypeResult.type;
        final isBinaryResponse = responseTypeResult.isBinaryResponse;

        final requestBody = <Parameter>[];
        final content = method.value.requestBody?.content ?? {};
        bool hasJsonBody = false;

        for (final entry in content.entries) {
          OpenApiContentType? contentType;
          try {
            contentType = OpenApiContentType.fromJson(entry.key);
          } catch (e) {
            // Unknown content type — skip silently
          }

          switch (contentType) {
            case null:
              continue;
            case OpenApiContentType.applicationJson:
            case OpenApiContentType.textJson:
            case OpenApiContentType.applicationWildcardJson:
            case OpenApiContentType.applicationXWwwFormUrlencoded:
              if (hasJsonBody) continue;
              hasJsonBody = true;
              requestBody.add(
                Parameter(
                  (b) => b
                    ..annotations.addAll([refer('Body()')])
                    ..name = _requestBodyName
                    ..named = true
                    ..required = true
                    ..type = refer(
                      context.extension.typeConverter.get(
                        entry.value.schema,
                        className: className,
                        contextName: '${methodName}_body',
                      ),
                    ),
                ),
              );
            case OpenApiContentType.multipartFormData:
              requestBody.add(
                Parameter(
                  (b) => b
                    ..annotations.addAll([refer('Part()')])
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
                contextName: '${methodName}_body',
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
                      // Forward every parameter: path/header/query ones were
                      // dropped, so the call did not compile (#57).
                      Code(
                        'return ${methodName}_('
                        '$_requestBodyName: $_requestBodyName${canToJson ? '.toJson()' : ''}, '
                        '${parameters.map((p) => '${p.name}: ${p.name}, ').join()}'
                        'extras: extras, '
                        'cancelToken: cancelToken, '
                        'onSendProgress: onSendProgress, '
                        'onReceiveProgress: onReceiveProgress);',
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
                refer('$methodType(${dartString(path.key)})'),
                if (content[OpenApiContentType.applicationXWwwFormUrlencoded
                        .toJson()] !=
                    null)
                  refer('FormUrlEncoded()'),
                if (content[OpenApiContentType.multipartFormData.toJson()] !=
                    null)
                  refer('MultiPart()'),
                if (isBinaryResponse)
                  refer('DioResponseType(ResponseType.bytes)'),
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
              ..annotations.addAll([refer('RestApi()')])
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

    parameters = parameters
        .where((e) => !skippedParameters.contains(e.name))
        .toList();

    final queryParameters = parameters.where(
      (e) => e.in_ == OpenApiPathMethodParameterType.query,
    );

    final List<Parameter> result = [];

    // Unique among themselves and the parameters every method declares.
    final names = Renaming.instance.propertyNames(
      parameters.map((p) => p.name),
      reserved: {
        _requestBodyName,
        _queriesParameterName,
        'extras',
        'cancelToken',
        'onSendProgress',
        'onReceiveProgress',
      },
    );

    if (useClass && queryParameters.isNotEmpty) {
      final queriesClassName = context.registerInlineModel(
        Renaming.instance.renameClass('${methodName}QueryParameters'),
        (name) => RegularModelGeneratorStrategy(context).build(
          MapEntry(
            name,
            OpenApiSchemas(
              type: 'object',
              required_: [
                for (final p in queryParameters)
                  if (p.required_ == true) p.name,
              ],
              properties: {
                for (final p in queryParameters) p.name: ?p.schema,
              },
            ),
          ),
        ),
      );

      result.add(
        Parameter(
          (b) => b
            ..annotations.addAll([refer('Queries()')])
            ..name = _queriesParameterName
            ..required = true
            ..named = true
            ..type = refer(queriesClassName),
        ),
      );
    }

    for (final p in parameters) {
      if (useClass && queryParameters.contains(p)) {
        continue;
      }

      final typeConverter = context.extension.typeConverter;
      final contextName = '${methodName}_${p.name}';
      final defaultValue = typeConverter.getDefaultValue(
        p.schema,
        contextName: contextName,
      );
      // Path parameters are always required; others only when the spec says
      // so (#50). Optional ones without a default must accept null.
      final isRequired =
          p.in_ == OpenApiPathMethodParameterType.path || p.required_ == true;
      final dartType = typeConverter.get(
        p.schema,
        className: className,
        contextName: contextName,
      );

      result.add(
        Parameter(
          (b) => b
            ..annotations.addAll([
              switch (p.in_) {
                OpenApiPathMethodParameterType.query => refer(
                  'Query(${dartString(p.name)})',
                ),
                OpenApiPathMethodParameterType.path => refer(
                  'Path(${dartString(p.name)})',
                ),
                OpenApiPathMethodParameterType.header => refer(
                  'Header(${dartString(p.name)})',
                ),
                OpenApiPathMethodParameterType.cookie => refer(
                  'Header(${dartString(p.name)})',
                ),
              },
            ])
            ..named = true
            ..name = names[p.name]!
            ..required = isRequired && defaultValue == null
            ..defaultTo = defaultValue == null ? null : Code(defaultValue)
            ..type = refer(
              isRequired || defaultValue != null
                  ? dartType
                  : typeConverter.nullable(dartType),
            ),
        ),
      );
    }

    return result;
  }

  ({Reference type, bool isBinaryResponse}) _handleResponseType(
    OpenApiPathMethodResponses responses,
    String className, {
    required String contextName,
  }) {
    // Check for text/plain with binary format (for ABP framework)
    final textPlainResponse =
        responses.values.firstOrNull?.content?['text/plain'];

    final isAbpFramework =
        context.config.generationSource == GenerationSource.abpIO;
    final isBinaryFormat =
        textPlainResponse != null &&
        textPlainResponse.schema is OpenApiSchemaType &&
        (textPlainResponse.schema as OpenApiSchemaType).type ==
            OpenApiSchemaVarType.string &&
        (textPlainResponse.schema as OpenApiSchemaType).format == 'binary';

    if (isAbpFramework && isBinaryFormat) {
      return (
        type: refer('Future<HttpResponse<Uint8List>>'),
        isBinaryResponse: true,
      );
    }

    // Default: check for application/json
    final response = responses
        .values
        .firstOrNull
        ?.content?[OpenApiContentType.applicationJson.toJson()];

    final responseTypeString = response == null
        ? null
        : context.extension.typeConverter.get(
            response.schema,
            className: className,
            contextName: contextName,
          );

    return (
      type: responseTypeString == null
          ? refer('Future<HttpResponse>')
          : refer('Future<HttpResponse<$responseTypeString>>'),
      isBinaryResponse: false,
    );
  }

  List<Parameter> _extraParameters({
    required Map<String, dynamic>? openapiMetadata,
  }) {
    return [
      Parameter(
        (b) => b
          ..annotations.addAll([refer('CancelRequest()')])
          ..named = true
          ..name = 'cancelToken'
          ..type = refer('CancelToken?'),
      ),
      Parameter(
        (b) => b
          ..annotations.addAll([refer('SendProgress()')])
          ..named = true
          ..name = 'onSendProgress'
          ..type = refer('ProgressCallback?'),
      ),
      Parameter(
        (b) => b
          ..annotations.addAll([refer('ReceiveProgress()')])
          ..named = true
          ..name = 'onReceiveProgress'
          ..type = refer('ProgressCallback?'),
      ),
      Parameter(
        (b) => b
          ..annotations.addAll([refer('Extras()')])
          ..named = true
          ..name = 'extras'
          ..defaultTo = context.config.apiClient.includeOpenapiExtras
              ? Code('const ${encodeWithRawKeys(openapiMetadata)}')
              : null
          ..type = refer('Map<String, dynamic>?'),
      ),
    ];
  }
}

/// Dart source for a JSON-like [value] (maps, lists, strings, numbers).
String encodeWithRawKeys(dynamic value) {
  return switch (value) {
    Map() => '{${value.entries.map((e) => '${dartString('${e.key}')}: ${encodeWithRawKeys(e.value)}').join(', ')}}',
    List() => '[${value.map(encodeWithRawKeys).join(', ')}]',
    String() => dartString(value),
    _ => '$value',
  };
}
