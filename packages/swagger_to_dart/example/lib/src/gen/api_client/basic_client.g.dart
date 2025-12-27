// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _BasicClient implements BasicClient {
  _BasicClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<Map<String, dynamic>>> basicBasicNumber({
    required int num,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle integer path parameter',
      r'description': r'Handle integer path parameter.',
      r'operationId': r'basic-basic_number',
      r'parameters': [
        {
          r'name': r'num',
          r'in': r'path',
          r'required': true,
          r'schema': {r'type': r'integer', r'title': r'Num'},
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
                r'title': r'Response Basic-Basic Number',
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
            '/basic/number/${num}',
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
  Future<HttpResponse<Map<String, dynamic>>> basicBasicFloat({
    required double num,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle float path parameter',
      r'description': r'Handle float path parameter.',
      r'operationId': r'basic-basic_float',
      r'parameters': [
        {
          r'name': r'num',
          r'in': r'path',
          r'required': true,
          r'schema': {r'type': r'number', r'title': r'Num'},
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
                r'title': r'Response Basic-Basic Float',
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
            '/basic/float/${num}',
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
  Future<HttpResponse<Map<String, dynamic>>> basicBasicBoolean({
    required BasicBasicBooleanQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle boolean query parameter',
      r'description': r'Handle boolean query parameter with default value.',
      r'operationId': r'basic-basic_boolean',
      r'parameters': [
        {
          r'name': r'flag',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'boolean',
            r'default': false,
            r'title': r'Flag',
          },
          r'example': true,
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
                r'title': r'Response Basic-Basic Boolean',
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
            '/basic/boolean',
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
  Future<HttpResponse<Map<String, dynamic>>> basicBasicString({
    required BasicBasicStringQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle string query parameter',
      r'description': r'Handle string query parameter with validation.',
      r'operationId': r'basic-basic_string',
      r'parameters': [
        {
          r'name': r'text',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'string',
            r'minLength': 3,
            r'maxLength': 50,
            r'title': r'Text',
          },
          r'example': r'example_text',
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
                r'title': r'Response Basic-Basic String',
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
            '/basic/string',
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
  Future<HttpResponse<Map<String, dynamic>>> basicDatetimeDate({
    required BasicDatetimeDateQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle date parameters',
      r'description': r'Handle date parameter (YYYY-MM-DD).',
      r'operationId': r'basic-datetime_date',
      r'parameters': [
        {
          r'name': r'd',
          r'in': r'query',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'date', r'title': r'D'},
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
                r'title': r'Response Basic-Datetime Date',
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
            '/datetime/date',
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
  Future<HttpResponse<Map<String, dynamic>>> basicDatetimeDatetime({
    required BasicDatetimeDatetimeQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle datetime parameters',
      r'description': r'Handle datetime parameter (YYYY-MM-DDThh:mm:ss).',
      r'operationId': r'basic-datetime_datetime',
      r'parameters': [
        {
          r'name': r'dt',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'string',
            r'format': r'date-time',
            r'title': r'Dt',
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
                r'title': r'Response Basic-Datetime Datetime',
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
            '/datetime/datetime',
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
  Future<HttpResponse<Map<String, dynamic>>> basicCreateDatetimeDatetime({
    required BasicCreateDatetimeDatetimeQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle datetime parameters',
      r'description': r'Handle datetime parameter (YYYY-MM-DDThh:mm:ss).',
      r'operationId': r'basic-create_datetime_datetime',
      r'parameters': [
        {
          r'name': r'dt',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'string',
            r'format': r'date-time',
            r'title': r'Dt',
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
                r'title': r'Response Basic-Create Datetime Datetime',
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
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/datetime/datetime',
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
  Future<HttpResponse<Map<String, dynamic>>> basicDatetimeTime({
    required BasicDatetimeTimeQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle time parameters',
      r'description': r'Handle time parameter (hh:mm:ss).',
      r'operationId': r'basic-datetime_time',
      r'parameters': [
        {
          r'name': r't',
          r'in': r'query',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'time', r'title': r'T'},
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
                r'title': r'Response Basic-Datetime Time',
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
            '/datetime/time',
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
  Future<HttpResponse<Map<String, dynamic>>> basicDatetimeTimedelta({
    required BasicDatetimeTimedeltaQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle timedelta parameters',
      r'description': r'Handle timedelta parameter (in seconds).',
      r'operationId': r'basic-datetime_timedelta',
      r'parameters': [
        {
          r'name': r'td',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'string',
            r'format': r'duration',
            r'title': r'Td',
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
                r'title': r'Response Basic-Datetime Timedelta',
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
            '/datetime/timedelta',
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
