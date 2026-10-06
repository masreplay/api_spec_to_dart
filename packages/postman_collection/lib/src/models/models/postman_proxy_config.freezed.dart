// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_proxy_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanProxyConfig {
  /// match
  @JsonKey(name: PostmanProxyConfig.matchKey_)
  String get match;

  /// host
  @JsonKey(name: PostmanProxyConfig.hostKey_)
  String? get host;

  /// port
  @JsonKey(name: PostmanProxyConfig.portKey_)
  int get port;

  /// tunnel
  @JsonKey(name: PostmanProxyConfig.tunnelKey_)
  bool get tunnel;

  /// disabled
  @JsonKey(name: PostmanProxyConfig.disabledKey_)
  bool get disabled;

  /// Create a copy of PostmanProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanProxyConfigCopyWith<PostmanProxyConfig> get copyWith =>
      _$PostmanProxyConfigCopyWithImpl<PostmanProxyConfig>(
        this as PostmanProxyConfig,
        _$identity,
      );

  /// Serializes this PostmanProxyConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanProxyConfig;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanProxyConfig &&
            (identical(other.match, _this.match) ||
                other.match == _this.match) &&
            (identical(other.host, _this.host) || other.host == _this.host) &&
            (identical(other.port, _this.port) || other.port == _this.port) &&
            (identical(other.tunnel, _this.tunnel) ||
                other.tunnel == _this.tunnel) &&
            (identical(other.disabled, _this.disabled) ||
                other.disabled == _this.disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanProxyConfig;
    return Object.hash(
      runtimeType,
      _this.match,
      _this.host,
      _this.port,
      _this.tunnel,
      _this.disabled,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanProxyConfig;
    return 'PostmanProxyConfig(match: ${_this.match}, host: ${_this.host}, port: ${_this.port}, tunnel: ${_this.tunnel}, disabled: ${_this.disabled})';
  }
}

/// @nodoc
abstract mixin class $PostmanProxyConfigCopyWith<$Res> {
  factory $PostmanProxyConfigCopyWith(
    PostmanProxyConfig value,
    $Res Function(PostmanProxyConfig) _then,
  ) = _$PostmanProxyConfigCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanProxyConfig.matchKey_) String match,
    @JsonKey(name: PostmanProxyConfig.hostKey_) String? host,
    @JsonKey(name: PostmanProxyConfig.portKey_) int port,
    @JsonKey(name: PostmanProxyConfig.tunnelKey_) bool tunnel,
    @JsonKey(name: PostmanProxyConfig.disabledKey_) bool disabled,
  });
}

