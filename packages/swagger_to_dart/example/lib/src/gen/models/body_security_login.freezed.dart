// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_security_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodySecurityLogin {
  /// grantType
  @JsonKey(name: BodySecurityLogin.grantTypeKey)
  String? get grantType;

  /// username
  @JsonKey(name: BodySecurityLogin.usernameKey)
  String get username;

  /// password
  @JsonKey(name: BodySecurityLogin.passwordKey)
  String get password;

  /// scope
  @JsonKey(name: BodySecurityLogin.scopeKey)
  String get scope;

  /// clientId
  @JsonKey(name: BodySecurityLogin.clientIdKey)
  String? get clientId;

  /// clientSecret
  @JsonKey(name: BodySecurityLogin.clientSecretKey)
  String? get clientSecret;

  /// Create a copy of BodySecurityLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodySecurityLoginCopyWith<BodySecurityLogin> get copyWith =>
      _$BodySecurityLoginCopyWithImpl<BodySecurityLogin>(
          this as BodySecurityLogin, _$identity);

  /// Serializes this BodySecurityLogin to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodySecurityLogin &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, grantType, username, password,
      scope, clientId, clientSecret);

  @override
  String toString() {
    return 'BodySecurityLogin(grantType: $grantType, username: $username, password: $password, scope: $scope, clientId: $clientId, clientSecret: $clientSecret)';
  }
}

/// @nodoc
abstract mixin class $BodySecurityLoginCopyWith<$Res> {
  factory $BodySecurityLoginCopyWith(
          BodySecurityLogin value, $Res Function(BodySecurityLogin) _then) =
      _$BodySecurityLoginCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: BodySecurityLogin.grantTypeKey) String? grantType,
      @JsonKey(name: BodySecurityLogin.usernameKey) String username,
      @JsonKey(name: BodySecurityLogin.passwordKey) String password,
      @JsonKey(name: BodySecurityLogin.scopeKey) String scope,
      @JsonKey(name: BodySecurityLogin.clientIdKey) String? clientId,
      @JsonKey(name: BodySecurityLogin.clientSecretKey) String? clientSecret});
}

