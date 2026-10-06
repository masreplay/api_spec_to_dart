// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_request_object_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanRequestObjectValue {
  /// url
  @JsonKey(name: PostmanRequestObjectValue.urlKey_)
  PostmanUrl? get url;

  /// auth
  @JsonKey(name: PostmanRequestObjectValue.authKey_)
  PostmanAuth? get auth;

  /// proxy
  @JsonKey(name: PostmanRequestObjectValue.proxyKey_)
  PostmanProxyConfig? get proxy;

  /// certificate
  @JsonKey(name: PostmanRequestObjectValue.certificateKey_)
  PostmanCertificate? get certificate;

  /// method
  @JsonKey(name: PostmanRequestObjectValue.methodKey_)
  String? get method;

  /// description
  @JsonKey(name: PostmanRequestObjectValue.descriptionKey_)
  PostmanDescription? get description;

  /// header
  @JsonKey(name: PostmanRequestObjectValue.headerKey_)
  PostmanRequestObjectValueHeader? get header;

  /// body
  @JsonKey(name: PostmanRequestObjectValue.bodyKey_)
  PostmanRequestObjectValueBody? get body;

  /// Create a copy of PostmanRequestObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanRequestObjectValueCopyWith<PostmanRequestObjectValue> get copyWith =>
      _$PostmanRequestObjectValueCopyWithImpl<PostmanRequestObjectValue>(
        this as PostmanRequestObjectValue,
        _$identity,
      );

  /// Serializes this PostmanRequestObjectValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanRequestObjectValue;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanRequestObjectValue &&
            (identical(other.url, _this.url) || other.url == _this.url) &&
            (identical(other.auth, _this.auth) || other.auth == _this.auth) &&
            (identical(other.proxy, _this.proxy) ||
                other.proxy == _this.proxy) &&
            (identical(other.certificate, _this.certificate) ||
                other.certificate == _this.certificate) &&
            (identical(other.method, _this.method) ||
                other.method == _this.method) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            (identical(other.header, _this.header) ||
                other.header == _this.header) &&
            (identical(other.body, _this.body) || other.body == _this.body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanRequestObjectValue;
    return Object.hash(
      runtimeType,
      _this.url,
      _this.auth,
      _this.proxy,
      _this.certificate,
      _this.method,
      _this.description,
      _this.header,
      _this.body,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanRequestObjectValue;
    return 'PostmanRequestObjectValue(url: ${_this.url}, auth: ${_this.auth}, proxy: ${_this.proxy}, certificate: ${_this.certificate}, method: ${_this.method}, description: ${_this.description}, header: ${_this.header}, body: ${_this.body})';
  }
}

