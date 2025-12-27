// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _GenericClient implements GenericClient {
  _GenericClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<PaginationResponse<ItemResponse>>> genericGetItems({
    required GenericGetItemsQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'generic'],
      r'summary': r'Get Items',
      r'operationId': r'generic-get_items',
      r'parameters': [
        {
          r'name': r'page',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'minimum': 1,
            r'default': 1,
            r'title': r'Page',
          },
        },
        {
          r'name': r'per_page',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'maximum': 100,
            r'minimum': 1,
            r'default': 10,
            r'title': r'Per Page',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'$ref':
                    r'#/components/schemas/PaginationResponse_ItemResponse_',
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
    final _options =
        _setStreamType<HttpResponse<PaginationResponse<ItemResponse>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/generic/items',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PaginationResponse<ItemResponse> _value;
    try {
      _value = PaginationResponse<ItemResponse>.fromJson(
        _result.data!,
        (json) => ItemResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<PaginationResponse<CategoryResponse>>>
      genericGetCategories({
    required GenericGetCategoriesQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'generic'],
      r'summary': r'Get Categories',
      r'operationId': r'generic-get_categories',
      r'parameters': [
        {
          r'name': r'page',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'minimum': 1,
            r'default': 1,
            r'title': r'Page',
          },
        },
        {
          r'name': r'per_page',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'maximum': 100,
            r'minimum': 1,
            r'default': 10,
            r'title': r'Per Page',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'$ref':
                    r'#/components/schemas/PaginationResponse_CategoryResponse_',
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
    final _options =
        _setStreamType<HttpResponse<PaginationResponse<CategoryResponse>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/generic/categories',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PaginationResponse<CategoryResponse> _value;
    try {
      _value = PaginationResponse<CategoryResponse>.fromJson(
        _result.data!,
        (json) => CategoryResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponse<ItemResponse>>> genericGetBaseResponseItem({
    required ItemResponse requestBody,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'generic'],
      r'summary': r'Get Base Response Item',
      r'operationId': r'generic-get_base_response_item',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/ItemResponse-Input'},
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
                r'$ref': r'#/components/schemas/BaseResponse_ItemResponse_',
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
    final _options = _setStreamType<HttpResponse<BaseResponse<ItemResponse>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/generic/base-response-item',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponse<ItemResponse> _value;
    try {
      _value = BaseResponse<ItemResponse>.fromJson(
        _result.data!,
        (json) => ItemResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponse<CategoryResponse>>>
      genericGetBaseResponseCategory({
    required CategoryResponse requestBody,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'generic'],
      r'summary': r'Get Base Response Category',
      r'operationId': r'generic-get_base_response_category',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CategoryResponse'},
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
                r'$ref': r'#/components/schemas/BaseResponse_CategoryResponse_',
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
    final _options =
        _setStreamType<HttpResponse<BaseResponse<CategoryResponse>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/generic/base-response-category',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponse<CategoryResponse> _value;
    try {
      _value = BaseResponse<CategoryResponse>.fromJson(
        _result.data!,
        (json) => CategoryResponse.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponse<List<ItemResponse>>>>
      genericGetBaseResponseList({
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'generic'],
      r'summary': r'Get Base Response List',
      r'operationId': r'generic-get_base_response_list',
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'$ref':
                    r'#/components/schemas/BaseResponse_list_ItemResponse__',
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
    final _options =
        _setStreamType<HttpResponse<BaseResponse<List<ItemResponse>>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/generic/base-response-list',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponse<List<ItemResponse>> _value;
    try {
      _value = BaseResponse<List<ItemResponse>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<ItemResponse>(
                  (i) => ItemResponse.fromJson(i as Map<String, dynamic>),
                )
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponse<PaginationResponse<ItemResponse>>>>
      genericGetNestedBaseAndPagination({
    required GenericGetNestedBaseAndPaginationQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'generic'],
      r'summary': r'Get Nested Base And Pagination',
      r'operationId': r'generic-get_nested_base_and_pagination',
      r'parameters': [
        {
          r'name': r'page',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'minimum': 1,
            r'default': 1,
            r'title': r'Page',
          },
        },
        {
          r'name': r'per_page',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'maximum': 100,
            r'minimum': 1,
            r'default': 10,
            r'title': r'Per Page',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'$ref':
                    r'#/components/schemas/BaseResponse_PaginationResponse_ItemResponse__',
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
    final _options = _setStreamType<
        HttpResponse<BaseResponse<PaginationResponse<ItemResponse>>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/generic/nested-base-and-pagination',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(
            baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
          ),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponse<PaginationResponse<ItemResponse>> _value;
    try {
      _value = BaseResponse<PaginationResponse<ItemResponse>>.fromJson(
        _result.data!,
        (json) => PaginationResponse<ItemResponse>.fromJson(
          json as Map<String, dynamic>,
          (json) => ItemResponse.fromJson(json as Map<String, dynamic>),
        ),
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
