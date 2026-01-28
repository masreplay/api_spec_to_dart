// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_api_auth_refresh_token_post_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthApiAuthRefreshTokenPostQueryParameters {
  /// refreshToken
  @JsonKey(name: AuthApiAuthRefreshTokenPostQueryParameters.refreshTokenKey_)
  String? get refreshToken;

  /// Create a copy of AuthApiAuthRefreshTokenPostQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthApiAuthRefreshTokenPostQueryParametersCopyWith<
          AuthApiAuthRefreshTokenPostQueryParameters>
      get copyWith => _$AuthApiAuthRefreshTokenPostQueryParametersCopyWithImpl<
              AuthApiAuthRefreshTokenPostQueryParameters>(
          this as AuthApiAuthRefreshTokenPostQueryParameters, _$identity);

  /// Serializes this AuthApiAuthRefreshTokenPostQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthApiAuthRefreshTokenPostQueryParameters &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @override
  String toString() {
    return 'AuthApiAuthRefreshTokenPostQueryParameters(refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class $AuthApiAuthRefreshTokenPostQueryParametersCopyWith<$Res> {
  factory $AuthApiAuthRefreshTokenPostQueryParametersCopyWith(
          AuthApiAuthRefreshTokenPostQueryParameters value,
          $Res Function(AuthApiAuthRefreshTokenPostQueryParameters) _then) =
      _$AuthApiAuthRefreshTokenPostQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(
          name: AuthApiAuthRefreshTokenPostQueryParameters.refreshTokenKey_)
      String? refreshToken});
}

/// @nodoc
class _$AuthApiAuthRefreshTokenPostQueryParametersCopyWithImpl<$Res>
    implements $AuthApiAuthRefreshTokenPostQueryParametersCopyWith<$Res> {
  _$AuthApiAuthRefreshTokenPostQueryParametersCopyWithImpl(
      this._self, this._then);

  final AuthApiAuthRefreshTokenPostQueryParameters _self;
  final $Res Function(AuthApiAuthRefreshTokenPostQueryParameters) _then;

  /// Create a copy of AuthApiAuthRefreshTokenPostQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_self.copyWith(
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthApiAuthRefreshTokenPostQueryParameters].
extension AuthApiAuthRefreshTokenPostQueryParametersPatterns
    on AuthApiAuthRefreshTokenPostQueryParameters {
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
    TResult Function(_AuthApiAuthRefreshTokenPostQueryParameters value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthApiAuthRefreshTokenPostQueryParameters() when $default != null:
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
    TResult Function(_AuthApiAuthRefreshTokenPostQueryParameters value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthApiAuthRefreshTokenPostQueryParameters():
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
    TResult? Function(_AuthApiAuthRefreshTokenPostQueryParameters value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthApiAuthRefreshTokenPostQueryParameters() when $default != null:
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
            @JsonKey(
                name:
                    AuthApiAuthRefreshTokenPostQueryParameters.refreshTokenKey_)
            String? refreshToken)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthApiAuthRefreshTokenPostQueryParameters() when $default != null:
        return $default(_that.refreshToken);
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
            @JsonKey(
                name:
                    AuthApiAuthRefreshTokenPostQueryParameters.refreshTokenKey_)
            String? refreshToken)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthApiAuthRefreshTokenPostQueryParameters():
        return $default(_that.refreshToken);
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
            @JsonKey(
                name:
                    AuthApiAuthRefreshTokenPostQueryParameters.refreshTokenKey_)
            String? refreshToken)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthApiAuthRefreshTokenPostQueryParameters() when $default != null:
        return $default(_that.refreshToken);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _AuthApiAuthRefreshTokenPostQueryParameters
    extends AuthApiAuthRefreshTokenPostQueryParameters {
  const _AuthApiAuthRefreshTokenPostQueryParameters(
      {@JsonKey(
          name: AuthApiAuthRefreshTokenPostQueryParameters.refreshTokenKey_)
      this.refreshToken})
      : super._();
  factory _AuthApiAuthRefreshTokenPostQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AuthApiAuthRefreshTokenPostQueryParametersFromJson(json);

  /// refreshToken
  @override
  @JsonKey(name: AuthApiAuthRefreshTokenPostQueryParameters.refreshTokenKey_)
  final String? refreshToken;

  /// Create a copy of AuthApiAuthRefreshTokenPostQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthApiAuthRefreshTokenPostQueryParametersCopyWith<
          _AuthApiAuthRefreshTokenPostQueryParameters>
      get copyWith => __$AuthApiAuthRefreshTokenPostQueryParametersCopyWithImpl<
          _AuthApiAuthRefreshTokenPostQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthApiAuthRefreshTokenPostQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthApiAuthRefreshTokenPostQueryParameters &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @override
  String toString() {
    return 'AuthApiAuthRefreshTokenPostQueryParameters(refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class _$AuthApiAuthRefreshTokenPostQueryParametersCopyWith<$Res>
    implements $AuthApiAuthRefreshTokenPostQueryParametersCopyWith<$Res> {
  factory _$AuthApiAuthRefreshTokenPostQueryParametersCopyWith(
          _AuthApiAuthRefreshTokenPostQueryParameters value,
          $Res Function(_AuthApiAuthRefreshTokenPostQueryParameters) _then) =
      __$AuthApiAuthRefreshTokenPostQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: AuthApiAuthRefreshTokenPostQueryParameters.refreshTokenKey_)
      String? refreshToken});
}

/// @nodoc
class __$AuthApiAuthRefreshTokenPostQueryParametersCopyWithImpl<$Res>
    implements _$AuthApiAuthRefreshTokenPostQueryParametersCopyWith<$Res> {
  __$AuthApiAuthRefreshTokenPostQueryParametersCopyWithImpl(
      this._self, this._then);

  final _AuthApiAuthRefreshTokenPostQueryParameters _self;
  final $Res Function(_AuthApiAuthRefreshTokenPostQueryParameters) _then;

  /// Create a copy of AuthApiAuthRefreshTokenPostQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_AuthApiAuthRefreshTokenPostQueryParameters(
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
