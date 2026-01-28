// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_points_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _SalePointsClient implements SalePointsClient {
  _SalePointsClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<List<SalePointDto>>> salePointsApiSalePointsGet({
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'SalePoints'],
      r'summary': r'List salepoints with optional filters.',
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'array',
                r'items': {r'$ref': r'#/components/schemas/SalePointDto'},
              },
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
    final _options = _setStreamType<HttpResponse<List<SalePointDto>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/sale-points',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<SalePointDto> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => SalePointDto.fromJson(i as Map<String, dynamic>))
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<String>> salePointsApiSalePointsPost({
    required CreateSalePointDto requestBody,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'SalePoints'],
      r'summary': r'Create a new user.',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CreateSalePointDto'},
          },
        },
      },
      r'responses': {
        r'201': {
          r'description': r'Created',
          r'content': {
            r'application/json': {
              r'schema': {r'type': r'string', r'format': r'uuid'},
            },
          },
        },
        r'400': {
          r'description': r'Bad Request',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/ProblemDetails'},
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
    final _options = _setStreamType<HttpResponse<String>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/sale-points',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<String>(_options);
    late String _value;
    try {
      _value = _result.data!;
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<SalePointDto>> salePointsApiSalePointsIdGet({
    required String id,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'SalePoints'],
      r'summary': r'Get a salepoint by id.',
      r'parameters': [
        {
          r'name': r'id',
          r'in': r'path',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'uuid'},
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/SalePointDto'},
            },
          },
        },
        r'404': {
          r'description': r'Not Found',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/ProblemDetails'},
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
    final _options = _setStreamType<HttpResponse<SalePointDto>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/sale-points/${id}',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late SalePointDto _value;
    try {
      _value = SalePointDto.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<dynamic>> salePointsApiSalePointsIdPatch({
    required UpdateSalePointDto requestBody,
    required String id,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'SalePoints'],
      r'summary': r'Update an existing salepoint.',
      r'parameters': [
        {
          r'name': r'id',
          r'in': r'path',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'uuid'},
        },
      ],
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/UpdateSalePointDto'},
          },
        },
      },
      r'responses': {
        r'204': {r'description': r'No Content'},
        r'400': {
          r'description': r'Bad Request',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/ProblemDetails'},
            },
          },
        },
        r'404': {
          r'description': r'Not Found',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/ProblemDetails'},
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
    final _options = _setStreamType<HttpResponse<dynamic>>(
      Options(method: 'PATCH', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/sale-points/${id}',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<dynamic>> salePointsApiSalePointsIdDelete({
    required String id,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'SalePoints'],
      r'summary': r'Delete a salepoint by id.',
      r'parameters': [
        {
          r'name': r'id',
          r'in': r'path',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'uuid'},
        },
      ],
      r'responses': {
        r'204': {r'description': r'No Content'},
        r'404': {
          r'description': r'Not Found',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/ProblemDetails'},
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
    final _options = _setStreamType<HttpResponse<dynamic>>(
      Options(method: 'DELETE', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/sale-points/${id}',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch(_options);
    final _value = _result.data;
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
