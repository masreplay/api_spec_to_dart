// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_announcements_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _LecturerAnnouncementsClient implements LecturerAnnouncementsClient {
  _LecturerAnnouncementsClient(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<HttpResponse<BaseResponsePaginationResponseLecturerAnnouncementPublic>>
      lecturerAnnouncementsGetLecturerAnnouncements({
    required LecturerAnnouncementsGetLecturerAnnouncementsQueries queries,
    required int courseId,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries.toJson());
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<
        HttpResponse<
            BaseResponsePaginationResponseLecturerAnnouncementPublic>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/v1/lecturer/announcements/me/${courseId}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponsePaginationResponseLecturerAnnouncementPublic _value;
    try {
      _value =
          BaseResponsePaginationResponseLecturerAnnouncementPublic.fromJson(
              _result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponseLecturerAnnouncementPublic>>
      lecturerAnnouncementsCreateLecturerAnnouncement({
    required int courseId,
    required BodyLecturerAnnouncementsCreateLecturerAnnouncement body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options =
        _setStreamType<HttpResponse<BaseResponseLecturerAnnouncementPublic>>(
            Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
                .compose(
                  _dio.options,
                  '/api/v1/lecturer/announcements/me/${courseId}',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseLecturerAnnouncementPublic _value;
    try {
      _value = BaseResponseLecturerAnnouncementPublic.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponseLecturerAnnouncementPublic>>
      lecturerAnnouncementsGetLecturerAnnouncement({required int id}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<HttpResponse<BaseResponseLecturerAnnouncementPublic>>(
            Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/api/v1/lecturer/announcements/${id}',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseLecturerAnnouncementPublic _value;
    try {
      _value = BaseResponseLecturerAnnouncementPublic.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponseLecturerAnnouncementPublic>>
      lecturerAnnouncementsUpdateLecturerAnnouncement({
    required int id,
    required LecturerAnnouncementUpdatePublic body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options =
        _setStreamType<HttpResponse<BaseResponseLecturerAnnouncementPublic>>(
            Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/api/v1/lecturer/announcements/${id}',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(
                    baseUrl: _combineBaseUrls(
                  _dio.options.baseUrl,
                  baseUrl,
                )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseLecturerAnnouncementPublic _value;
    try {
      _value = BaseResponseLecturerAnnouncementPublic.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<MessageResponse>>
      lecturerAnnouncementsDeleteLecturerAnnouncement({required int id}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<HttpResponse<MessageResponse>>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/v1/lecturer/announcements/${id}',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MessageResponse _value;
    try {
      _value = MessageResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponsePaginationResponseCommentPublic>>
      lecturerAnnouncementsGetLecturerAnnouncementComments({
    required LecturerAnnouncementsGetLecturerAnnouncementCommentsQueries
        queries,
    required int id,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries.toJson());
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<
        HttpResponse<BaseResponsePaginationResponseCommentPublic>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/v1/lecturer/announcements/${id}/comments',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponsePaginationResponseCommentPublic _value;
    try {
      _value =
          BaseResponsePaginationResponseCommentPublic.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    final httpResponse = HttpResponse(_value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<BaseResponseCommentPublic>>
      lecturerAnnouncementsCreateLecturerAnnouncementComment({
    required int id,
    required CommentCreatePublic body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _options =
        _setStreamType<HttpResponse<BaseResponseCommentPublic>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/lecturer/announcements/${id}/comments',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseCommentPublic _value;
    try {
      _value = BaseResponseCommentPublic.fromJson(_result.data!);
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

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
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
