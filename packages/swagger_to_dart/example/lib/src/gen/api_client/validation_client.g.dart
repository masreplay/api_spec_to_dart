// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _ValidationClient implements ValidationClient {
  _ValidationClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<Map<String, dynamic>>> validationParamPath({
    required int itemId,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate path parameter validation',
      r'description': r'Path parameter with validation.',
      r'operationId': r'validation-param_path',
      r'parameters': [
        {
          r'name': r'item_id',
          r'in': r'path',
          r'required': true,
          r'schema': {
            r'type': r'integer',
            r'minimum': 1,
            r'title': r'Item ID',
            r'description': r'The ID of the item',
          },
          r'description': r'The ID of the item',
          r'example': 42,
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Validation-Param Path',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<Map<String, dynamic>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/params/path/${itemId}',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Map<String, dynamic> _value;
    try {
      _value = _result.data!.map(
        (k, dynamic v) =>
            MapEntry(k, dynamic.fromJson(v as Map<String, dynamic>)),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<Map<String, dynamic>>> validationParamQuery({
    required ValidationParamQueryQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate query parameter validation',
      r'description': r'Query parameters with validation.',
      r'operationId': r'validation-param_query',
      r'parameters': [
        {
          r'name': r'q',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {
                r'type': r'string',
                r'minLength': 3,
                r'maxLength': 50,
                r'pattern': r'^[a-zA-Z0-9_-]+$',
              },
              {r'type': r'null'},
            ],
            r'description':
                r'Search query string (alphanumeric with hyphens and underscores)',
            r'title': r'Q',
          },
          r'description':
              r'Search query string (alphanumeric with hyphens and underscores)',
          r'example': r'search-term',
        },
        {
          r'name': r'skip',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'minimum': 0,
            r'description': r'Number of items to skip',
            r'default': 0,
            r'title': r'Skip',
          },
          r'description': r'Number of items to skip',
          r'example': 0,
        },
        {
          r'name': r'limit',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'maximum': 100,
            r'minimum': 1,
            r'description': r'Maximum number of items to return (1-100)',
            r'default': 10,
            r'title': r'Limit',
          },
          r'description': r'Maximum number of items to return (1-100)',
          r'example': 10,
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Validation-Param Query',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries.toJson());
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<Map<String, dynamic>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/params/query',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Map<String, dynamic> _value;
    try {
      _value = _result.data!.map(
        (k, dynamic v) =>
            MapEntry(k, dynamic.fromJson(v as Map<String, dynamic>)),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<Map<String, dynamic>>> validationParamBody({
    required BodyValidationParamBody requestBody,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate body parameter validation',
      r'description': r'Body parameters with validation.',
      r'operationId': r'validation-param_body',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {
              r'$ref': r'#/components/schemas/Body_validation-param_body',
            },
          },
        },
        r'required': true,
      },
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'additionalProperties': true,
                r'type': r'object',
                r'title': r'Response Validation-Param Body',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestBody.toJson());
    final _options = _setStreamType<HttpResponse<Map<String, dynamic>>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/params/body',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Map<String, dynamic> _value;
    try {
      _value = _result.data!.map(
        (k, dynamic v) =>
            MapEntry(k, dynamic.fromJson(v as Map<String, dynamic>)),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<Map<String, dynamic>>> validationParamCookie({
    required String? session,
    required String? preferences,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Param Cookie',
      r'description': r'Cookie parameters.',
      r'operationId': r'validation-param_cookie',
      r'parameters': [
        {
          r'name': r'session',
          r'in': r'cookie',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'string'},
              {r'type': r'null'},
            ],
            r'title': r'Session',
          },
        },
        {
          r'name': r'preferences',
          r'in': r'cookie',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'string'},
              {r'type': r'null'},
            ],
            r'title': r'Preferences',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Validation-Param Cookie',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{
      r'session': session,
      r'preferences': preferences,
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<Map<String, dynamic>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/params/cookie',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Map<String, dynamic> _value;
    try {
      _value = _result.data!.map(
        (k, dynamic v) =>
            MapEntry(k, dynamic.fromJson(v as Map<String, dynamic>)),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<Map<String, dynamic>>> validationParamHeader({
    required String userMinusAgent,
    required String? xMinusToken,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Param Header',
      r'description': r'Header parameters.',
      r'operationId': r'validation-param_header',
      r'parameters': [
        {
          r'name': r'user-agent',
          r'in': r'header',
          r'required': true,
          r'schema': {r'type': r'string', r'title': r'User-Agent'},
        },
        {
          r'name': r'x-token',
          r'in': r'header',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'string'},
              {r'type': r'null'},
            ],
            r'title': r'X-Token',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Validation-Param Header',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{
      r'user-agent': userMinusAgent,
      r'x-token': xMinusToken,
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<Map<String, dynamic>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/params/header',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Map<String, dynamic> _value;
    try {
      _value = _result.data!.map(
        (k, dynamic v) =>
            MapEntry(k, dynamic.fromJson(v as Map<String, dynamic>)),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<AllTypesWithValidation>> validationValidationComplex({
    required AllTypesWithValidation requestBody,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate complex model validation',
      r'description': r'Process a model with complex validation rules.',
      r'operationId': r'validation-validation_complex',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {
              r'$ref': r'#/components/schemas/AllTypesWithValidation',
            },
          },
        },
        r'required': true,
      },
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'$ref': r'#/components/schemas/AllTypesWithValidation',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestBody.toJson());
    final _options = _setStreamType<HttpResponse<AllTypesWithValidation>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/validation/complex',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late AllTypesWithValidation _value;
    try {
      _value = AllTypesWithValidation.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<Map<String, dynamic>>> validationValidationConditional({
    required ValidationValidationConditionalQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate conditional validation',
      r'description': r'Validate that at least one parameter is provided.',
      r'operationId': r'validation-validation_conditional',
      r'parameters': [
        {
          r'name': r'user_id',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'integer', r'minimum': 1},
              {r'type': r'null'},
            ],
            r'description': r'User ID',
            r'title': r'User Id',
          },
          r'description': r'User ID',
          r'example': 123,
        },
        {
          r'name': r'username',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'string', r'minLength': 3},
              {r'type': r'null'},
            ],
            r'description': r'Username',
            r'title': r'Username',
          },
          r'description': r'Username',
          r'example': r'johndoe',
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Validation-Validation Conditional',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries.toJson());
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<Map<String, dynamic>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/validation/conditional',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Map<String, dynamic> _value;
    try {
      _value = _result.data!.map(
        (k, dynamic v) =>
            MapEntry(k, dynamic.fromJson(v as Map<String, dynamic>)),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<ConditionalBody>> validationValidationConditionalBody({
    required ConditionalBody requestBody,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Validate a model with conditional requirements',
      r'description': r'Validate a body with conditional validation.',
      r'operationId': r'validation-validation_conditional_body',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/ConditionalBody'},
          },
        },
        r'required': true,
      },
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/ConditionalBody'},
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(requestBody.toJson());
    final _options = _setStreamType<HttpResponse<ConditionalBody>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/validation/conditional_body',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConditionalBody _value;
    try {
      _value = ConditionalBody.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<Map<String, dynamic>>> validationConstrainedInt({
    required ValidationConstrainedIntQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate constrained integer validation',
      r'description': r'Handle constrained integer with validation.',
      r'operationId': r'validation-constrained_int',
      r'parameters': [
        {
          r'name': r'value',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'integer',
            r'minimum': 0,
            r'exclusiveMaximum': 100,
            r'description': r'Integer between 0 and 99',
            r'examples': [42],
            r'title': r'Value',
          },
          r'description': r'Integer between 0 and 99',
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Validation-Constrained Int',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries.toJson());
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<Map<String, dynamic>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/constrained/int',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Map<String, dynamic> _value;
    try {
      _value = _result.data!.map(
        (k, dynamic v) =>
            MapEntry(k, dynamic.fromJson(v as Map<String, dynamic>)),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<Map<String, dynamic>>> validationConstrainedFloat({
    required ValidationConstrainedFloatQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate constrained float validation',
      r'description': r'Handle constrained float with validation.',
      r'operationId': r'validation-constrained_float',
      r'parameters': [
        {
          r'name': r'value',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'number',
            r'maximum': 1.0,
            r'minimum': 0.0,
            r'description': r'Float between 0.0 and 1.0',
            r'examples': [0.5],
            r'title': r'Value',
          },
          r'description': r'Float between 0.0 and 1.0',
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Validation-Constrained Float',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries.toJson());
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<Map<String, dynamic>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/constrained/float',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Map<String, dynamic> _value;
    try {
      _value = _result.data!.map(
        (k, dynamic v) =>
            MapEntry(k, dynamic.fromJson(v as Map<String, dynamic>)),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<Map<String, dynamic>>> validationConstrainedString({
    required ValidationConstrainedStringQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate constrained string validation',
      r'description': r'Handle constrained string with validation.',
      r'operationId': r'validation-constrained_string',
      r'parameters': [
        {
          r'name': r'value',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'string',
            r'minLength': 3,
            r'maxLength': 50,
            r'pattern': r'^[a-zA-Z0-9_-]+$',
            r'description':
                r'String between 3-50 chars, alphanumeric with hyphens and underscores',
            r'examples': [r'example-value'],
            r'title': r'Value',
          },
          r'description':
              r'String between 3-50 chars, alphanumeric with hyphens and underscores',
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Validation-Constrained String',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries.toJson());
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<Map<String, dynamic>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/constrained/string',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Map<String, dynamic> _value;
    try {
      _value = _result.data!.map(
        (k, dynamic v) =>
            MapEntry(k, dynamic.fromJson(v as Map<String, dynamic>)),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