/// @nodoc
abstract mixin class $PostmanRequestObjectValueCopyWith<$Res> {
  factory $PostmanRequestObjectValueCopyWith(
    PostmanRequestObjectValue value,
    $Res Function(PostmanRequestObjectValue) _then,
  ) = _$PostmanRequestObjectValueCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanRequestObjectValue.urlKey_) PostmanUrl? url,
    @JsonKey(name: PostmanRequestObjectValue.authKey_) PostmanAuth? auth,
    @JsonKey(name: PostmanRequestObjectValue.proxyKey_)
    PostmanProxyConfig? proxy,
    @JsonKey(name: PostmanRequestObjectValue.certificateKey_)
    PostmanCertificate? certificate,
    @JsonKey(name: PostmanRequestObjectValue.methodKey_) String? method,
    @JsonKey(name: PostmanRequestObjectValue.descriptionKey_)
    PostmanDescription? description,
    @JsonKey(name: PostmanRequestObjectValue.headerKey_)
    PostmanRequestObjectValueHeader? header,
    @JsonKey(name: PostmanRequestObjectValue.bodyKey_)
    PostmanRequestObjectValueBody? body,
  });

  $PostmanAuthCopyWith<$Res>? get auth;
  $PostmanProxyConfigCopyWith<$Res>? get proxy;
  $PostmanCertificateCopyWith<$Res>? get certificate;
  $PostmanRequestObjectValueBodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$PostmanRequestObjectValueCopyWithImpl<$Res>
    implements $PostmanRequestObjectValueCopyWith<$Res> {
  _$PostmanRequestObjectValueCopyWithImpl(this._self, this._then);

  final PostmanRequestObjectValue _self;
  final $Res Function(PostmanRequestObjectValue) _then;

  /// Create a copy of PostmanRequestObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? auth = freezed,
    Object? proxy = freezed,
    Object? certificate = freezed,
    Object? method = freezed,
    Object? description = freezed,
    Object? header = freezed,
    Object? body = freezed,
  }) {
    return _then(
      PostmanRequestObjectValue(
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as PostmanUrl?,
        auth: freezed == auth
            ? _self.auth
            : auth // ignore: cast_nullable_to_non_nullable
                  as PostmanAuth?,
        proxy: freezed == proxy
            ? _self.proxy
            : proxy // ignore: cast_nullable_to_non_nullable
                  as PostmanProxyConfig?,
        certificate: freezed == certificate
            ? _self.certificate
            : certificate // ignore: cast_nullable_to_non_nullable
                  as PostmanCertificate?,
        method: freezed == method
            ? _self.method
            : method // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as PostmanDescription?,
        header: freezed == header
            ? _self.header
            : header // ignore: cast_nullable_to_non_nullable
                  as PostmanRequestObjectValueHeader?,
        body: freezed == body
            ? _self.body
            : body // ignore: cast_nullable_to_non_nullable
                  as PostmanRequestObjectValueBody?,
      ),
    );
  }

  /// Create a copy of PostmanRequestObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanAuthCopyWith<$Res>? get auth {
    if (_self.auth == null) {
      return null;
    }

    return $PostmanAuthCopyWith<$Res>(_self.auth!, (value) {
      return _then(_self.copyWith(auth: value));
    });
  }

  /// Create a copy of PostmanRequestObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanProxyConfigCopyWith<$Res>? get proxy {
    if (_self.proxy == null) {
      return null;
    }

    return $PostmanProxyConfigCopyWith<$Res>(_self.proxy!, (value) {
      return _then(_self.copyWith(proxy: value));
    });
  }

  /// Create a copy of PostmanRequestObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCertificateCopyWith<$Res>? get certificate {
    if (_self.certificate == null) {
      return null;
    }

    return $PostmanCertificateCopyWith<$Res>(_self.certificate!, (value) {
      return _then(_self.copyWith(certificate: value));
    });
  }

  /// Create a copy of PostmanRequestObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanRequestObjectValueBodyCopyWith<$Res>? get body {
    if (_self.body == null) {
      return null;
    }

    return $PostmanRequestObjectValueBodyCopyWith<$Res>(_self.body!, (value) {
      return _then(_self.copyWith(body: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanRequestObjectValue].
extension PostmanRequestObjectValuePatterns on PostmanRequestObjectValue {
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
    TResult Function(_PostmanRequestObjectValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValue() when $default != null:
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
    TResult Function(_PostmanRequestObjectValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValue():
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
    TResult? Function(_PostmanRequestObjectValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValue() when $default != null:
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
      @JsonKey(name: PostmanRequestObjectValue.urlKey_) PostmanUrl? url,
      @JsonKey(name: PostmanRequestObjectValue.authKey_) PostmanAuth? auth,
      @JsonKey(name: PostmanRequestObjectValue.proxyKey_)
      PostmanProxyConfig? proxy,
      @JsonKey(name: PostmanRequestObjectValue.certificateKey_)
      PostmanCertificate? certificate,
      @JsonKey(name: PostmanRequestObjectValue.methodKey_) String? method,
      @JsonKey(name: PostmanRequestObjectValue.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanRequestObjectValue.headerKey_)
      PostmanRequestObjectValueHeader? header,
      @JsonKey(name: PostmanRequestObjectValue.bodyKey_)
      PostmanRequestObjectValueBody? body,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValue() when $default != null:
        return $default(
          _that.url,
          _that.auth,
          _that.proxy,
          _that.certificate,
          _that.method,
          _that.description,
          _that.header,
          _that.body,
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
      @JsonKey(name: PostmanRequestObjectValue.urlKey_) PostmanUrl? url,
      @JsonKey(name: PostmanRequestObjectValue.authKey_) PostmanAuth? auth,
      @JsonKey(name: PostmanRequestObjectValue.proxyKey_)
      PostmanProxyConfig? proxy,
      @JsonKey(name: PostmanRequestObjectValue.certificateKey_)
      PostmanCertificate? certificate,
      @JsonKey(name: PostmanRequestObjectValue.methodKey_) String? method,
      @JsonKey(name: PostmanRequestObjectValue.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanRequestObjectValue.headerKey_)
      PostmanRequestObjectValueHeader? header,
      @JsonKey(name: PostmanRequestObjectValue.bodyKey_)
      PostmanRequestObjectValueBody? body,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValue():
        return $default(
          _that.url,
          _that.auth,
          _that.proxy,
          _that.certificate,
          _that.method,
          _that.description,
          _that.header,
          _that.body,
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
      @JsonKey(name: PostmanRequestObjectValue.urlKey_) PostmanUrl? url,
      @JsonKey(name: PostmanRequestObjectValue.authKey_) PostmanAuth? auth,
      @JsonKey(name: PostmanRequestObjectValue.proxyKey_)
      PostmanProxyConfig? proxy,
      @JsonKey(name: PostmanRequestObjectValue.certificateKey_)
      PostmanCertificate? certificate,
      @JsonKey(name: PostmanRequestObjectValue.methodKey_) String? method,
      @JsonKey(name: PostmanRequestObjectValue.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanRequestObjectValue.headerKey_)
      PostmanRequestObjectValueHeader? header,
      @JsonKey(name: PostmanRequestObjectValue.bodyKey_)
      PostmanRequestObjectValueBody? body,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValue() when $default != null:
        return $default(
          _that.url,
          _that.auth,
          _that.proxy,
          _that.certificate,
          _that.method,
          _that.description,
          _that.header,
          _that.body,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanRequestObjectValue extends PostmanRequestObjectValue {
  const _PostmanRequestObjectValue({
    @JsonKey(name: PostmanRequestObjectValue.urlKey_) this.url,
    @JsonKey(name: PostmanRequestObjectValue.authKey_) this.auth,
    @JsonKey(name: PostmanRequestObjectValue.proxyKey_) this.proxy,
    @JsonKey(name: PostmanRequestObjectValue.certificateKey_) this.certificate,
    @JsonKey(name: PostmanRequestObjectValue.methodKey_) this.method,
    @JsonKey(name: PostmanRequestObjectValue.descriptionKey_) this.description,
    @JsonKey(name: PostmanRequestObjectValue.headerKey_) this.header,
    @JsonKey(name: PostmanRequestObjectValue.bodyKey_) this.body,
  }) : super._();
  factory _PostmanRequestObjectValue.fromJson(Map<String, dynamic> json) =>
      _$PostmanRequestObjectValueFromJson(json);

  /// url
  @override
  @JsonKey(name: PostmanRequestObjectValue.urlKey_)
  final PostmanUrl? url;

  /// auth
  @override
  @JsonKey(name: PostmanRequestObjectValue.authKey_)
  final PostmanAuth? auth;

  /// proxy
  @override
  @JsonKey(name: PostmanRequestObjectValue.proxyKey_)
  final PostmanProxyConfig? proxy;

  /// certificate
  @override
  @JsonKey(name: PostmanRequestObjectValue.certificateKey_)
  final PostmanCertificate? certificate;

  /// method
  @override
  @JsonKey(name: PostmanRequestObjectValue.methodKey_)
  final String? method;

  /// description
  @override
  @JsonKey(name: PostmanRequestObjectValue.descriptionKey_)
  final PostmanDescription? description;

  /// header
  @override
  @JsonKey(name: PostmanRequestObjectValue.headerKey_)
  final PostmanRequestObjectValueHeader? header;

  /// body
  @override
  @JsonKey(name: PostmanRequestObjectValue.bodyKey_)
  final PostmanRequestObjectValueBody? body;

  /// Create a copy of PostmanRequestObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanRequestObjectValueCopyWith<_PostmanRequestObjectValue>
  get copyWith =>
      __$PostmanRequestObjectValueCopyWithImpl<_PostmanRequestObjectValue>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanRequestObjectValueToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanRequestObjectValue &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.proxy, proxy) || other.proxy == proxy) &&
            (identical(other.certificate, certificate) ||
                other.certificate == certificate) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      url,
      auth,
      proxy,
      certificate,
      method,
      description,
      header,
      body,
    );
  }

  @override
  String toString() {
    return 'PostmanRequestObjectValue(url: $url, auth: $auth, proxy: $proxy, certificate: $certificate, method: $method, description: $description, header: $header, body: $body)';
  }
}

/// @nodoc
abstract mixin class _$PostmanRequestObjectValueCopyWith<$Res>
    implements $PostmanRequestObjectValueCopyWith<$Res> {
  factory _$PostmanRequestObjectValueCopyWith(
    _PostmanRequestObjectValue value,
    $Res Function(_PostmanRequestObjectValue) _then,
  ) = __$PostmanRequestObjectValueCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanRequestObjectValue.urlKey_) PostmanUrl? url,
    @JsonKey(name: PostmanRequestObjectValue.authKey_) PostmanAuth? auth,
    @JsonKey(name: PostmanRequestObjectValue.proxyKey_)
    PostmanProxyConfig? proxy,
    @JsonKey(name: PostmanRequestObjectValue.certificateKey_)
    PostmanCertificate? certificate,
    @JsonKey(name: PostmanRequestObjectValue.methodKey_) String? method,
    @JsonKey(name: PostmanRequestObjectValue.descriptionKey_)
    PostmanDescription? description,
    @JsonKey(name: PostmanRequestObjectValue.headerKey_)
    PostmanRequestObjectValueHeader? header,
    @JsonKey(name: PostmanRequestObjectValue.bodyKey_)
    PostmanRequestObjectValueBody? body,
  });

  @override
  $PostmanAuthCopyWith<$Res>? get auth;
  @override
  $PostmanProxyConfigCopyWith<$Res>? get proxy;
  @override
  $PostmanCertificateCopyWith<$Res>? get certificate;
  @override
  $PostmanRequestObjectValueBodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$PostmanRequestObjectValueCopyWithImpl<$Res>
    implements _$PostmanRequestObjectValueCopyWith<$Res> {
  __$PostmanRequestObjectValueCopyWithImpl(this._self, this._then);

  final _PostmanRequestObjectValue _self;
  final $Res Function(_PostmanRequestObjectValue) _then;

  /// Create a copy of PostmanRequestObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = freezed,
    Object? auth = freezed,
    Object? proxy = freezed,
    Object? certificate = freezed,
    Object? method = freezed,
    Object? description = freezed,
    Object? header = freezed,
    Object? body = freezed,
  }) {
    return _then(
      _PostmanRequestObjectValue(
        url: freezed == url
            ? _self.url
            : url // ignore: cast_nullable_to_non_nullable
                  as PostmanUrl?,
        auth: freezed == auth
            ? _self.auth
            : auth // ignore: cast_nullable_to_non_nullable
                  as PostmanAuth?,
        proxy: freezed == proxy
            ? _self.proxy
            : proxy // ignore: cast_nullable_to_non_nullable
                  as PostmanProxyConfig?,
        certificate: freezed == certificate
            ? _self.certificate
            : certificate // ignore: cast_nullable_to_non_nullable
                  as PostmanCertificate?,
        method: freezed == method
            ? _self.method
            : method // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as PostmanDescription?,
        header: freezed == header
            ? _self.header
            : header // ignore: cast_nullable_to_non_nullable
                  as PostmanRequestObjectValueHeader?,
        body: freezed == body
            ? _self.body
            : body // ignore: cast_nullable_to_non_nullable
                  as PostmanRequestObjectValueBody?,
      ),
    );
  }

  /// Create a copy of PostmanRequestObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanAuthCopyWith<$Res>? get auth {
    if (_self.auth == null) {
      return null;
    }

    return $PostmanAuthCopyWith<$Res>(_self.auth!, (value) {
      return _then(_self.copyWith(auth: value));
    });
  }

  /// Create a copy of PostmanRequestObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanProxyConfigCopyWith<$Res>? get proxy {
    if (_self.proxy == null) {
      return null;
    }

    return $PostmanProxyConfigCopyWith<$Res>(_self.proxy!, (value) {
      return _then(_self.copyWith(proxy: value));
    });
  }

  /// Create a copy of PostmanRequestObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCertificateCopyWith<$Res>? get certificate {
    if (_self.certificate == null) {
      return null;
    }

    return $PostmanCertificateCopyWith<$Res>(_self.certificate!, (value) {
      return _then(_self.copyWith(certificate: value));
    });
  }

  /// Create a copy of PostmanRequestObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanRequestObjectValueBodyCopyWith<$Res>? get body {
    if (_self.body == null) {
      return null;
    }

    return $PostmanRequestObjectValueBodyCopyWith<$Res>(_self.body!, (value) {
      return _then(_self.copyWith(body: value));
    });
  }
}
