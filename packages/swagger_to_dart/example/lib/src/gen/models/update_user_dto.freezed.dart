// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserDto {
  /// name
  @JsonKey(name: UpdateUserDto.nameKey_)
  String? get name;

  /// roles
  @JsonKey(name: UpdateUserDto.rolesKey_)
  List<Role>? get roles;

  /// isActive
  @JsonKey(name: UpdateUserDto.isActiveKey_)
  bool? get isActive;

  /// newPassword
  @JsonKey(name: UpdateUserDto.newPasswordKey_)
  String? get newPassword;

  /// salePointsId
  @JsonKey(name: UpdateUserDto.salePointsIdKey_)
  List<String>? get salePointsId;

  /// Create a copy of UpdateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateUserDtoCopyWith<UpdateUserDto> get copyWith =>
      _$UpdateUserDtoCopyWithImpl<UpdateUserDto>(
          this as UpdateUserDto, _$identity);

  /// Serializes this UpdateUserDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateUserDto &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.roles, roles) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            const DeepCollectionEquality()
                .equals(other.salePointsId, salePointsId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(roles),
      isActive,
      newPassword,
      const DeepCollectionEquality().hash(salePointsId));

  @override
  String toString() {
    return 'UpdateUserDto(name: $name, roles: $roles, isActive: $isActive, newPassword: $newPassword, salePointsId: $salePointsId)';
  }
}

/// @nodoc
abstract mixin class $UpdateUserDtoCopyWith<$Res> {
  factory $UpdateUserDtoCopyWith(
          UpdateUserDto value, $Res Function(UpdateUserDto) _then) =
      _$UpdateUserDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UpdateUserDto.nameKey_) String? name,
      @JsonKey(name: UpdateUserDto.rolesKey_) List<Role>? roles,
      @JsonKey(name: UpdateUserDto.isActiveKey_) bool? isActive,
      @JsonKey(name: UpdateUserDto.newPasswordKey_) String? newPassword,
      @JsonKey(name: UpdateUserDto.salePointsIdKey_)
      List<String>? salePointsId});
}

/// @nodoc
class _$UpdateUserDtoCopyWithImpl<$Res>
    implements $UpdateUserDtoCopyWith<$Res> {
  _$UpdateUserDtoCopyWithImpl(this._self, this._then);

  final UpdateUserDto _self;
  final $Res Function(UpdateUserDto) _then;

  /// Create a copy of UpdateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? roles = freezed,
    Object? isActive = freezed,
    Object? newPassword = freezed,
    Object? salePointsId = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      newPassword: freezed == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      salePointsId: freezed == salePointsId
          ? _self.salePointsId
          : salePointsId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateUserDto].
