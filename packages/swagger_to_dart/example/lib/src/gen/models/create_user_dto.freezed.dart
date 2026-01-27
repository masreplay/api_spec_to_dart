// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateUserDto {
  /// username
  @JsonKey(name: CreateUserDto.usernameKey_)
  String get username;

  /// name
  @JsonKey(name: CreateUserDto.nameKey_)
  String get name;

  /// password
  @JsonKey(name: CreateUserDto.passwordKey_)
  String get password;

  /// roles
  @JsonKey(name: CreateUserDto.rolesKey_)
  List<Role> get roles;

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateUserDtoCopyWith<CreateUserDto> get copyWith =>
      _$CreateUserDtoCopyWithImpl<CreateUserDto>(
          this as CreateUserDto, _$identity);

  /// Serializes this CreateUserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateUserDto &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other.roles, roles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, name, password,
      const DeepCollectionEquality().hash(roles));

  @override
  String toString() {
    return 'CreateUserDto(username: $username, name: $name, password: $password, roles: $roles)';
  }
}

/// @nodoc
abstract mixin class $CreateUserDtoCopyWith<$Res> {
  factory $CreateUserDtoCopyWith(
          CreateUserDto value, $Res Function(CreateUserDto) _then) =
      _$CreateUserDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreateUserDto.usernameKey_) String username,
      @JsonKey(name: CreateUserDto.nameKey_) String name,
      @JsonKey(name: CreateUserDto.passwordKey_) String password,
      @JsonKey(name: CreateUserDto.rolesKey_) List<Role> roles});
}

/// @nodoc
class _$CreateUserDtoCopyWithImpl<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  _$CreateUserDtoCopyWithImpl(this._self, this._then);

  final CreateUserDto _self;
  final $Res Function(CreateUserDto) _then;

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? name = null,
    Object? password = null,
    Object? roles = null,
  }) {
    return _then(_self.copyWith(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateUserDto].
extension CreateUserDtoPatterns on CreateUserDto {
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
    TResult Function(_CreateUserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateUserDto() when $default != null:
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
    TResult Function(_CreateUserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateUserDto():
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
    TResult? Function(_CreateUserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateUserDto() when $default != null:
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
            @JsonKey(name: CreateUserDto.usernameKey_) String username,
            @JsonKey(name: CreateUserDto.nameKey_) String name,
            @JsonKey(name: CreateUserDto.passwordKey_) String password,
            @JsonKey(name: CreateUserDto.rolesKey_) List<Role> roles)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateUserDto() when $default != null:
        return $default(
            _that.username, _that.name, _that.password, _that.roles);
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
            @JsonKey(name: CreateUserDto.usernameKey_) String username,
            @JsonKey(name: CreateUserDto.nameKey_) String name,
            @JsonKey(name: CreateUserDto.passwordKey_) String password,
            @JsonKey(name: CreateUserDto.rolesKey_) List<Role> roles)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateUserDto():
        return $default(
            _that.username, _that.name, _that.password, _that.roles);
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
            @JsonKey(name: CreateUserDto.usernameKey_) String username,
            @JsonKey(name: CreateUserDto.nameKey_) String name,
            @JsonKey(name: CreateUserDto.passwordKey_) String password,
            @JsonKey(name: CreateUserDto.rolesKey_) List<Role> roles)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateUserDto() when $default != null:
        return $default(
            _that.username, _that.name, _that.password, _that.roles);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CreateUserDto extends CreateUserDto {
  const _CreateUserDto(
      {@JsonKey(name: CreateUserDto.usernameKey_) required this.username,
      @JsonKey(name: CreateUserDto.nameKey_) required this.name,
      @JsonKey(name: CreateUserDto.passwordKey_) required this.password,
      @JsonKey(name: CreateUserDto.rolesKey_) required final List<Role> roles})
      : _roles = roles,
        super._();
  factory _CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserDtoFromJson(json);

  /// username
  @override
  @JsonKey(name: CreateUserDto.usernameKey_)
  final String username;

  /// name
  @override
  @JsonKey(name: CreateUserDto.nameKey_)
  final String name;

  /// password
  @override
  @JsonKey(name: CreateUserDto.passwordKey_)
  final String password;

  /// roles
  final List<Role> _roles;

  /// roles
  @override
  @JsonKey(name: CreateUserDto.rolesKey_)
  List<Role> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateUserDtoCopyWith<_CreateUserDto> get copyWith =>
      __$CreateUserDtoCopyWithImpl<_CreateUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateUserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateUserDto &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, name, password,
      const DeepCollectionEquality().hash(_roles));

  @override
  String toString() {
    return 'CreateUserDto(username: $username, name: $name, password: $password, roles: $roles)';
  }
}

/// @nodoc
abstract mixin class _$CreateUserDtoCopyWith<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  factory _$CreateUserDtoCopyWith(
          _CreateUserDto value, $Res Function(_CreateUserDto) _then) =
      __$CreateUserDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreateUserDto.usernameKey_) String username,
      @JsonKey(name: CreateUserDto.nameKey_) String name,
      @JsonKey(name: CreateUserDto.passwordKey_) String password,
      @JsonKey(name: CreateUserDto.rolesKey_) List<Role> roles});
}

/// @nodoc
class __$CreateUserDtoCopyWithImpl<$Res>
    implements _$CreateUserDtoCopyWith<$Res> {
  __$CreateUserDtoCopyWithImpl(this._self, this._then);

  final _CreateUserDto _self;
  final $Res Function(_CreateUserDto) _then;

  /// Create a copy of CreateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? name = null,
    Object? password = null,
    Object? roles = null,
  }) {
    return _then(_CreateUserDto(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _self._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
    ));
  }
}
