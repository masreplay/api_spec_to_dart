// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_url_object_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanUrlObjectValue {
  /// raw
  @JsonKey(name: PostmanUrlObjectValue.rawKey_)
  String? get raw;

  /// protocol
  @JsonKey(name: PostmanUrlObjectValue.protocolKey_)
  String? get protocol;

  /// host
  @JsonKey(name: PostmanUrlObjectValue.hostKey_)
  PostmanHost? get host;

  /// path
  @JsonKey(name: PostmanUrlObjectValue.pathKey_)
  PostmanUrlObjectValuePath? get path;

  /// port
  @JsonKey(name: PostmanUrlObjectValue.portKey_)
  String? get port;

  /// query
  @JsonKey(name: PostmanUrlObjectValue.queryKey_)
  List<PostmanQueryParam>? get query;

  /// hash
  @JsonKey(name: PostmanUrlObjectValue.hashKey_)
  String? get hash;

  /// variable
  @JsonKey(name: PostmanUrlObjectValue.variableKey_)
  List<PostmanVariable>? get variable;

  /// Create a copy of PostmanUrlObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanUrlObjectValueCopyWith<PostmanUrlObjectValue> get copyWith =>
      _$PostmanUrlObjectValueCopyWithImpl<PostmanUrlObjectValue>(
        this as PostmanUrlObjectValue,
        _$identity,
      );

  /// Serializes this PostmanUrlObjectValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanUrlObjectValue;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanUrlObjectValue &&
            (identical(other.raw, _this.raw) || other.raw == _this.raw) &&
            (identical(other.protocol, _this.protocol) ||
                other.protocol == _this.protocol) &&
            (identical(other.host, _this.host) || other.host == _this.host) &&
            (identical(other.path, _this.path) || other.path == _this.path) &&
            (identical(other.port, _this.port) || other.port == _this.port) &&
            const DeepCollectionEquality().equals(other.query, _this.query) &&
            (identical(other.hash, _this.hash) || other.hash == _this.hash) &&
            const DeepCollectionEquality().equals(
              other.variable,
              _this.variable,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanUrlObjectValue;
    return Object.hash(
      runtimeType,
      _this.raw,
      _this.protocol,
      _this.host,
      _this.path,
      _this.port,
      const DeepCollectionEquality().hash(_this.query),
      _this.hash,
      const DeepCollectionEquality().hash(_this.variable),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanUrlObjectValue;
    return 'PostmanUrlObjectValue(raw: ${_this.raw}, protocol: ${_this.protocol}, host: ${_this.host}, path: ${_this.path}, port: ${_this.port}, query: ${_this.query}, hash: ${_this.hash}, variable: ${_this.variable})';
  }
}

/// @nodoc
abstract mixin class $PostmanUrlObjectValueCopyWith<$Res> {
  factory $PostmanUrlObjectValueCopyWith(
    PostmanUrlObjectValue value,
    $Res Function(PostmanUrlObjectValue) _then,
  ) = _$PostmanUrlObjectValueCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanUrlObjectValue.rawKey_) String? raw,
    @JsonKey(name: PostmanUrlObjectValue.protocolKey_) String? protocol,
    @JsonKey(name: PostmanUrlObjectValue.hostKey_) PostmanHost? host,
    @JsonKey(name: PostmanUrlObjectValue.pathKey_)
    PostmanUrlObjectValuePath? path,
    @JsonKey(name: PostmanUrlObjectValue.portKey_) String? port,
    @JsonKey(name: PostmanUrlObjectValue.queryKey_)
    List<PostmanQueryParam>? query,
    @JsonKey(name: PostmanUrlObjectValue.hashKey_) String? hash,
    @JsonKey(name: PostmanUrlObjectValue.variableKey_)
    List<PostmanVariable>? variable,
  });
}

