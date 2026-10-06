// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_cookie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanCookie {
  /// domain
  @JsonKey(name: PostmanCookie.domainKey_)
  String get domain;

  /// expires
  @JsonKey(name: PostmanCookie.expiresKey_)
  String? get expires;

  /// maxAge
  @JsonKey(name: PostmanCookie.maxAgeKey_)
  String? get maxAge;

  /// hostOnly
  @JsonKey(name: PostmanCookie.hostOnlyKey_)
  bool? get hostOnly;

  /// httpOnly
  @JsonKey(name: PostmanCookie.httpOnlyKey_)
  bool? get httpOnly;

  /// name
  @JsonKey(name: PostmanCookie.nameKey_)
  String? get name;

  /// path
  @JsonKey(name: PostmanCookie.pathKey_)
  String get path;

  /// secure
  @JsonKey(name: PostmanCookie.secureKey_)
  bool? get secure;

  /// session
  @JsonKey(name: PostmanCookie.sessionKey_)
  bool? get session;

  /// value
  @JsonKey(name: PostmanCookie.valueKey_)
  String? get value;

  /// extensions
  @JsonKey(name: PostmanCookie.extensionsKey_)
  List<dynamic>? get extensions;

  /// Create a copy of PostmanCookie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCookieCopyWith<PostmanCookie> get copyWith =>
      _$PostmanCookieCopyWithImpl<PostmanCookie>(
        this as PostmanCookie,
        _$identity,
      );

  /// Serializes this PostmanCookie to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCookie;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCookie &&
            (identical(other.domain, _this.domain) ||
                other.domain == _this.domain) &&
            (identical(other.expires, _this.expires) ||
                other.expires == _this.expires) &&
            (identical(other.maxAge, _this.maxAge) ||
                other.maxAge == _this.maxAge) &&
            (identical(other.hostOnly, _this.hostOnly) ||
                other.hostOnly == _this.hostOnly) &&
            (identical(other.httpOnly, _this.httpOnly) ||
                other.httpOnly == _this.httpOnly) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.path, _this.path) || other.path == _this.path) &&
            (identical(other.secure, _this.secure) ||
                other.secure == _this.secure) &&
            (identical(other.session, _this.session) ||
                other.session == _this.session) &&
            (identical(other.value, _this.value) ||
                other.value == _this.value) &&
            const DeepCollectionEquality().equals(
              other.extensions,
              _this.extensions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCookie;
    return Object.hash(
      runtimeType,
      _this.domain,
      _this.expires,
      _this.maxAge,
      _this.hostOnly,
      _this.httpOnly,
      _this.name,
      _this.path,
      _this.secure,
      _this.session,
      _this.value,
      const DeepCollectionEquality().hash(_this.extensions),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCookie;
    return 'PostmanCookie(domain: ${_this.domain}, expires: ${_this.expires}, maxAge: ${_this.maxAge}, hostOnly: ${_this.hostOnly}, httpOnly: ${_this.httpOnly}, name: ${_this.name}, path: ${_this.path}, secure: ${_this.secure}, session: ${_this.session}, value: ${_this.value}, extensions: ${_this.extensions})';
  }
}

/// @nodoc
abstract mixin class $PostmanCookieCopyWith<$Res> {
  factory $PostmanCookieCopyWith(
    PostmanCookie value,
    $Res Function(PostmanCookie) _then,
  ) = _$PostmanCookieCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanCookie.domainKey_) String domain,
    @JsonKey(name: PostmanCookie.expiresKey_) String? expires,
    @JsonKey(name: PostmanCookie.maxAgeKey_) String? maxAge,
    @JsonKey(name: PostmanCookie.hostOnlyKey_) bool? hostOnly,
    @JsonKey(name: PostmanCookie.httpOnlyKey_) bool? httpOnly,
    @JsonKey(name: PostmanCookie.nameKey_) String? name,
    @JsonKey(name: PostmanCookie.pathKey_) String path,
    @JsonKey(name: PostmanCookie.secureKey_) bool? secure,
    @JsonKey(name: PostmanCookie.sessionKey_) bool? session,
    @JsonKey(name: PostmanCookie.valueKey_) String? value,
    @JsonKey(name: PostmanCookie.extensionsKey_) List<dynamic>? extensions,
  });
}

