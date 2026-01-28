// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_api_auth_logout_post_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthApiAuthLogoutPostQueryParameters {
  /// sessionId
  @JsonKey(name: AuthApiAuthLogoutPostQueryParameters.sessionIdKey_)
  String? get sessionId;

  /// Create a copy of AuthApiAuthLogoutPostQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthApiAuthLogoutPostQueryParametersCopyWith<
          AuthApiAuthLogoutPostQueryParameters>
      get copyWith => _$AuthApiAuthLogoutPostQueryParametersCopyWithImpl<
              AuthApiAuthLogoutPostQueryParameters>(
          this as AuthApiAuthLogoutPostQueryParameters, _$identity);

  /// Serializes this AuthApiAuthLogoutPostQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthApiAuthLogoutPostQueryParameters &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId);

  @override
  String toString() {
    return 'AuthApiAuthLogoutPostQueryParameters(sessionId: $sessionId)';
  }
}

/// @nodoc
abstract mixin class $AuthApiAuthLogoutPostQueryParametersCopyWith<$Res> {
  factory $AuthApiAuthLogoutPostQueryParametersCopyWith(
          AuthApiAuthLogoutPostQueryParameters value,
          $Res Function(AuthApiAuthLogoutPostQueryParameters) _then) =
      _$AuthApiAuthLogoutPostQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AuthApiAuthLogoutPostQueryParameters.sessionIdKey_)
      String? sessionId});
}

/// @nodoc
class _$AuthApiAuthLogoutPostQueryParametersCopyWithImpl<$Res>
    implements $AuthApiAuthLogoutPostQueryParametersCopyWith<$Res> {
  _$AuthApiAuthLogoutPostQueryParametersCopyWithImpl(this._self, this._then);

  final AuthApiAuthLogoutPostQueryParameters _self;
  final $Res Function(AuthApiAuthLogoutPostQueryParameters) _then;

  /// Create a copy of AuthApiAuthLogoutPostQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
  }) {
    return _then(_self.copyWith(
      sessionId: freezed == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthApiAuthLogoutPostQueryParameters].
extension AuthApiAuthLogoutPostQueryParametersPatterns
    on AuthApiAuthLogoutPostQueryParameters {
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
    TResult Function(_AuthApiAuthLogoutPostQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthApiAuthLogoutPostQueryParameters() when $default != null:
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
    TResult Function(_AuthApiAuthLogoutPostQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthApiAuthLogoutPostQueryParameters():
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
    TResult? Function(_AuthApiAuthLogoutPostQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthApiAuthLogoutPostQueryParameters() when $default != null:
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
            @JsonKey(name: AuthApiAuthLogoutPostQueryParameters.sessionIdKey_)
            String? sessionId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthApiAuthLogoutPostQueryParameters() when $default != null:
        return $default(_that.sessionId);
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
            @JsonKey(name: AuthApiAuthLogoutPostQueryParameters.sessionIdKey_)
            String? sessionId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthApiAuthLogoutPostQueryParameters():
        return $default(_that.sessionId);
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
            @JsonKey(name: AuthApiAuthLogoutPostQueryParameters.sessionIdKey_)
            String? sessionId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthApiAuthLogoutPostQueryParameters() when $default != null:
        return $default(_that.sessionId);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _AuthApiAuthLogoutPostQueryParameters
    extends AuthApiAuthLogoutPostQueryParameters {
  const _AuthApiAuthLogoutPostQueryParameters(
      {@JsonKey(name: AuthApiAuthLogoutPostQueryParameters.sessionIdKey_)
      this.sessionId})
      : super._();
  factory _AuthApiAuthLogoutPostQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AuthApiAuthLogoutPostQueryParametersFromJson(json);

  /// sessionId
  @override
  @JsonKey(name: AuthApiAuthLogoutPostQueryParameters.sessionIdKey_)
  final String? sessionId;

  /// Create a copy of AuthApiAuthLogoutPostQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthApiAuthLogoutPostQueryParametersCopyWith<
          _AuthApiAuthLogoutPostQueryParameters>
      get copyWith => __$AuthApiAuthLogoutPostQueryParametersCopyWithImpl<
          _AuthApiAuthLogoutPostQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthApiAuthLogoutPostQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthApiAuthLogoutPostQueryParameters &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId);

  @override
  String toString() {
    return 'AuthApiAuthLogoutPostQueryParameters(sessionId: $sessionId)';
  }
}

/// @nodoc
abstract mixin class _$AuthApiAuthLogoutPostQueryParametersCopyWith<$Res>
    implements $AuthApiAuthLogoutPostQueryParametersCopyWith<$Res> {
  factory _$AuthApiAuthLogoutPostQueryParametersCopyWith(
          _AuthApiAuthLogoutPostQueryParameters value,
          $Res Function(_AuthApiAuthLogoutPostQueryParameters) _then) =
      __$AuthApiAuthLogoutPostQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AuthApiAuthLogoutPostQueryParameters.sessionIdKey_)
      String? sessionId});
}

/// @nodoc
class __$AuthApiAuthLogoutPostQueryParametersCopyWithImpl<$Res>
    implements _$AuthApiAuthLogoutPostQueryParametersCopyWith<$Res> {
  __$AuthApiAuthLogoutPostQueryParametersCopyWithImpl(this._self, this._then);

  final _AuthApiAuthLogoutPostQueryParameters _self;
  final $Res Function(_AuthApiAuthLogoutPostQueryParameters) _then;

  /// Create a copy of AuthApiAuthLogoutPostQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sessionId = freezed,
  }) {
    return _then(_AuthApiAuthLogoutPostQueryParameters(
      sessionId: freezed == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
