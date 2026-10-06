// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanResponse {
  /// id
  @JsonKey(name: PostmanResponse.idKey_)
  String? get id;

  /// originalRequest
  @JsonKey(name: PostmanResponse.originalRequestKey_)
  PostmanRequest? get originalRequest;

  /// responseTime
  @JsonKey(name: PostmanResponse.responseTimeKey_)
  dynamic get responseTime;

  /// timings
  @JsonKey(name: PostmanResponse.timingsKey_)
  Map<String, dynamic>? get timings;

  /// header
  @JsonKey(name: PostmanResponse.headerKey_)
  PostmanHeaders? get header;

  /// cookie
  @JsonKey(name: PostmanResponse.cookieKey_)
  List<PostmanCookie>? get cookie;

  /// body
  @JsonKey(name: PostmanResponse.bodyKey_)
  String? get body;

  /// status
  @JsonKey(name: PostmanResponse.statusKey_)
  String? get status;

  /// code
  @JsonKey(name: PostmanResponse.codeKey_)
  int? get code;

  /// Create a copy of PostmanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanResponseCopyWith<PostmanResponse> get copyWith =>
      _$PostmanResponseCopyWithImpl<PostmanResponse>(
        this as PostmanResponse,
        _$identity,
      );

  /// Serializes this PostmanResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanResponse;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanResponse &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.originalRequest, _this.originalRequest) ||
                other.originalRequest == _this.originalRequest) &&
            const DeepCollectionEquality().equals(
              other.responseTime,
              _this.responseTime,
            ) &&
            const DeepCollectionEquality().equals(
              other.timings,
              _this.timings,
            ) &&
            (identical(other.header, _this.header) ||
                other.header == _this.header) &&
            const DeepCollectionEquality().equals(other.cookie, _this.cookie) &&
            (identical(other.body, _this.body) || other.body == _this.body) &&
            (identical(other.status, _this.status) ||
                other.status == _this.status) &&
            (identical(other.code, _this.code) || other.code == _this.code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanResponse;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.originalRequest,
      const DeepCollectionEquality().hash(_this.responseTime),
      const DeepCollectionEquality().hash(_this.timings),
      _this.header,
      const DeepCollectionEquality().hash(_this.cookie),
      _this.body,
      _this.status,
      _this.code,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanResponse;
    return 'PostmanResponse(id: ${_this.id}, originalRequest: ${_this.originalRequest}, responseTime: ${_this.responseTime}, timings: ${_this.timings}, header: ${_this.header}, cookie: ${_this.cookie}, body: ${_this.body}, status: ${_this.status}, code: ${_this.code})';
  }
}

/// @nodoc
abstract mixin class $PostmanResponseCopyWith<$Res> {
  factory $PostmanResponseCopyWith(
    PostmanResponse value,
    $Res Function(PostmanResponse) _then,
  ) = _$PostmanResponseCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanResponse.idKey_) String? id,
    @JsonKey(name: PostmanResponse.originalRequestKey_)
    PostmanRequest? originalRequest,
    @JsonKey(name: PostmanResponse.responseTimeKey_) dynamic responseTime,
    @JsonKey(name: PostmanResponse.timingsKey_) Map<String, dynamic>? timings,
    @JsonKey(name: PostmanResponse.headerKey_) PostmanHeaders? header,
    @JsonKey(name: PostmanResponse.cookieKey_) List<PostmanCookie>? cookie,
    @JsonKey(name: PostmanResponse.bodyKey_) String? body,
    @JsonKey(name: PostmanResponse.statusKey_) String? status,
    @JsonKey(name: PostmanResponse.codeKey_) int? code,
  });
}

