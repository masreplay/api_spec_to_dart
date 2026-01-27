// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResultDto {
  /// credentials
  @JsonKey(name: LoginResultDto.credentialsKey_)
  CredentialsDto get credentials;

  /// user
  @JsonKey(name: LoginResultDto.userKey_)
  UserDto get user;

  /// Create a copy of LoginResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginResultDtoCopyWith<LoginResultDto> get copyWith =>
      _$LoginResultDtoCopyWithImpl<LoginResultDto>(
          this as LoginResultDto, _$identity);

  /// Serializes this LoginResultDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginResultDto &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, credentials, user);

  @override
  String toString() {
    return 'LoginResultDto(credentials: $credentials, user: $user)';
  }
}

/// @nodoc
abstract mixin class $LoginResultDtoCopyWith<$Res> {
  factory $LoginResultDtoCopyWith(
          LoginResultDto value, $Res Function(LoginResultDto) _then) =
      _$LoginResultDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: LoginResultDto.credentialsKey_)
      CredentialsDto credentials,
      @JsonKey(name: LoginResultDto.userKey_) UserDto user});

  $CredentialsDtoCopyWith<$Res> get credentials;
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginResultDtoCopyWithImpl<$Res>
    implements $LoginResultDtoCopyWith<$Res> {
  _$LoginResultDtoCopyWithImpl(this._self, this._then);

  final LoginResultDto _self;
  final $Res Function(LoginResultDto) _then;

  /// Create a copy of LoginResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = null,
    Object? user = null,
  }) {
    return _then(_self.copyWith(
      credentials: null == credentials
          ? _self.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as CredentialsDto,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }

  /// Create a copy of LoginResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialsDtoCopyWith<$Res> get credentials {
    return $CredentialsDtoCopyWith<$Res>(_self.credentials, (value) {
      return _then(_self.copyWith(credentials: value));
    });
  }

  /// Create a copy of LoginResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [LoginResultDto].
extension LoginResultDtoPatterns on LoginResultDto {
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
    TResult Function(_LoginResultDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginResultDto() when $default != null:
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
    TResult Function(_LoginResultDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResultDto():
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
    TResult? Function(_LoginResultDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResultDto() when $default != null:
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
            @JsonKey(name: LoginResultDto.credentialsKey_)
            CredentialsDto credentials,
            @JsonKey(name: LoginResultDto.userKey_) UserDto user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginResultDto() when $default != null:
        return $default(_that.credentials, _that.user);
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
            @JsonKey(name: LoginResultDto.credentialsKey_)
            CredentialsDto credentials,
            @JsonKey(name: LoginResultDto.userKey_) UserDto user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResultDto():
        return $default(_that.credentials, _that.user);
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
            @JsonKey(name: LoginResultDto.credentialsKey_)
            CredentialsDto credentials,
            @JsonKey(name: LoginResultDto.userKey_) UserDto user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginResultDto() when $default != null:
        return $default(_that.credentials, _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _LoginResultDto extends LoginResultDto {
  const _LoginResultDto(
      {@JsonKey(name: LoginResultDto.credentialsKey_) required this.credentials,
      @JsonKey(name: LoginResultDto.userKey_) required this.user})
      : super._();
  factory _LoginResultDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResultDtoFromJson(json);

  /// credentials
  @override
  @JsonKey(name: LoginResultDto.credentialsKey_)
  final CredentialsDto credentials;

  /// user
  @override
  @JsonKey(name: LoginResultDto.userKey_)
  final UserDto user;

  /// Create a copy of LoginResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginResultDtoCopyWith<_LoginResultDto> get copyWith =>
      __$LoginResultDtoCopyWithImpl<_LoginResultDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginResultDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResultDto &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, credentials, user);

  @override
  String toString() {
    return 'LoginResultDto(credentials: $credentials, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$LoginResultDtoCopyWith<$Res>
    implements $LoginResultDtoCopyWith<$Res> {
  factory _$LoginResultDtoCopyWith(
          _LoginResultDto value, $Res Function(_LoginResultDto) _then) =
      __$LoginResultDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: LoginResultDto.credentialsKey_)
      CredentialsDto credentials,
      @JsonKey(name: LoginResultDto.userKey_) UserDto user});

  @override
  $CredentialsDtoCopyWith<$Res> get credentials;
  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$LoginResultDtoCopyWithImpl<$Res>
    implements _$LoginResultDtoCopyWith<$Res> {
  __$LoginResultDtoCopyWithImpl(this._self, this._then);

  final _LoginResultDto _self;
  final $Res Function(_LoginResultDto) _then;

  /// Create a copy of LoginResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? credentials = null,
    Object? user = null,
  }) {
    return _then(_LoginResultDto(
      credentials: null == credentials
          ? _self.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as CredentialsDto,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }

  /// Create a copy of LoginResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialsDtoCopyWith<$Res> get credentials {
    return $CredentialsDtoCopyWith<$Res>(_self.credentials, (value) {
      return _then(_self.copyWith(credentials: value));
    });
  }

  /// Create a copy of LoginResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}
