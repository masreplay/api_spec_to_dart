// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credentials_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CredentialsDto {
  /// sessionId
  @JsonKey(name: CredentialsDto.sessionIdKey_)
  String get sessionId;

  /// accessToken
  @JsonKey(name: CredentialsDto.accessTokenKey_)
  String get accessToken;

  /// refreshToken
  @JsonKey(name: CredentialsDto.refreshTokenKey_)
  String get refreshToken;

  /// expiresAt
  @JsonKey(name: CredentialsDto.expiresAtKey_)
  DateTime get expiresAt;

  /// Create a copy of CredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CredentialsDtoCopyWith<CredentialsDto> get copyWith =>
      _$CredentialsDtoCopyWithImpl<CredentialsDto>(
          this as CredentialsDto, _$identity);

  /// Serializes this CredentialsDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CredentialsDto &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sessionId, accessToken, refreshToken, expiresAt);

  @override
  String toString() {
    return 'CredentialsDto(sessionId: $sessionId, accessToken: $accessToken, refreshToken: $refreshToken, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $CredentialsDtoCopyWith<$Res> {
  factory $CredentialsDtoCopyWith(
          CredentialsDto value, $Res Function(CredentialsDto) _then) =
      _$CredentialsDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CredentialsDto.sessionIdKey_) String sessionId,
      @JsonKey(name: CredentialsDto.accessTokenKey_) String accessToken,
      @JsonKey(name: CredentialsDto.refreshTokenKey_) String refreshToken,
      @JsonKey(name: CredentialsDto.expiresAtKey_) DateTime expiresAt});
}

/// @nodoc
class _$CredentialsDtoCopyWithImpl<$Res>
    implements $CredentialsDtoCopyWith<$Res> {
  _$CredentialsDtoCopyWithImpl(this._self, this._then);

  final CredentialsDto _self;
  final $Res Function(CredentialsDto) _then;

  /// Create a copy of CredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiresAt = null,
  }) {
    return _then(_self.copyWith(
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [CredentialsDto].
extension CredentialsDtoPatterns on CredentialsDto {
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
    TResult Function(_CredentialsDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CredentialsDto() when $default != null:
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
    TResult Function(_CredentialsDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CredentialsDto():
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
    TResult? Function(_CredentialsDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CredentialsDto() when $default != null:
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
            @JsonKey(name: CredentialsDto.sessionIdKey_) String sessionId,
            @JsonKey(name: CredentialsDto.accessTokenKey_) String accessToken,
            @JsonKey(name: CredentialsDto.refreshTokenKey_) String refreshToken,
            @JsonKey(name: CredentialsDto.expiresAtKey_) DateTime expiresAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CredentialsDto() when $default != null:
        return $default(_that.sessionId, _that.accessToken, _that.refreshToken,
            _that.expiresAt);
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
            @JsonKey(name: CredentialsDto.sessionIdKey_) String sessionId,
            @JsonKey(name: CredentialsDto.accessTokenKey_) String accessToken,
            @JsonKey(name: CredentialsDto.refreshTokenKey_) String refreshToken,
            @JsonKey(name: CredentialsDto.expiresAtKey_) DateTime expiresAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CredentialsDto():
        return $default(_that.sessionId, _that.accessToken, _that.refreshToken,
            _that.expiresAt);
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
            @JsonKey(name: CredentialsDto.sessionIdKey_) String sessionId,
            @JsonKey(name: CredentialsDto.accessTokenKey_) String accessToken,
            @JsonKey(name: CredentialsDto.refreshTokenKey_) String refreshToken,
            @JsonKey(name: CredentialsDto.expiresAtKey_) DateTime expiresAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CredentialsDto() when $default != null:
        return $default(_that.sessionId, _that.accessToken, _that.refreshToken,
            _that.expiresAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CredentialsDto extends CredentialsDto {
  const _CredentialsDto(
      {@JsonKey(name: CredentialsDto.sessionIdKey_) required this.sessionId,
      @JsonKey(name: CredentialsDto.accessTokenKey_) required this.accessToken,
      @JsonKey(name: CredentialsDto.refreshTokenKey_)
      required this.refreshToken,
      @JsonKey(name: CredentialsDto.expiresAtKey_) required this.expiresAt})
      : super._();
  factory _CredentialsDto.fromJson(Map<String, dynamic> json) =>
      _$CredentialsDtoFromJson(json);

  /// sessionId
  @override
  @JsonKey(name: CredentialsDto.sessionIdKey_)
  final String sessionId;

  /// accessToken
  @override
  @JsonKey(name: CredentialsDto.accessTokenKey_)
  final String accessToken;

  /// refreshToken
  @override
  @JsonKey(name: CredentialsDto.refreshTokenKey_)
  final String refreshToken;

  /// expiresAt
  @override
  @JsonKey(name: CredentialsDto.expiresAtKey_)
  final DateTime expiresAt;

  /// Create a copy of CredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CredentialsDtoCopyWith<_CredentialsDto> get copyWith =>
      __$CredentialsDtoCopyWithImpl<_CredentialsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CredentialsDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CredentialsDto &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sessionId, accessToken, refreshToken, expiresAt);

  @override
  String toString() {
    return 'CredentialsDto(sessionId: $sessionId, accessToken: $accessToken, refreshToken: $refreshToken, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class _$CredentialsDtoCopyWith<$Res>
    implements $CredentialsDtoCopyWith<$Res> {
  factory _$CredentialsDtoCopyWith(
          _CredentialsDto value, $Res Function(_CredentialsDto) _then) =
      __$CredentialsDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CredentialsDto.sessionIdKey_) String sessionId,
      @JsonKey(name: CredentialsDto.accessTokenKey_) String accessToken,
      @JsonKey(name: CredentialsDto.refreshTokenKey_) String refreshToken,
      @JsonKey(name: CredentialsDto.expiresAtKey_) DateTime expiresAt});
}

/// @nodoc
class __$CredentialsDtoCopyWithImpl<$Res>
    implements _$CredentialsDtoCopyWith<$Res> {
  __$CredentialsDtoCopyWithImpl(this._self, this._then);

  final _CredentialsDto _self;
  final $Res Function(_CredentialsDto) _then;

  /// Create a copy of CredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sessionId = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiresAt = null,
  }) {
    return _then(_CredentialsDto(
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}
