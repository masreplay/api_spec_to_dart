// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDto {
  /// id
  @JsonKey(name: UserDto.idKey_)
  String get id;

  /// name
  @JsonKey(name: UserDto.nameKey_)
  String get name;

  /// username
  @JsonKey(name: UserDto.usernameKey_)
  String get username;

  /// isActive
  @JsonKey(name: UserDto.isActiveKey_)
  bool get isActive;

  /// roles
  @JsonKey(name: UserDto.rolesKey_)
  List<Role> get roles;

  /// salePoints
  @JsonKey(name: UserDto.salePointsKey_)
  List<SalePointRef> get salePoints;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<UserDto> get copyWith =>
      _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other.roles, roles) &&
            const DeepCollectionEquality()
                .equals(other.salePoints, salePoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      username,
      isActive,
      const DeepCollectionEquality().hash(roles),
      const DeepCollectionEquality().hash(salePoints));

  @override
  String toString() {
    return 'UserDto(id: $id, name: $name, username: $username, isActive: $isActive, roles: $roles, salePoints: $salePoints)';
  }
}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) =
      _$UserDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UserDto.idKey_) String id,
      @JsonKey(name: UserDto.nameKey_) String name,
      @JsonKey(name: UserDto.usernameKey_) String username,
      @JsonKey(name: UserDto.isActiveKey_) bool isActive,
      @JsonKey(name: UserDto.rolesKey_) List<Role> roles,
      @JsonKey(name: UserDto.salePointsKey_) List<SalePointRef> salePoints});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? isActive = null,
    Object? roles = null,
    Object? salePoints = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      roles: null == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
      salePoints: null == salePoints
          ? _self.salePoints
          : salePoints // ignore: cast_nullable_to_non_nullable
              as List<SalePointRef>,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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
    TResult Function(_UserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
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
    TResult Function(_UserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto():
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
    TResult? Function(_UserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
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
            @JsonKey(name: UserDto.idKey_) String id,
            @JsonKey(name: UserDto.nameKey_) String name,
            @JsonKey(name: UserDto.usernameKey_) String username,
            @JsonKey(name: UserDto.isActiveKey_) bool isActive,
            @JsonKey(name: UserDto.rolesKey_) List<Role> roles,
            @JsonKey(name: UserDto.salePointsKey_)
            List<SalePointRef> salePoints)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
        return $default(_that.id, _that.name, _that.username, _that.isActive,
            _that.roles, _that.salePoints);
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
            @JsonKey(name: UserDto.idKey_) String id,
            @JsonKey(name: UserDto.nameKey_) String name,
            @JsonKey(name: UserDto.usernameKey_) String username,
            @JsonKey(name: UserDto.isActiveKey_) bool isActive,
            @JsonKey(name: UserDto.rolesKey_) List<Role> roles,
            @JsonKey(name: UserDto.salePointsKey_)
            List<SalePointRef> salePoints)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto():
        return $default(_that.id, _that.name, _that.username, _that.isActive,
            _that.roles, _that.salePoints);
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
            @JsonKey(name: UserDto.idKey_) String id,
            @JsonKey(name: UserDto.nameKey_) String name,
            @JsonKey(name: UserDto.usernameKey_) String username,
            @JsonKey(name: UserDto.isActiveKey_) bool isActive,
            @JsonKey(name: UserDto.rolesKey_) List<Role> roles,
            @JsonKey(name: UserDto.salePointsKey_)
            List<SalePointRef> salePoints)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserDto() when $default != null:
        return $default(_that.id, _that.name, _that.username, _that.isActive,
            _that.roles, _that.salePoints);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UserDto extends UserDto {
  const _UserDto(
      {@JsonKey(name: UserDto.idKey_) required this.id,
      @JsonKey(name: UserDto.nameKey_) required this.name,
      @JsonKey(name: UserDto.usernameKey_) required this.username,
      @JsonKey(name: UserDto.isActiveKey_) required this.isActive,
      @JsonKey(name: UserDto.rolesKey_) required final List<Role> roles,
      @JsonKey(name: UserDto.salePointsKey_)
      required final List<SalePointRef> salePoints})
      : _roles = roles,
        _salePoints = salePoints,
        super._();
  factory _UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: UserDto.idKey_)
  final String id;

  /// name
  @override
  @JsonKey(name: UserDto.nameKey_)
  final String name;

  /// username
  @override
  @JsonKey(name: UserDto.usernameKey_)
  final String username;

  /// isActive
  @override
  @JsonKey(name: UserDto.isActiveKey_)
  final bool isActive;

  /// roles
  final List<Role> _roles;

  /// roles
  @override
  @JsonKey(name: UserDto.rolesKey_)
  List<Role> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  /// salePoints
  final List<SalePointRef> _salePoints;

  /// salePoints
  @override
  @JsonKey(name: UserDto.salePointsKey_)
  List<SalePointRef> get salePoints {
    if (_salePoints is EqualUnmodifiableListView) return _salePoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salePoints);
  }

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality()
                .equals(other._salePoints, _salePoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      username,
      isActive,
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(_salePoints));

  @override
  String toString() {
    return 'UserDto(id: $id, name: $name, username: $username, isActive: $isActive, roles: $roles, salePoints: $salePoints)';
  }
}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) =
      __$UserDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserDto.idKey_) String id,
      @JsonKey(name: UserDto.nameKey_) String name,
      @JsonKey(name: UserDto.usernameKey_) String username,
      @JsonKey(name: UserDto.isActiveKey_) bool isActive,
      @JsonKey(name: UserDto.rolesKey_) List<Role> roles,
      @JsonKey(name: UserDto.salePointsKey_) List<SalePointRef> salePoints});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? isActive = null,
    Object? roles = null,
    Object? salePoints = null,
  }) {
    return _then(_UserDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      roles: null == roles
          ? _self._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
      salePoints: null == salePoints
          ? _self._salePoints
          : salePoints // ignore: cast_nullable_to_non_nullable
              as List<SalePointRef>,
    ));
  }
}
