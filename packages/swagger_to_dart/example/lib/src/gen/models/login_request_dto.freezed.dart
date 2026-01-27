// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginRequestDto {
  /// username
  @JsonKey(name: LoginRequestDto.usernameKey_)
  String get username;

  /// password
  @JsonKey(name: LoginRequestDto.passwordKey_)
  String get password;

  /// Create a copy of LoginRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginRequestDtoCopyWith<LoginRequestDto> get copyWith =>
      _$LoginRequestDtoCopyWithImpl<LoginRequestDto>(
          this as LoginRequestDto, _$identity);

  /// Serializes this LoginRequestDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginRequestDto &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @override
  String toString() {
    return 'LoginRequestDto(username: $username, password: $password)';
  }
}

/// @nodoc
abstract mixin class $LoginRequestDtoCopyWith<$Res> {
  factory $LoginRequestDtoCopyWith(
          LoginRequestDto value, $Res Function(LoginRequestDto) _then) =
      _$LoginRequestDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: LoginRequestDto.usernameKey_) String username,
      @JsonKey(name: LoginRequestDto.passwordKey_) String password});
}

/// @nodoc
class _$LoginRequestDtoCopyWithImpl<$Res>
    implements $LoginRequestDtoCopyWith<$Res> {
  _$LoginRequestDtoCopyWithImpl(this._self, this._then);

  final LoginRequestDto _self;
  final $Res Function(LoginRequestDto) _then;

  /// Create a copy of LoginRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [LoginRequestDto].
extension LoginRequestDtoPatterns on LoginRequestDto {
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
    TResult Function(_LoginRequestDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginRequestDto() when $default != null:
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
    TResult Function(_LoginRequestDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginRequestDto():
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
    TResult? Function(_LoginRequestDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginRequestDto() when $default != null:
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
            @JsonKey(name: LoginRequestDto.usernameKey_) String username,
            @JsonKey(name: LoginRequestDto.passwordKey_) String password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginRequestDto() when $default != null:
        return $default(_that.username, _that.password);
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
            @JsonKey(name: LoginRequestDto.usernameKey_) String username,
            @JsonKey(name: LoginRequestDto.passwordKey_) String password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginRequestDto():
        return $default(_that.username, _that.password);
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
            @JsonKey(name: LoginRequestDto.usernameKey_) String username,
            @JsonKey(name: LoginRequestDto.passwordKey_) String password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginRequestDto() when $default != null:
        return $default(_that.username, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _LoginRequestDto extends LoginRequestDto {
  const _LoginRequestDto(
      {@JsonKey(name: LoginRequestDto.usernameKey_) required this.username,
      @JsonKey(name: LoginRequestDto.passwordKey_) required this.password})
      : super._();
  factory _LoginRequestDto.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestDtoFromJson(json);

  /// username
  @override
  @JsonKey(name: LoginRequestDto.usernameKey_)
  final String username;

  /// password
  @override
  @JsonKey(name: LoginRequestDto.passwordKey_)
  final String password;

  /// Create a copy of LoginRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginRequestDtoCopyWith<_LoginRequestDto> get copyWith =>
      __$LoginRequestDtoCopyWithImpl<_LoginRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginRequestDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginRequestDto &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @override
  String toString() {
    return 'LoginRequestDto(username: $username, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$LoginRequestDtoCopyWith<$Res>
    implements $LoginRequestDtoCopyWith<$Res> {
  factory _$LoginRequestDtoCopyWith(
          _LoginRequestDto value, $Res Function(_LoginRequestDto) _then) =
      __$LoginRequestDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: LoginRequestDto.usernameKey_) String username,
      @JsonKey(name: LoginRequestDto.passwordKey_) String password});
}

/// @nodoc
class __$LoginRequestDtoCopyWithImpl<$Res>
    implements _$LoginRequestDtoCopyWith<$Res> {
  __$LoginRequestDtoCopyWithImpl(this._self, this._then);

  final _LoginRequestDto _self;
  final $Res Function(_LoginRequestDto) _then;

  /// Create a copy of LoginRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_LoginRequestDto(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