/// @nodoc
class _$PostmanUrlObjectValueCopyWithImpl<$Res>
    implements $PostmanUrlObjectValueCopyWith<$Res> {
  _$PostmanUrlObjectValueCopyWithImpl(this._self, this._then);

  final PostmanUrlObjectValue _self;
  final $Res Function(PostmanUrlObjectValue) _then;

  /// Create a copy of PostmanUrlObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = freezed,
    Object? protocol = freezed,
    Object? host = freezed,
    Object? path = freezed,
    Object? port = freezed,
    Object? query = freezed,
    Object? hash = freezed,
    Object? variable = freezed,
  }) {
    return _then(
      PostmanUrlObjectValue(
        raw: freezed == raw
            ? _self.raw
            : raw // ignore: cast_nullable_to_non_nullable
                  as String?,
        protocol: freezed == protocol
            ? _self.protocol
            : protocol // ignore: cast_nullable_to_non_nullable
                  as String?,
        host: freezed == host
            ? _self.host
            : host // ignore: cast_nullable_to_non_nullable
                  as PostmanHost?,
        path: freezed == path
            ? _self.path
            : path // ignore: cast_nullable_to_non_nullable
                  as PostmanUrlObjectValuePath?,
        port: freezed == port
            ? _self.port
            : port // ignore: cast_nullable_to_non_nullable
                  as String?,
        query: freezed == query
            ? _self.query
            : query // ignore: cast_nullable_to_non_nullable
                  as List<PostmanQueryParam>?,
        hash: freezed == hash
            ? _self.hash
            : hash // ignore: cast_nullable_to_non_nullable
                  as String?,
        variable: freezed == variable
            ? _self.variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as List<PostmanVariable>?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanUrlObjectValue].
extension PostmanUrlObjectValuePatterns on PostmanUrlObjectValue {
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
    TResult Function(_PostmanUrlObjectValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlObjectValue() when $default != null:
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
    TResult Function(_PostmanUrlObjectValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlObjectValue():
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
    TResult? Function(_PostmanUrlObjectValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlObjectValue() when $default != null:
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
      @JsonKey(name: PostmanUrlObjectValue.rawKey_) String? raw,
      @JsonKey(name: PostmanUrlObjectValue.protocolKey_) String? protocol,
      @JsonKey(name: PostmanUrlObjectValue.hostKey_) PostmanHost? host,
      @JsonKey(name: PostmanUrlObjectValue.pathKey_)
      PostmanUrlObjectValuePath? path,
      @JsonKey(name: PostmanUrlObjectValue.portKey_) String? port,
      @JsonKey(name: PostmanUrlObjectValue.queryKey_)
      List<PostmanQueryParam>? query,
      @JsonKey(name: PostmanUrlObjectValue.hashKey_) String? hash,
      @JsonKey(name: PostmanUrlObjectValue.variableKey_)
      List<PostmanVariable>? variable,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlObjectValue() when $default != null:
        return $default(
          _that.raw,
          _that.protocol,
          _that.host,
          _that.path,
          _that.port,
          _that.query,
          _that.hash,
          _that.variable,
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
      @JsonKey(name: PostmanUrlObjectValue.rawKey_) String? raw,
      @JsonKey(name: PostmanUrlObjectValue.protocolKey_) String? protocol,
      @JsonKey(name: PostmanUrlObjectValue.hostKey_) PostmanHost? host,
      @JsonKey(name: PostmanUrlObjectValue.pathKey_)
      PostmanUrlObjectValuePath? path,
      @JsonKey(name: PostmanUrlObjectValue.portKey_) String? port,
      @JsonKey(name: PostmanUrlObjectValue.queryKey_)
      List<PostmanQueryParam>? query,
      @JsonKey(name: PostmanUrlObjectValue.hashKey_) String? hash,
      @JsonKey(name: PostmanUrlObjectValue.variableKey_)
      List<PostmanVariable>? variable,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlObjectValue():
        return $default(
          _that.raw,
          _that.protocol,
          _that.host,
          _that.path,
          _that.port,
          _that.query,
          _that.hash,
          _that.variable,
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
      @JsonKey(name: PostmanUrlObjectValue.rawKey_) String? raw,
      @JsonKey(name: PostmanUrlObjectValue.protocolKey_) String? protocol,
      @JsonKey(name: PostmanUrlObjectValue.hostKey_) PostmanHost? host,
      @JsonKey(name: PostmanUrlObjectValue.pathKey_)
      PostmanUrlObjectValuePath? path,
      @JsonKey(name: PostmanUrlObjectValue.portKey_) String? port,
      @JsonKey(name: PostmanUrlObjectValue.queryKey_)
      List<PostmanQueryParam>? query,
      @JsonKey(name: PostmanUrlObjectValue.hashKey_) String? hash,
      @JsonKey(name: PostmanUrlObjectValue.variableKey_)
      List<PostmanVariable>? variable,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanUrlObjectValue() when $default != null:
        return $default(
          _that.raw,
          _that.protocol,
          _that.host,
          _that.path,
          _that.port,
          _that.query,
          _that.hash,
          _that.variable,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanUrlObjectValue extends PostmanUrlObjectValue {
  const _PostmanUrlObjectValue({
    @JsonKey(name: PostmanUrlObjectValue.rawKey_) this.raw,
    @JsonKey(name: PostmanUrlObjectValue.protocolKey_) this.protocol,
    @JsonKey(name: PostmanUrlObjectValue.hostKey_) this.host,
    @JsonKey(name: PostmanUrlObjectValue.pathKey_) this.path,
    @JsonKey(name: PostmanUrlObjectValue.portKey_) this.port,
    @JsonKey(name: PostmanUrlObjectValue.queryKey_)
    List<PostmanQueryParam>? query,
    @JsonKey(name: PostmanUrlObjectValue.hashKey_) this.hash,
    @JsonKey(name: PostmanUrlObjectValue.variableKey_)
    List<PostmanVariable>? variable,
  }) : _query = query,
       _variable = variable,
       super._();
  factory _PostmanUrlObjectValue.fromJson(Map<String, dynamic> json) =>
      _$PostmanUrlObjectValueFromJson(json);

  /// raw
  @override
  @JsonKey(name: PostmanUrlObjectValue.rawKey_)
  final String? raw;

  /// protocol
  @override
  @JsonKey(name: PostmanUrlObjectValue.protocolKey_)
  final String? protocol;

  /// host
  @override
  @JsonKey(name: PostmanUrlObjectValue.hostKey_)
  final PostmanHost? host;

  /// path
  @override
  @JsonKey(name: PostmanUrlObjectValue.pathKey_)
  final PostmanUrlObjectValuePath? path;

  /// port
  @override
  @JsonKey(name: PostmanUrlObjectValue.portKey_)
  final String? port;

  /// query
  final List<PostmanQueryParam>? _query;

  /// query
  @override
  @JsonKey(name: PostmanUrlObjectValue.queryKey_)
  List<PostmanQueryParam>? get query {
    final value = _query;
    if (value == null) return null;
    if (_query is EqualUnmodifiableListView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// hash
  @override
  @JsonKey(name: PostmanUrlObjectValue.hashKey_)
  final String? hash;

  /// variable
  final List<PostmanVariable>? _variable;

  /// variable
  @override
  @JsonKey(name: PostmanUrlObjectValue.variableKey_)
  List<PostmanVariable>? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableListView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PostmanUrlObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanUrlObjectValueCopyWith<_PostmanUrlObjectValue> get copyWith =>
      __$PostmanUrlObjectValueCopyWithImpl<_PostmanUrlObjectValue>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanUrlObjectValueToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanUrlObjectValue &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other.query, _query) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            const DeepCollectionEquality().equals(other.variable, _variable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      raw,
      protocol,
      host,
      path,
      port,
      const DeepCollectionEquality().hash(_query),
      hash,
      const DeepCollectionEquality().hash(_variable),
    );
  }

  @override
  String toString() {
    return 'PostmanUrlObjectValue(raw: $raw, protocol: $protocol, host: $host, path: $path, port: $port, query: $query, hash: $hash, variable: $variable)';
  }
}

/// @nodoc
abstract mixin class _$PostmanUrlObjectValueCopyWith<$Res>
    implements $PostmanUrlObjectValueCopyWith<$Res> {
  factory _$PostmanUrlObjectValueCopyWith(
    _PostmanUrlObjectValue value,
    $Res Function(_PostmanUrlObjectValue) _then,
  ) = __$PostmanUrlObjectValueCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanUrlObjectValue.rawKey_) String? raw,
    @JsonKey(name: PostmanUrlObjectValue.protocolKey_) String? protocol,
    @JsonKey(name: PostmanUrlObjectValue.hostKey_) PostmanHost? host,
    @JsonKey(name: PostmanUrlObjectValue.pathKey_)
    PostmanUrlObjectValuePath? path,
    @JsonKey(name: PostmanUrlObjectValue.portKey_) String? port,
    @JsonKey(name: PostmanUrlObjectValue.queryKey_)
    List<PostmanQueryParam>? query,
    @JsonKey(name: PostmanUrlObjectValue.hashKey_) String? hash,
    @JsonKey(name: PostmanUrlObjectValue.variableKey_)
    List<PostmanVariable>? variable,
  });
}

/// @nodoc
class __$PostmanUrlObjectValueCopyWithImpl<$Res>
    implements _$PostmanUrlObjectValueCopyWith<$Res> {
  __$PostmanUrlObjectValueCopyWithImpl(this._self, this._then);

  final _PostmanUrlObjectValue _self;
  final $Res Function(_PostmanUrlObjectValue) _then;

  /// Create a copy of PostmanUrlObjectValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? raw = freezed,
    Object? protocol = freezed,
    Object? host = freezed,
    Object? path = freezed,
    Object? port = freezed,
    Object? query = freezed,
    Object? hash = freezed,
    Object? variable = freezed,
  }) {
    return _then(
      _PostmanUrlObjectValue(
        raw: freezed == raw
            ? _self.raw
            : raw // ignore: cast_nullable_to_non_nullable
                  as String?,
        protocol: freezed == protocol
            ? _self.protocol
            : protocol // ignore: cast_nullable_to_non_nullable
                  as String?,
        host: freezed == host
            ? _self.host
            : host // ignore: cast_nullable_to_non_nullable
                  as PostmanHost?,
        path: freezed == path
            ? _self.path
            : path // ignore: cast_nullable_to_non_nullable
                  as PostmanUrlObjectValuePath?,
        port: freezed == port
            ? _self.port
            : port // ignore: cast_nullable_to_non_nullable
                  as String?,
        query: freezed == query
            ? _self._query
            : query // ignore: cast_nullable_to_non_nullable
                  as List<PostmanQueryParam>?,
        hash: freezed == hash
            ? _self.hash
            : hash // ignore: cast_nullable_to_non_nullable
                  as String?,
        variable: freezed == variable
            ? _self._variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as List<PostmanVariable>?,
      ),
    );
  }
}
