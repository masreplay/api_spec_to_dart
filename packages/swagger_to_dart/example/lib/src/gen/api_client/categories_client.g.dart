// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _CategoriesClient implements CategoriesClient {
  _CategoriesClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<List<CategoryDto>>> categoriesApiCategoriesGet({
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Categories'],
      r'summary': r'Return categories as a forest (nested children).',
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'array',
                r'items': {r'$ref': r'#/components/schemas/CategoryDto'},
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
    final _options = _setStreamType<HttpResponse<List<CategoryDto>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/categories',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<CategoryDto> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => CategoryDto.fromJson(i as Map<String, dynamic>))
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<String>> categoriesApiCategoriesPost({
    required CreateCategoryDto requestBody,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Categories'],
      r'summary': r'Create a category.',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CreateCategoryDto'},
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
            '/api/categories',
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
  Future<HttpResponse<CategoryDto>> categoriesApiCategoriesIdGet({
    required String id,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Categories'],
      r'summary': r'Get a single category by id.',
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
              r'schema': {r'$ref': r'#/components/schemas/CategoryDto'},
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
    final _options = _setStreamType<HttpResponse<CategoryDto>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/categories/${id}',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late CategoryDto _value;
    try {
      _value = CategoryDto.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<dynamic>> categoriesApiCategoriesIdPatch({
    required UpdateCategoryDto requestBody,
    required String id,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Categories'],
      r'summary': r'Update category (may move parent).',
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
            r'schema': {r'$ref': r'#/components/schemas/UpdateCategoryDto'},
          },
        },
      },
      r'responses': {
        r'204': {r'description': r'No Content'},
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
            '/api/categories/${id}',
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
  Future<HttpResponse<dynamic>> categoriesApiCategoriesIdPut({
    required CategoryDto requestBody,
    required String id,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Categories'],
      r'summary': r'Put category (may move parent).',
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
            r'schema': {r'$ref': r'#/components/schemas/CategoryDto'},
          },
        },
      },
      r'responses': {
        r'204': {r'description': r'No Content'},
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
      Options(method: 'PUT', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/categories/${id}',
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
  Future<HttpResponse<dynamic>> categoriesApiCategoriesIdDelete({
    required String id,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Categories'],
      r'summary': r'Delete category (only if no children).',
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
            '/api/categories/${id}',
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