extension UpdateUserDtoPatterns on UpdateUserDto {
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
    TResult Function(_UpdateUserDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateUserDto() when $default != null:
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
    TResult Function(_UpdateUserDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserDto():
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
    TResult? Function(_UpdateUserDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserDto() when $default != null:
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
            @JsonKey(name: UpdateUserDto.nameKey_) String? name,
            @JsonKey(name: UpdateUserDto.rolesKey_) List<Role>? roles,
            @JsonKey(name: UpdateUserDto.isActiveKey_) bool? isActive,
            @JsonKey(name: UpdateUserDto.newPasswordKey_) String? newPassword,
            @JsonKey(name: UpdateUserDto.salePointsIdKey_)
            List<String>? salePointsId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateUserDto() when $default != null:
        return $default(_that.name, _that.roles, _that.isActive,
            _that.newPassword, _that.salePointsId);
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
            @JsonKey(name: UpdateUserDto.nameKey_) String? name,
            @JsonKey(name: UpdateUserDto.rolesKey_) List<Role>? roles,
            @JsonKey(name: UpdateUserDto.isActiveKey_) bool? isActive,
            @JsonKey(name: UpdateUserDto.newPasswordKey_) String? newPassword,
            @JsonKey(name: UpdateUserDto.salePointsIdKey_)
            List<String>? salePointsId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserDto():
        return $default(_that.name, _that.roles, _that.isActive,
            _that.newPassword, _that.salePointsId);
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
            @JsonKey(name: UpdateUserDto.nameKey_) String? name,
            @JsonKey(name: UpdateUserDto.rolesKey_) List<Role>? roles,
            @JsonKey(name: UpdateUserDto.isActiveKey_) bool? isActive,
            @JsonKey(name: UpdateUserDto.newPasswordKey_) String? newPassword,
            @JsonKey(name: UpdateUserDto.salePointsIdKey_)
            List<String>? salePointsId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateUserDto() when $default != null:
        return $default(_that.name, _that.roles, _that.isActive,
            _that.newPassword, _that.salePointsId);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UpdateUserDto extends UpdateUserDto {
  const _UpdateUserDto(
      {@JsonKey(name: UpdateUserDto.nameKey_) this.name,
      @JsonKey(name: UpdateUserDto.rolesKey_) final List<Role>? roles,
      @JsonKey(name: UpdateUserDto.isActiveKey_) this.isActive,
      @JsonKey(name: UpdateUserDto.newPasswordKey_) this.newPassword,
      @JsonKey(name: UpdateUserDto.salePointsIdKey_)
      final List<String>? salePointsId})
      : _roles = roles,
        _salePointsId = salePointsId,
        super._();
  factory _UpdateUserDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: UpdateUserDto.nameKey_)
  final String? name;

  /// roles
  final List<Role>? _roles;

  /// roles
  @override
  @JsonKey(name: UpdateUserDto.rolesKey_)
  List<Role>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// isActive
  @override
  @JsonKey(name: UpdateUserDto.isActiveKey_)
  final bool? isActive;

  /// newPassword
  @override
  @JsonKey(name: UpdateUserDto.newPasswordKey_)
  final String? newPassword;

  /// salePointsId
  final List<String>? _salePointsId;

  /// salePointsId
  @override
  @JsonKey(name: UpdateUserDto.salePointsIdKey_)
  List<String>? get salePointsId {
    final value = _salePointsId;
    if (value == null) return null;
    if (_salePointsId is EqualUnmodifiableListView) return _salePointsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of UpdateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateUserDtoCopyWith<_UpdateUserDto> get copyWith =>
      __$UpdateUserDtoCopyWithImpl<_UpdateUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateUserDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserDto &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            const DeepCollectionEquality()
                .equals(other._salePointsId, _salePointsId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_roles),
      isActive,
      newPassword,
      const DeepCollectionEquality().hash(_salePointsId));

  @override
  String toString() {
    return 'UpdateUserDto(name: $name, roles: $roles, isActive: $isActive, newPassword: $newPassword, salePointsId: $salePointsId)';
  }
}

/// @nodoc
abstract mixin class _$UpdateUserDtoCopyWith<$Res>
    implements $UpdateUserDtoCopyWith<$Res> {
  factory _$UpdateUserDtoCopyWith(
          _UpdateUserDto value, $Res Function(_UpdateUserDto) _then) =
      __$UpdateUserDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdateUserDto.nameKey_) String? name,
      @JsonKey(name: UpdateUserDto.rolesKey_) List<Role>? roles,
      @JsonKey(name: UpdateUserDto.isActiveKey_) bool? isActive,
      @JsonKey(name: UpdateUserDto.newPasswordKey_) String? newPassword,
      @JsonKey(name: UpdateUserDto.salePointsIdKey_)
      List<String>? salePointsId});
}

/// @nodoc
class __$UpdateUserDtoCopyWithImpl<$Res>
    implements _$UpdateUserDtoCopyWith<$Res> {
  __$UpdateUserDtoCopyWithImpl(this._self, this._then);

  final _UpdateUserDto _self;
  final $Res Function(_UpdateUserDto) _then;

  /// Create a copy of UpdateUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? roles = freezed,
    Object? isActive = freezed,
    Object? newPassword = freezed,
    Object? salePointsId = freezed,
  }) {
    return _then(_UpdateUserDto(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _self._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>?,
      isActive: freezed == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      newPassword: freezed == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      salePointsId: freezed == salePointsId
          ? _self._salePointsId
          : salePointsId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}