/// @nodoc
class _$PostmanResponseCopyWithImpl<$Res>
    implements $PostmanResponseCopyWith<$Res> {
  _$PostmanResponseCopyWithImpl(this._self, this._then);

  final PostmanResponse _self;
  final $Res Function(PostmanResponse) _then;

  /// Create a copy of PostmanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? originalRequest = freezed,
    Object? responseTime = freezed,
    Object? timings = freezed,
    Object? header = freezed,
    Object? cookie = freezed,
    Object? body = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(
      PostmanResponse(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        originalRequest: freezed == originalRequest
            ? _self.originalRequest
            : originalRequest // ignore: cast_nullable_to_non_nullable
                  as PostmanRequest?,
        responseTime: freezed == responseTime
            ? _self.responseTime
            : responseTime // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        timings: freezed == timings
            ? _self.timings
            : timings // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        header: freezed == header
            ? _self.header
            : header // ignore: cast_nullable_to_non_nullable
                  as PostmanHeaders?,
        cookie: freezed == cookie
            ? _self.cookie
            : cookie // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCookie>?,
        body: freezed == body
            ? _self.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _self.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        code: freezed == code
            ? _self.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanResponse].
extension PostmanResponsePatterns on PostmanResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
      @JsonKey(name: PostmanResponse.idKey_) String? id,
      @JsonKey(name: PostmanResponse.originalRequestKey_)
      PostmanRequest? originalRequest,
      @JsonKey(name: PostmanResponse.responseTimeKey_) dynamic responseTime,
      @JsonKey(name: PostmanResponse.timingsKey_) Map<String, dynamic>? timings,
      @JsonKey(name: PostmanResponse.headerKey_) PostmanHeaders? header,
      @JsonKey(name: PostmanResponse.cookieKey_) List<PostmanCookie>? cookie,
      @JsonKey(name: PostmanResponse.bodyKey_) String? body,
      @JsonKey(name: PostmanResponse.statusKey_) String? status,
      @JsonKey(name: PostmanResponse.codeKey_) int? code,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanResponse() when $default != null:
        return $default(
          _that.id,
          _that.originalRequest,
          _that.responseTime,
          _that.timings,
          _that.header,
          _that.cookie,
          _that.body,
          _that.status,
          _that.code,
        );
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
      @JsonKey(name: PostmanResponse.idKey_) String? id,
      @JsonKey(name: PostmanResponse.originalRequestKey_)
      PostmanRequest? originalRequest,
      @JsonKey(name: PostmanResponse.responseTimeKey_) dynamic responseTime,
      @JsonKey(name: PostmanResponse.timingsKey_) Map<String, dynamic>? timings,
      @JsonKey(name: PostmanResponse.headerKey_) PostmanHeaders? header,
      @JsonKey(name: PostmanResponse.cookieKey_) List<PostmanCookie>? cookie,
      @JsonKey(name: PostmanResponse.bodyKey_) String? body,
      @JsonKey(name: PostmanResponse.statusKey_) String? status,
      @JsonKey(name: PostmanResponse.codeKey_) int? code,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanResponse():
        return $default(
          _that.id,
          _that.originalRequest,
          _that.responseTime,
          _that.timings,
          _that.header,
          _that.cookie,
          _that.body,
          _that.status,
          _that.code,
        );
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
      @JsonKey(name: PostmanResponse.idKey_) String? id,
      @JsonKey(name: PostmanResponse.originalRequestKey_)
      PostmanRequest? originalRequest,
      @JsonKey(name: PostmanResponse.responseTimeKey_) dynamic responseTime,
      @JsonKey(name: PostmanResponse.timingsKey_) Map<String, dynamic>? timings,
      @JsonKey(name: PostmanResponse.headerKey_) PostmanHeaders? header,
      @JsonKey(name: PostmanResponse.cookieKey_) List<PostmanCookie>? cookie,
      @JsonKey(name: PostmanResponse.bodyKey_) String? body,
      @JsonKey(name: PostmanResponse.statusKey_) String? status,
      @JsonKey(name: PostmanResponse.codeKey_) int? code,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanResponse() when $default != null:
        return $default(
          _that.id,
          _that.originalRequest,
          _that.responseTime,
          _that.timings,
          _that.header,
          _that.cookie,
          _that.body,
          _that.status,
          _that.code,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanResponse extends PostmanResponse {
  const _PostmanResponse({
    @JsonKey(name: PostmanResponse.idKey_) this.id,
    @JsonKey(name: PostmanResponse.originalRequestKey_) this.originalRequest,
    @JsonKey(name: PostmanResponse.responseTimeKey_) this.responseTime,
    @JsonKey(name: PostmanResponse.timingsKey_) Map<String, dynamic>? timings,
    @JsonKey(name: PostmanResponse.headerKey_) this.header,
    @JsonKey(name: PostmanResponse.cookieKey_) List<PostmanCookie>? cookie,
    @JsonKey(name: PostmanResponse.bodyKey_) this.body,
    @JsonKey(name: PostmanResponse.statusKey_) this.status,
    @JsonKey(name: PostmanResponse.codeKey_) this.code,
  }) : _timings = timings,
       _cookie = cookie,
       super._();
  factory _PostmanResponse.fromJson(Map<String, dynamic> json) =>
      _$PostmanResponseFromJson(json);

  /// id
  @override
  @JsonKey(name: PostmanResponse.idKey_)
  final String? id;

  /// originalRequest
  @override
  @JsonKey(name: PostmanResponse.originalRequestKey_)
  final PostmanRequest? originalRequest;

  /// responseTime
  @override
  @JsonKey(name: PostmanResponse.responseTimeKey_)
  final dynamic responseTime;

  /// timings
  final Map<String, dynamic>? _timings;

  /// timings
  @override
  @JsonKey(name: PostmanResponse.timingsKey_)
  Map<String, dynamic>? get timings {
    final value = _timings;
    if (value == null) return null;
    if (_timings is EqualUnmodifiableMapView) return _timings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// header
  @override
  @JsonKey(name: PostmanResponse.headerKey_)
  final PostmanHeaders? header;

  /// cookie
  final List<PostmanCookie>? _cookie;

  /// cookie
  @override
  @JsonKey(name: PostmanResponse.cookieKey_)
  List<PostmanCookie>? get cookie {
    final value = _cookie;
    if (value == null) return null;
    if (_cookie is EqualUnmodifiableListView) return _cookie;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// body
  @override
  @JsonKey(name: PostmanResponse.bodyKey_)
  final String? body;

  /// status
  @override
  @JsonKey(name: PostmanResponse.statusKey_)
  final String? status;

  /// code
  @override
  @JsonKey(name: PostmanResponse.codeKey_)
  final int? code;

  /// Create a copy of PostmanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanResponseCopyWith<_PostmanResponse> get copyWith =>
      __$PostmanResponseCopyWithImpl<_PostmanResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanResponseToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalRequest, originalRequest) ||
                other.originalRequest == originalRequest) &&
            const DeepCollectionEquality().equals(
              other.responseTime,
              responseTime,
            ) &&
            const DeepCollectionEquality().equals(other.timings, _timings) &&
            (identical(other.header, header) || other.header == header) &&
            const DeepCollectionEquality().equals(other.cookie, _cookie) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      originalRequest,
      const DeepCollectionEquality().hash(responseTime),
      const DeepCollectionEquality().hash(_timings),
      header,
      const DeepCollectionEquality().hash(_cookie),
      body,
      status,
      code,
    );
  }

  @override
  String toString() {
    return 'PostmanResponse(id: $id, originalRequest: $originalRequest, responseTime: $responseTime, timings: $timings, header: $header, cookie: $cookie, body: $body, status: $status, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$PostmanResponseCopyWith<$Res>
    implements $PostmanResponseCopyWith<$Res> {
  factory _$PostmanResponseCopyWith(
    _PostmanResponse value,
    $Res Function(_PostmanResponse) _then,
  ) = __$PostmanResponseCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanResponse.idKey_) String? id,
    @JsonKey(name: PostmanResponse.originalRequestKey_)
    PostmanRequest? originalRequest,
    @JsonKey(name: PostmanResponse.responseTimeKey_) dynamic responseTime,
    @JsonKey(name: PostmanResponse.timingsKey_) Map<String, dynamic>? timings,
    @JsonKey(name: PostmanResponse.headerKey_) PostmanHeaders? header,
    @JsonKey(name: PostmanResponse.cookieKey_) List<PostmanCookie>? cookie,
    @JsonKey(name: PostmanResponse.bodyKey_) String? body,
    @JsonKey(name: PostmanResponse.statusKey_) String? status,
    @JsonKey(name: PostmanResponse.codeKey_) int? code,
  });
}

/// @nodoc
class __$PostmanResponseCopyWithImpl<$Res>
    implements _$PostmanResponseCopyWith<$Res> {
  __$PostmanResponseCopyWithImpl(this._self, this._then);

  final _PostmanResponse _self;
  final $Res Function(_PostmanResponse) _then;

  /// Create a copy of PostmanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? originalRequest = freezed,
    Object? responseTime = freezed,
    Object? timings = freezed,
    Object? header = freezed,
    Object? cookie = freezed,
    Object? body = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(
      _PostmanResponse(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        originalRequest: freezed == originalRequest
            ? _self.originalRequest
            : originalRequest // ignore: cast_nullable_to_non_nullable
                  as PostmanRequest?,
        responseTime: freezed == responseTime
            ? _self.responseTime
            : responseTime // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        timings: freezed == timings
            ? _self._timings
            : timings // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        header: freezed == header
            ? _self.header
            : header // ignore: cast_nullable_to_non_nullable
                  as PostmanHeaders?,
        cookie: freezed == cookie
            ? _self._cookie
            : cookie // ignore: cast_nullable_to_non_nullable
                  as List<PostmanCookie>?,
        body: freezed == body
            ? _self.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _self.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        code: freezed == code
            ? _self.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}
