// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserCreate {
  /// username
  @JsonKey(name: UserCreate.usernameKey_)
  String get username;

  /// email
  @JsonKey(name: UserCreate.emailKey_)
  String get email;

  /// fullName
  @JsonKey(name: UserCreate.fullNameKey_)
  String? get fullName;

  /// password
  @JsonKey(name: UserCreate.passwordKey_)
  String get password;

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCreateCopyWith<UserCreate> get copyWith =>
      _$UserCreateCopyWithImpl<UserCreate>(this as UserCreate, _$identity);

  /// Serializes this UserCreate to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserCreate &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, fullName, password);

  @override
  String toString() {
    return 'UserCreate(username: $username, email: $email, fullName: $fullName, password: $password)';
  }
}

/// @nodoc
abstract mixin class $UserCreateCopyWith<$Res> {
  factory $UserCreateCopyWith(
          UserCreate value, $Res Function(UserCreate) _then) =
      _$UserCreateCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UserCreate.usernameKey_) String username,
      @JsonKey(name: UserCreate.emailKey_) String email,
      @JsonKey(name: UserCreate.fullNameKey_) String? fullName,
      @JsonKey(name: UserCreate.passwordKey_) String password});
}

/// @nodoc
class _$UserCreateCopyWithImpl<$Res> implements $UserCreateCopyWith<$Res> {
  _$UserCreateCopyWithImpl(this._self, this._then);

  final UserCreate _self;
  final $Res Function(UserCreate) _then;

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? fullName = freezed,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserCreate].
extension UserCreatePatterns on UserCreate {
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
    TResult Function(_UserCreate value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserCreate() when $default != null:
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
    TResult Function(_UserCreate value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserCreate():
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
    TResult? Function(_UserCreate value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserCreate() when $default != null:
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
            @JsonKey(name: UserCreate.usernameKey_) String username,
            @JsonKey(name: UserCreate.emailKey_) String email,
            @JsonKey(name: UserCreate.fullNameKey_) String? fullName,
            @JsonKey(name: UserCreate.passwordKey_) String password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserCreate() when $default != null:
        return $default(
            _that.username, _that.email, _that.fullName, _that.password);
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
            @JsonKey(name: UserCreate.usernameKey_) String username,
            @JsonKey(name: UserCreate.emailKey_) String email,
            @JsonKey(name: UserCreate.fullNameKey_) String? fullName,
            @JsonKey(name: UserCreate.passwordKey_) String password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserCreate():
        return $default(
            _that.username, _that.email, _that.fullName, _that.password);
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
            @JsonKey(name: UserCreate.usernameKey_) String username,
            @JsonKey(name: UserCreate.emailKey_) String email,
            @JsonKey(name: UserCreate.fullNameKey_) String? fullName,
            @JsonKey(name: UserCreate.passwordKey_) String password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserCreate() when $default != null:
        return $default(
            _that.username, _that.email, _that.fullName, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UserCreate extends UserCreate {
  const _UserCreate(
      {@JsonKey(name: UserCreate.usernameKey_) required this.username,
      @JsonKey(name: UserCreate.emailKey_) required this.email,
      @JsonKey(name: UserCreate.fullNameKey_) this.fullName,
      @JsonKey(name: UserCreate.passwordKey_) required this.password})
      : super._();
  factory _UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);

  /// username
  @override
  @JsonKey(name: UserCreate.usernameKey_)
  final String username;

  /// email
  @override
  @JsonKey(name: UserCreate.emailKey_)
  final String email;

  /// fullName
  @override
  @JsonKey(name: UserCreate.fullNameKey_)
  final String? fullName;

  /// password
  @override
  @JsonKey(name: UserCreate.passwordKey_)
  final String password;

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCreateCopyWith<_UserCreate> get copyWith =>
      __$UserCreateCopyWithImpl<_UserCreate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserCreateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserCreate &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, fullName, password);

  @override
  String toString() {
    return 'UserCreate(username: $username, email: $email, fullName: $fullName, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$UserCreateCopyWith<$Res>
    implements $UserCreateCopyWith<$Res> {
  factory _$UserCreateCopyWith(
          _UserCreate value, $Res Function(_UserCreate) _then) =
      __$UserCreateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserCreate.usernameKey_) String username,
      @JsonKey(name: UserCreate.emailKey_) String email,
      @JsonKey(name: UserCreate.fullNameKey_) String? fullName,
      @JsonKey(name: UserCreate.passwordKey_) String password});
}

/// @nodoc
class __$UserCreateCopyWithImpl<$Res> implements _$UserCreateCopyWith<$Res> {
  __$UserCreateCopyWithImpl(this._self, this._then);

  final _UserCreate _self;
  final $Res Function(_UserCreate) _then;

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? fullName = freezed,
    Object? password = null,
  }) {
    return _then(_UserCreate(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
