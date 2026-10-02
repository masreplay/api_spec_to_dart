import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/src/swagger_to_dart_base.dart';

const _requestBodyName = 'requestBody';
const _queriesParameterName = 'queries';

/// An operation of the spec at [path]; [method] is the HTTP method as sent
/// (`GET`, `QUERY`, `PURGE`).
typedef ApiOperation = ({
  String path,
  String method,
  OpenApiPathMethod operation,
});

/// Methods with their own retrofit annotation; the others use
/// `@Method('X', path)`.
const _retrofitMethods = {
  'GET',
  'POST',
  'PUT',
  'DELETE',
  'PATCH',
  'HEAD',
  'OPTIONS',
};

/// Types a client signature can name without the generated models.
const _libraryTypes = {
  'Future', 'HttpResponse', 'List', 'Map', 'String', 'int', 'double', //
  'num', 'bool', 'dynamic', 'Object', 'DateTime', 'Uri', 'Uint8List',
  'MultipartFile', 'CancelToken', 'ProgressCallback', 'null',
};

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

  /// One client per operation tag (`default` for untagged operations); an
  /// operation with several tags is in each of their clients.
  void generate() {
    final group = <String, List<ApiOperation>>{};
    final paths = context.openApi.paths ?? {};
    final additional = context.openApi.additionalOperations ?? {};

    for (final path in {...paths.keys, ...additional.keys}) {
      final operations = <ApiOperation>[
        for (final MapEntry(key: method, value: operation)
            in (paths[path] ?? {}).entries)
          (
            path: path,
            method: method.name.toUpperCase(),
            operation: operation,
          ),
        for (final MapEntry(key: method, value: operation)
            in (additional[path] ?? {}).entries)
          (path: path, method: method, operation: operation),
      ];
      for (final operation in operations) {
        // A set: a repeated tag must not add the operation twice.
        final tags = {
          for (final tag in operation.operation.tags ?? <String>[])
            Recase.instance.removeNonAscii(tag),
        };
        for (final tag in tags.isEmpty ? const ['default'] : tags) {
          (group[tag] ??= []).add(operation);
        }
      }
    }

    for (final MapEntry(key: tag, value: operations) in group.entries) {
      context.addApiClient(build(clientName: tag, operations: operations));
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
  Library build({
    required String clientName,
    required List<ApiOperation> operations,
  }) {
    final fileName = Renaming.instance.renameFile('${clientName}_client');
    final className = Recase.instance.toPascalCase(fileName);

    final extensionMethods = <Method>[];

    final methods = <Method>[];
    final usedMethodNames = <String>{};

    for (final (:path, :method, :operation) in operations) {
      final url = _url(path, operation.servers);
      final httpMethod = _retrofitMethods.contains(method)
          ? '$method(${dartString(url)})'
          : 'Method(${dartString(method)}, ${dartString(url)})';

      final baseMethodName = Renaming.instance.renameFunction(
        operation.operationId ??
            '${clientName}_${path}_${method.toLowerCase()}',
      );
      // operationIds are not always unique; methods in one class must be.
      var methodName = baseMethodName;
      for (var i = 2; !usedMethodNames.add(methodName); i++) {
        methodName = '$baseMethodName$i';
      }

      final parameters = _handleParameters(
        operation.parameters ?? [],
        className: className,
        methodName: methodName,
      );

      final responseTypeResult = _handleResponseType(
        operation.responses ?? {},
        className,
        contextName: '${methodName}_response',
      );
      final responseType = responseTypeResult.type;
      final isBinaryResponse = responseTypeResult.isBinaryResponse;

      final requestBody = <Parameter>[];
      final content = operation.requestBody?.content ?? {};
      bool hasJsonBody = false;

      // Media types without parameters (`; charset=utf-8`).
      bool hasMediaType(String type) =>
          content.keys.any((key) => _mediaType(key) == type);

      // One body per method: JSON (or form) wins over multipart.
      final offersJson = content.entries.any(
        (e) =>
            _isJsonContent(e.key, e.value.schema) ||
            _mediaType(e.key) == 'application/x-www-form-urlencoded',
      );
      final isMultipart = !offersJson && hasMediaType('multipart/form-data');

      for (final entry in content.entries) {
        switch (_mediaType(entry.key)) {
          case final type
              when _isJsonContent(type, entry.value.schema) ||
                  type == 'application/x-www-form-urlencoded':
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
          case 'multipart/form-data' when isMultipart:
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
                    ..._extraParameters(openapiMetadata: operation.json),
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
          default:
            // Text, XML or binary: handled as a raw body below.
            continue;
        }
      }

      // Text, XML or binary bodies (#56): sent as-is with their media type.
      final rawBody = requestBody.isEmpty ? content.entries.firstOrNull : null;
      if (rawBody != null) {
        requestBody.add(
          Parameter(
            (b) => b
              ..annotations.addAll([refer('Body()')])
              ..name = _requestBodyName
              ..named = true
              ..required = true
              ..type = refer(
                _isBinary(rawBody.key, rawBody.value.schema)
                    ? 'List<int>'
                    : 'String',
              ),
          ),
        );
      }

      methods.add(
        Method(
          (b) => b
            ..annotations.addAll([
              refer(httpMethod),
              if (rawBody != null)
                refer(
                  "Headers(<String, dynamic>{'Content-Type': "
                  '${dartString(rawBody.key)}})',
                ),
              if (hasMediaType('application/x-www-form-urlencoded'))
                refer('FormUrlEncoded()'),
              if (isMultipart) refer('MultiPart()'),
              if (isBinaryResponse)
                refer('DioResponseType(ResponseType.bytes)'),
            ])
            ..returns = responseType
            ..name = isMultipart ? '${methodName}_' : methodName
            ..optionalParameters.addAll([
              ...requestBody,
              ...parameters,
              ..._extraParameters(openapiMetadata: operation.json),
            ]),
        ),
      );
    }

    // An unused import fails analysis: import the models only when a
    // signature names a type that dart:core, dio or retrofit lacks.
    final usesModels = [...methods, ...extensionMethods]
        .expand((m) => [m.returns, ...m.optionalParameters.map((p) => p.type)])
        .expand((type) => RegExp(r'\w+').allMatches('${type?.symbol}'))
        .any((name) => !_libraryTypes.contains(name[0]));

    return Library(
      (b) => b
        ..directives.addAll([
          for (final import in context.config.imports?.globalImports ?? [])
            Directive.import(import),
          if (methods.any((m) => '${m.returns?.symbol}'.contains('Uint8List')))
            Directive.import('dart:typed_data'),
          Directive.import('package:dio/dio.dart', hide: ['Headers']),
          Directive.import('package:retrofit/retrofit.dart'),
          if (usesModels) Directive.import('../models/models.dart'),
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

  /// [path] prefixed by the operation's (or its path item's) first server,
  /// unless that is a document server: dio skips `baseUrl` for absolute
  /// paths, which would also bypass the `baseUrl` users pass.
  String _url(String path, List<OpenApiServer>? servers) {
    final server = servers?.firstOrNull;
    if (server == null ||
        (context.openApi.servers ?? []).any((s) => s.url == server.url)) {
      return path;
    }
    return '${server.defaultUrl.replaceFirst(RegExp(r'/+$'), '')}$path';
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
    final content = _successResponse(responses)?.content ?? {};

    // JSON wins: Swashbuckle lists text/plain and text/json next to it.
    if (content.entries.firstWhereOrNull(
          (e) => _isJsonContent(e.key, e.value.schema),
        )
        case final json?) {
      final type = context.extension.typeConverter.get(
        json.value.schema,
        className: className,
        contextName: contextName,
      );
      return (
        type: refer('Future<HttpResponse<$type>>'),
        isBinaryResponse: false,
      );
    }

    // Files and images (#54): raw bytes whatever the media type.
    if (content.entries.any((e) => _isBinary(e.key, e.value.schema))) {
      return (
        type: refer('Future<HttpResponse<Uint8List>>'),
        isBinaryResponse: true,
      );
    }

    if (content.keys.any(
      (mediaType) => mediaType.startsWith('text/') || mediaType.contains('xml'),
    )) {
      return (
        type: refer('Future<HttpResponse<String>>'),
        isBinaryResponse: false,
      );
    }

    return (type: refer('Future<HttpResponse>'), isBinaryResponse: false);
  }

  /// The lowest 2xx response, else `default`, else the first one.
  OpenApiPathMethodResponse? _successResponse(
    OpenApiPathMethodResponses responses,
  ) {
    final success = responses.keys
        .where((code) => code.startsWith('2'))
        .sorted();
    return success.isNotEmpty
        ? responses[success.first]
        : responses['default'] ?? responses.values.firstOrNull;
  }

  static String _mediaType(String contentType) =>
      contentType.split(';').first.trim().toLowerCase();

  /// JSON, or Spring's `*/*` for anything that is not a file.
  static bool _isJsonContent(String mediaType, OpenApiSchema? schema) =>
      _isJson(mediaType) ||
      (_mediaType(mediaType) == '*/*' && !_isBinary(mediaType, schema));

  static bool _isJson(String mediaType) {
    final type = _mediaType(mediaType);
    return type == 'application/json' ||
        type == 'text/json' ||
        type.endsWith('+json');
  }

  static bool _isBinary(String mediaType, OpenApiSchema? schema) =>
      (schema is OpenApiSchemaType && schema.format == 'binary') ||
      const ['image/', 'audio/', 'video/'].any(mediaType.startsWith) ||
      mediaType == 'application/octet-stream' ||
      mediaType == 'application/pdf';

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
    Map() =>
      '{${value.entries.map((e) => '${dartString('${e.key}')}: ${encodeWithRawKeys(e.value)}').join(', ')}}',
    List() => '[${value.map(encodeWithRawKeys).join(', ')}]',
    String() => dartString(value),
    _ => '$value',
  };
}