/// @nodoc
class _$PostmanCookieCopyWithImpl<$Res>
    implements $PostmanCookieCopyWith<$Res> {
  _$PostmanCookieCopyWithImpl(this._self, this._then);

  final PostmanCookie _self;
  final $Res Function(PostmanCookie) _then;

  /// Create a copy of PostmanCookie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = null,
    Object? expires = freezed,
    Object? maxAge = freezed,
    Object? hostOnly = freezed,
    Object? httpOnly = freezed,
    Object? name = freezed,
    Object? path = null,
    Object? secure = freezed,
    Object? session = freezed,
    Object? value = freezed,
    Object? extensions = freezed,
  }) {
    return _then(
      PostmanCookie(
        domain: null == domain
            ? _self.domain
            : domain // ignore: cast_nullable_to_non_nullable
                  as String,
        expires: freezed == expires
            ? _self.expires
            : expires // ignore: cast_nullable_to_non_nullable
                  as String?,
        maxAge: freezed == maxAge
            ? _self.maxAge
            : maxAge // ignore: cast_nullable_to_non_nullable
                  as String?,
        hostOnly: freezed == hostOnly
            ? _self.hostOnly
            : hostOnly // ignore: cast_nullable_to_non_nullable
                  as bool?,
        httpOnly: freezed == httpOnly
            ? _self.httpOnly
            : httpOnly // ignore: cast_nullable_to_non_nullable
                  as bool?,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        path: null == path
            ? _self.path
            : path // ignore: cast_nullable_to_non_nullable
                  as String,
        secure: freezed == secure
            ? _self.secure
            : secure // ignore: cast_nullable_to_non_nullable
                  as bool?,
        session: freezed == session
            ? _self.session
            : session // ignore: cast_nullable_to_non_nullable
                  as bool?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
        extensions: freezed == extensions
            ? _self.extensions
            : extensions // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanCookie].
extension PostmanCookiePatterns on PostmanCookie {
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
    TResult Function(_PostmanCookie value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCookie() when $default != null:
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
    TResult Function(_PostmanCookie value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCookie():
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
    TResult? Function(_PostmanCookie value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCookie() when $default != null:
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
      @JsonKey(name: PostmanCookie.domainKey_) String domain,
      @JsonKey(name: PostmanCookie.expiresKey_) String? expires,
      @JsonKey(name: PostmanCookie.maxAgeKey_) String? maxAge,
      @JsonKey(name: PostmanCookie.hostOnlyKey_) bool? hostOnly,
      @JsonKey(name: PostmanCookie.httpOnlyKey_) bool? httpOnly,
      @JsonKey(name: PostmanCookie.nameKey_) String? name,
      @JsonKey(name: PostmanCookie.pathKey_) String path,
      @JsonKey(name: PostmanCookie.secureKey_) bool? secure,
      @JsonKey(name: PostmanCookie.sessionKey_) bool? session,
      @JsonKey(name: PostmanCookie.valueKey_) String? value,
      @JsonKey(name: PostmanCookie.extensionsKey_) List<dynamic>? extensions,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCookie() when $default != null:
        return $default(
          _that.domain,
          _that.expires,
          _that.maxAge,
          _that.hostOnly,
          _that.httpOnly,
          _that.name,
          _that.path,
          _that.secure,
          _that.session,
          _that.value,
          _that.extensions,
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
      @JsonKey(name: PostmanCookie.domainKey_) String domain,
      @JsonKey(name: PostmanCookie.expiresKey_) String? expires,
      @JsonKey(name: PostmanCookie.maxAgeKey_) String? maxAge,
      @JsonKey(name: PostmanCookie.hostOnlyKey_) bool? hostOnly,
      @JsonKey(name: PostmanCookie.httpOnlyKey_) bool? httpOnly,
      @JsonKey(name: PostmanCookie.nameKey_) String? name,
      @JsonKey(name: PostmanCookie.pathKey_) String path,
      @JsonKey(name: PostmanCookie.secureKey_) bool? secure,
      @JsonKey(name: PostmanCookie.sessionKey_) bool? session,
      @JsonKey(name: PostmanCookie.valueKey_) String? value,
      @JsonKey(name: PostmanCookie.extensionsKey_) List<dynamic>? extensions,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCookie():
        return $default(
          _that.domain,
          _that.expires,
          _that.maxAge,
          _that.hostOnly,
          _that.httpOnly,
          _that.name,
          _that.path,
          _that.secure,
          _that.session,
          _that.value,
          _that.extensions,
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
      @JsonKey(name: PostmanCookie.domainKey_) String domain,
      @JsonKey(name: PostmanCookie.expiresKey_) String? expires,
      @JsonKey(name: PostmanCookie.maxAgeKey_) String? maxAge,
      @JsonKey(name: PostmanCookie.hostOnlyKey_) bool? hostOnly,
      @JsonKey(name: PostmanCookie.httpOnlyKey_) bool? httpOnly,
      @JsonKey(name: PostmanCookie.nameKey_) String? name,
      @JsonKey(name: PostmanCookie.pathKey_) String path,
      @JsonKey(name: PostmanCookie.secureKey_) bool? secure,
      @JsonKey(name: PostmanCookie.sessionKey_) bool? session,
      @JsonKey(name: PostmanCookie.valueKey_) String? value,
      @JsonKey(name: PostmanCookie.extensionsKey_) List<dynamic>? extensions,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCookie() when $default != null:
        return $default(
          _that.domain,
          _that.expires,
          _that.maxAge,
          _that.hostOnly,
          _that.httpOnly,
          _that.name,
          _that.path,
          _that.secure,
          _that.session,
          _that.value,
          _that.extensions,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanCookie extends PostmanCookie {
  const _PostmanCookie({
    @JsonKey(name: PostmanCookie.domainKey_) required this.domain,
    @JsonKey(name: PostmanCookie.expiresKey_) this.expires,
    @JsonKey(name: PostmanCookie.maxAgeKey_) this.maxAge,
    @JsonKey(name: PostmanCookie.hostOnlyKey_) this.hostOnly,
    @JsonKey(name: PostmanCookie.httpOnlyKey_) this.httpOnly,
    @JsonKey(name: PostmanCookie.nameKey_) this.name,
    @JsonKey(name: PostmanCookie.pathKey_) required this.path,
    @JsonKey(name: PostmanCookie.secureKey_) this.secure,
    @JsonKey(name: PostmanCookie.sessionKey_) this.session,
    @JsonKey(name: PostmanCookie.valueKey_) this.value,
    @JsonKey(name: PostmanCookie.extensionsKey_) List<dynamic>? extensions,
  }) : _extensions = extensions,
       super._();
  factory _PostmanCookie.fromJson(Map<String, dynamic> json) =>
      _$PostmanCookieFromJson(json);

  /// domain
  @override
  @JsonKey(name: PostmanCookie.domainKey_)
  final String domain;

  /// expires
  @override
  @JsonKey(name: PostmanCookie.expiresKey_)
  final String? expires;

  /// maxAge
  @override
  @JsonKey(name: PostmanCookie.maxAgeKey_)
  final String? maxAge;

  /// hostOnly
  @override
  @JsonKey(name: PostmanCookie.hostOnlyKey_)
  final bool? hostOnly;

  /// httpOnly
  @override
  @JsonKey(name: PostmanCookie.httpOnlyKey_)
  final bool? httpOnly;

  /// name
  @override
  @JsonKey(name: PostmanCookie.nameKey_)
  final String? name;

  /// path
  @override
  @JsonKey(name: PostmanCookie.pathKey_)
  final String path;

  /// secure
  @override
  @JsonKey(name: PostmanCookie.secureKey_)
  final bool? secure;

  /// session
  @override
  @JsonKey(name: PostmanCookie.sessionKey_)
  final bool? session;

  /// value
  @override
  @JsonKey(name: PostmanCookie.valueKey_)
  final String? value;

  /// extensions
  final List<dynamic>? _extensions;

  /// extensions
  @override
  @JsonKey(name: PostmanCookie.extensionsKey_)
  List<dynamic>? get extensions {
    final value = _extensions;
    if (value == null) return null;
    if (_extensions is EqualUnmodifiableListView) return _extensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PostmanCookie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCookieCopyWith<_PostmanCookie> get copyWith =>
      __$PostmanCookieCopyWithImpl<_PostmanCookie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCookieToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCookie &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.expires, expires) || other.expires == expires) &&
            (identical(other.maxAge, maxAge) || other.maxAge == maxAge) &&
            (identical(other.hostOnly, hostOnly) ||
                other.hostOnly == hostOnly) &&
            (identical(other.httpOnly, httpOnly) ||
                other.httpOnly == httpOnly) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.secure, secure) || other.secure == secure) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(
              other.extensions,
              _extensions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      domain,
      expires,
      maxAge,
      hostOnly,
      httpOnly,
      name,
      path,
      secure,
      session,
      value,
      const DeepCollectionEquality().hash(_extensions),
    );
  }

  @override
  String toString() {
    return 'PostmanCookie(domain: $domain, expires: $expires, maxAge: $maxAge, hostOnly: $hostOnly, httpOnly: $httpOnly, name: $name, path: $path, secure: $secure, session: $session, value: $value, extensions: $extensions)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCookieCopyWith<$Res>
    implements $PostmanCookieCopyWith<$Res> {
  factory _$PostmanCookieCopyWith(
    _PostmanCookie value,
    $Res Function(_PostmanCookie) _then,
  ) = __$PostmanCookieCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanCookie.domainKey_) String domain,
    @JsonKey(name: PostmanCookie.expiresKey_) String? expires,
    @JsonKey(name: PostmanCookie.maxAgeKey_) String? maxAge,
    @JsonKey(name: PostmanCookie.hostOnlyKey_) bool? hostOnly,
    @JsonKey(name: PostmanCookie.httpOnlyKey_) bool? httpOnly,
    @JsonKey(name: PostmanCookie.nameKey_) String? name,
    @JsonKey(name: PostmanCookie.pathKey_) String path,
    @JsonKey(name: PostmanCookie.secureKey_) bool? secure,
    @JsonKey(name: PostmanCookie.sessionKey_) bool? session,
    @JsonKey(name: PostmanCookie.valueKey_) String? value,
    @JsonKey(name: PostmanCookie.extensionsKey_) List<dynamic>? extensions,
  });
}

/// @nodoc
class __$PostmanCookieCopyWithImpl<$Res>
    implements _$PostmanCookieCopyWith<$Res> {
  __$PostmanCookieCopyWithImpl(this._self, this._then);

  final _PostmanCookie _self;
  final $Res Function(_PostmanCookie) _then;

  /// Create a copy of PostmanCookie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? domain = null,
    Object? expires = freezed,
    Object? maxAge = freezed,
    Object? hostOnly = freezed,
    Object? httpOnly = freezed,
    Object? name = freezed,
    Object? path = null,
    Object? secure = freezed,
    Object? session = freezed,
    Object? value = freezed,
    Object? extensions = freezed,
  }) {
    return _then(
      _PostmanCookie(
        domain: null == domain
            ? _self.domain
            : domain // ignore: cast_nullable_to_non_nullable
                  as String,
        expires: freezed == expires
            ? _self.expires
            : expires // ignore: cast_nullable_to_non_nullable
                  as String?,
        maxAge: freezed == maxAge
            ? _self.maxAge
            : maxAge // ignore: cast_nullable_to_non_nullable
                  as String?,
        hostOnly: freezed == hostOnly
            ? _self.hostOnly
            : hostOnly // ignore: cast_nullable_to_non_nullable
                  as bool?,
        httpOnly: freezed == httpOnly
            ? _self.httpOnly
            : httpOnly // ignore: cast_nullable_to_non_nullable
                  as bool?,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        path: null == path
            ? _self.path
            : path // ignore: cast_nullable_to_non_nullable
                  as String,
        secure: freezed == secure
            ? _self.secure
            : secure // ignore: cast_nullable_to_non_nullable
                  as bool?,
        session: freezed == session
            ? _self.session
            : session // ignore: cast_nullable_to_non_nullable
                  as bool?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
        extensions: freezed == extensions
            ? _self._extensions
            : extensions // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
      ),
    );
  }
}