/// @nodoc
class _$BodySecurityLoginCopyWithImpl<$Res>
    implements $BodySecurityLoginCopyWith<$Res> {
  _$BodySecurityLoginCopyWithImpl(this._self, this._then);

  final BodySecurityLogin _self;
  final $Res Function(BodySecurityLogin) _then;

  /// Create a copy of BodySecurityLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = freezed,
    Object? username = null,
    Object? password = null,
    Object? scope = null,
    Object? clientId = freezed,
    Object? clientSecret = freezed,
  }) {
    return _then(_self.copyWith(
      grantType: freezed == grantType
          ? _self.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _self.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: freezed == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientSecret: freezed == clientSecret
          ? _self.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BodySecurityLogin].
extension BodySecurityLoginPatterns on BodySecurityLogin {
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
    TResult Function(_BodySecurityLogin value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodySecurityLogin() when $default != null:
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
    TResult Function(_BodySecurityLogin value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodySecurityLogin():
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
    TResult? Function(_BodySecurityLogin value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodySecurityLogin() when $default != null:
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
            @JsonKey(name: BodySecurityLogin.grantTypeKey) String? grantType,
            @JsonKey(name: BodySecurityLogin.usernameKey) String username,
            @JsonKey(name: BodySecurityLogin.passwordKey) String password,
            @JsonKey(name: BodySecurityLogin.scopeKey) String scope,
            @JsonKey(name: BodySecurityLogin.clientIdKey) String? clientId,
            @JsonKey(name: BodySecurityLogin.clientSecretKey)
            String? clientSecret)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodySecurityLogin() when $default != null:
        return $default(_that.grantType, _that.username, _that.password,
            _that.scope, _that.clientId, _that.clientSecret);
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
            @JsonKey(name: BodySecurityLogin.grantTypeKey) String? grantType,
            @JsonKey(name: BodySecurityLogin.usernameKey) String username,
            @JsonKey(name: BodySecurityLogin.passwordKey) String password,
            @JsonKey(name: BodySecurityLogin.scopeKey) String scope,
            @JsonKey(name: BodySecurityLogin.clientIdKey) String? clientId,
            @JsonKey(name: BodySecurityLogin.clientSecretKey)
            String? clientSecret)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodySecurityLogin():
        return $default(_that.grantType, _that.username, _that.password,
            _that.scope, _that.clientId, _that.clientSecret);
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
            @JsonKey(name: BodySecurityLogin.grantTypeKey) String? grantType,
            @JsonKey(name: BodySecurityLogin.usernameKey) String username,
            @JsonKey(name: BodySecurityLogin.passwordKey) String password,
            @JsonKey(name: BodySecurityLogin.scopeKey) String scope,
            @JsonKey(name: BodySecurityLogin.clientIdKey) String? clientId,
            @JsonKey(name: BodySecurityLogin.clientSecretKey)
            String? clientSecret)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodySecurityLogin() when $default != null:
        return $default(_that.grantType, _that.username, _that.password,
            _that.scope, _that.clientId, _that.clientSecret);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _BodySecurityLogin extends BodySecurityLogin {
  const _BodySecurityLogin(
      {@JsonKey(name: BodySecurityLogin.grantTypeKey) required this.grantType,
      @JsonKey(name: BodySecurityLogin.usernameKey) required this.username,
      @JsonKey(name: BodySecurityLogin.passwordKey) required this.password,
      @JsonKey(name: BodySecurityLogin.scopeKey) this.scope = '',
      @JsonKey(name: BodySecurityLogin.clientIdKey) required this.clientId,
      @JsonKey(name: BodySecurityLogin.clientSecretKey)
      required this.clientSecret})
      : super._();
  factory _BodySecurityLogin.fromJson(Map<String, dynamic> json) =>
      _$BodySecurityLoginFromJson(json);

  /// grantType
  @override
  @JsonKey(name: BodySecurityLogin.grantTypeKey)
  final String? grantType;

  /// username
  @override
  @JsonKey(name: BodySecurityLogin.usernameKey)
  final String username;

  /// password
  @override
  @JsonKey(name: BodySecurityLogin.passwordKey)
  final String password;

  /// scope
  @override
  @JsonKey(name: BodySecurityLogin.scopeKey)
  final String scope;

  /// clientId
  @override
  @JsonKey(name: BodySecurityLogin.clientIdKey)
  final String? clientId;

  /// clientSecret
  @override
  @JsonKey(name: BodySecurityLogin.clientSecretKey)
  final String? clientSecret;

  /// Create a copy of BodySecurityLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodySecurityLoginCopyWith<_BodySecurityLogin> get copyWith =>
      __$BodySecurityLoginCopyWithImpl<_BodySecurityLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodySecurityLoginToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodySecurityLogin &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, grantType, username, password,
      scope, clientId, clientSecret);

  @override
  String toString() {
    return 'BodySecurityLogin(grantType: $grantType, username: $username, password: $password, scope: $scope, clientId: $clientId, clientSecret: $clientSecret)';
  }
}

/// @nodoc
abstract mixin class _$BodySecurityLoginCopyWith<$Res>
    implements $BodySecurityLoginCopyWith<$Res> {
  factory _$BodySecurityLoginCopyWith(
          _BodySecurityLogin value, $Res Function(_BodySecurityLogin) _then) =
      __$BodySecurityLoginCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BodySecurityLogin.grantTypeKey) String? grantType,
      @JsonKey(name: BodySecurityLogin.usernameKey) String username,
      @JsonKey(name: BodySecurityLogin.passwordKey) String password,
      @JsonKey(name: BodySecurityLogin.scopeKey) String scope,
      @JsonKey(name: BodySecurityLogin.clientIdKey) String? clientId,
      @JsonKey(name: BodySecurityLogin.clientSecretKey) String? clientSecret});
}

/// @nodoc
class __$BodySecurityLoginCopyWithImpl<$Res>
    implements _$BodySecurityLoginCopyWith<$Res> {
  __$BodySecurityLoginCopyWithImpl(this._self, this._then);

  final _BodySecurityLogin _self;
  final $Res Function(_BodySecurityLogin) _then;

  /// Create a copy of BodySecurityLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? grantType = freezed,
    Object? username = null,
    Object? password = null,
    Object? scope = null,
    Object? clientId = freezed,
    Object? clientSecret = freezed,
  }) {
    return _then(_BodySecurityLogin(
      grantType: freezed == grantType
          ? _self.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _self.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: freezed == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientSecret: freezed == clientSecret
          ? _self.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
