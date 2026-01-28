// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _CustomersClient implements CustomersClient {
  _CustomersClient(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<List<CustomerDto>>> customersApiCustomersGet({
    required CustomersApiCustomersGetQueryParameters queries,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Customers'],
      r'summary': r'List customers with optional filters.',
      r'parameters': [
        {
          r'name': r'search',
          r'in': r'query',
          r'schema': {r'type': r'string', r'nullable': true},
        },
        {
          r'name': r'requireFullPaymentOnClose',
          r'in': r'query',
          r'schema': {r'type': r'boolean', r'nullable': true},
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'array',
                r'items': {r'$ref': r'#/components/schemas/CustomerDto'},
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
    queryParameters.addAll(queries.toJson());
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<List<CustomerDto>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<CustomerDto> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => CustomerDto.fromJson(i as Map<String, dynamic>))
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<String>> customersApiCustomersPost({
    required CreateCustomerDto requestBody,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Customers'],
      r'summary': r'Create a new customer.',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CreateCustomerDto'},
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
        r'409': {
          r'description': r'Conflict',
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
            '/api/customers',
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
  Future<HttpResponse<CustomerDto>> customersApiCustomersIdGet({
    required String id,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Customers'],
      r'summary': r'Get a customer by id.',
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
              r'schema': {r'$ref': r'#/components/schemas/CustomerDto'},
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
    final _options = _setStreamType<HttpResponse<CustomerDto>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/${id}',
            queryParameters: queryParameters,
            data: _data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late CustomerDto _value;
    try {
      _value = CustomerDto.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<dynamic>> customersApiCustomersIdPatch({
    required UpdateCustomerDto requestBody,
    required String id,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Customers'],
      r'summary': r'Update an existing customer.',
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
            r'schema': {r'$ref': r'#/components/schemas/UpdateCustomerDto'},
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
        r'409': {
          r'description': r'Conflict',
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
            '/api/customers/${id}',
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
  Future<HttpResponse<dynamic>> customersApiCustomersIdDelete({
    required String id,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Customers'],
      r'summary': r'Delete (soft delete) a customer by id.',
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
            '/api/customers/${id}',
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
  Future<HttpResponse<List<CustomerAccountEntryDto>>>
      customersApiCustomersIdAccountEntriesGet({
    required String id,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Customers'],
      r'summary': r'List account entries for a customer.',
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
              r'schema': {
                r'type': r'array',
                r'items': {
                  r'$ref': r'#/components/schemas/CustomerAccountEntryDto',
                },
              },
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
    final _options =
        _setStreamType<HttpResponse<List<CustomerAccountEntryDto>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/${id}/account-entries',
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
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<CustomerAccountEntryDto> _value;
    try {
      _value = _result.data!
          .map(
            (dynamic i) =>
                CustomerAccountEntryDto.fromJson(i as Map<String, dynamic>),
          )
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<String>> customersApiCustomersIdAccountEntriesPost({
    required CreateCustomerAccountEntryDto requestBody,
    required String id,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? extras = const {
      r'tags': [r'Customers'],
      r'summary': r'Create a manual account entry for a customer.',
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
            r'schema': {
              r'$ref': r'#/components/schemas/CreateCustomerAccountEntryDto',
            },
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
    final _options = _setStreamType<HttpResponse<String>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/api/customers/${id}/account-entries',
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