/// @nodoc
class _$PostmanProxyConfigCopyWithImpl<$Res>
    implements $PostmanProxyConfigCopyWith<$Res> {
  _$PostmanProxyConfigCopyWithImpl(this._self, this._then);

  final PostmanProxyConfig _self;
  final $Res Function(PostmanProxyConfig) _then;

  /// Create a copy of PostmanProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? match = null,
    Object? host = freezed,
    Object? port = null,
    Object? tunnel = null,
    Object? disabled = null,
  }) {
    return _then(
      PostmanProxyConfig(
        match: null == match
            ? _self.match
            : match // ignore: cast_nullable_to_non_nullable
                  as String,
        host: freezed == host
            ? _self.host
            : host // ignore: cast_nullable_to_non_nullable
                  as String?,
        port: null == port
            ? _self.port
            : port // ignore: cast_nullable_to_non_nullable
                  as int,
        tunnel: null == tunnel
            ? _self.tunnel
            : tunnel // ignore: cast_nullable_to_non_nullable
                  as bool,
        disabled: null == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanProxyConfig].
extension PostmanProxyConfigPatterns on PostmanProxyConfig {
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
    TResult Function(_PostmanProxyConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanProxyConfig() when $default != null:
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
    TResult Function(_PostmanProxyConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanProxyConfig():
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
    TResult? Function(_PostmanProxyConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanProxyConfig() when $default != null:
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
      @JsonKey(name: PostmanProxyConfig.matchKey_) String match,
      @JsonKey(name: PostmanProxyConfig.hostKey_) String? host,
      @JsonKey(name: PostmanProxyConfig.portKey_) int port,
      @JsonKey(name: PostmanProxyConfig.tunnelKey_) bool tunnel,
      @JsonKey(name: PostmanProxyConfig.disabledKey_) bool disabled,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanProxyConfig() when $default != null:
        return $default(
          _that.match,
          _that.host,
          _that.port,
          _that.tunnel,
          _that.disabled,
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
      @JsonKey(name: PostmanProxyConfig.matchKey_) String match,
      @JsonKey(name: PostmanProxyConfig.hostKey_) String? host,
      @JsonKey(name: PostmanProxyConfig.portKey_) int port,
      @JsonKey(name: PostmanProxyConfig.tunnelKey_) bool tunnel,
      @JsonKey(name: PostmanProxyConfig.disabledKey_) bool disabled,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanProxyConfig():
        return $default(
          _that.match,
          _that.host,
          _that.port,
          _that.tunnel,
          _that.disabled,
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
      @JsonKey(name: PostmanProxyConfig.matchKey_) String match,
      @JsonKey(name: PostmanProxyConfig.hostKey_) String? host,
      @JsonKey(name: PostmanProxyConfig.portKey_) int port,
      @JsonKey(name: PostmanProxyConfig.tunnelKey_) bool tunnel,
      @JsonKey(name: PostmanProxyConfig.disabledKey_) bool disabled,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanProxyConfig() when $default != null:
        return $default(
          _that.match,
          _that.host,
          _that.port,
          _that.tunnel,
          _that.disabled,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanProxyConfig extends PostmanProxyConfig {
  const _PostmanProxyConfig({
    @JsonKey(name: PostmanProxyConfig.matchKey_)
    this.match = 'http+https://*/*',
    @JsonKey(name: PostmanProxyConfig.hostKey_) this.host,
    @JsonKey(name: PostmanProxyConfig.portKey_) this.port = 8080,
    @JsonKey(name: PostmanProxyConfig.tunnelKey_) this.tunnel = false,
    @JsonKey(name: PostmanProxyConfig.disabledKey_) this.disabled = false,
  }) : super._();
  factory _PostmanProxyConfig.fromJson(Map<String, dynamic> json) =>
      _$PostmanProxyConfigFromJson(json);

  /// match
  @override
  @JsonKey(name: PostmanProxyConfig.matchKey_)
  final String match;

  /// host
  @override
  @JsonKey(name: PostmanProxyConfig.hostKey_)
  final String? host;

  /// port
  @override
  @JsonKey(name: PostmanProxyConfig.portKey_)
  final int port;

  /// tunnel
  @override
  @JsonKey(name: PostmanProxyConfig.tunnelKey_)
  final bool tunnel;

  /// disabled
  @override
  @JsonKey(name: PostmanProxyConfig.disabledKey_)
  final bool disabled;

  /// Create a copy of PostmanProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanProxyConfigCopyWith<_PostmanProxyConfig> get copyWith =>
      __$PostmanProxyConfigCopyWithImpl<_PostmanProxyConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanProxyConfigToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanProxyConfig &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.tunnel, tunnel) || other.tunnel == tunnel) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, match, host, port, tunnel, disabled);
  }

  @override
  String toString() {
    return 'PostmanProxyConfig(match: $match, host: $host, port: $port, tunnel: $tunnel, disabled: $disabled)';
  }
}

/// @nodoc
abstract mixin class _$PostmanProxyConfigCopyWith<$Res>
    implements $PostmanProxyConfigCopyWith<$Res> {
  factory _$PostmanProxyConfigCopyWith(
    _PostmanProxyConfig value,
    $Res Function(_PostmanProxyConfig) _then,
  ) = __$PostmanProxyConfigCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanProxyConfig.matchKey_) String match,
    @JsonKey(name: PostmanProxyConfig.hostKey_) String? host,
    @JsonKey(name: PostmanProxyConfig.portKey_) int port,
    @JsonKey(name: PostmanProxyConfig.tunnelKey_) bool tunnel,
    @JsonKey(name: PostmanProxyConfig.disabledKey_) bool disabled,
  });
}

/// @nodoc
class __$PostmanProxyConfigCopyWithImpl<$Res>
    implements _$PostmanProxyConfigCopyWith<$Res> {
  __$PostmanProxyConfigCopyWithImpl(this._self, this._then);

  final _PostmanProxyConfig _self;
  final $Res Function(_PostmanProxyConfig) _then;

  /// Create a copy of PostmanProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? match = null,
    Object? host = freezed,
    Object? port = null,
    Object? tunnel = null,
    Object? disabled = null,
  }) {
    return _then(
      _PostmanProxyConfig(
        match: null == match
            ? _self.match
            : match // ignore: cast_nullable_to_non_nullable
                  as String,
        host: freezed == host
            ? _self.host
            : host // ignore: cast_nullable_to_non_nullable
                  as String?,
        port: null == port
            ? _self.port
            : port // ignore: cast_nullable_to_non_nullable
                  as int,
        tunnel: null == tunnel
            ? _self.tunnel
            : tunnel // ignore: cast_nullable_to_non_nullable
                  as bool,
        disabled: null == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}
