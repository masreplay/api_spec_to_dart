// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_sale_point_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateSalePointDto {
  /// name
  @JsonKey(name: UpdateSalePointDto.nameKey_)
  String? get name;

  /// usersId
  @JsonKey(name: UpdateSalePointDto.usersIdKey_)
  List<String>? get usersId;

  /// Create a copy of UpdateSalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateSalePointDtoCopyWith<UpdateSalePointDto> get copyWith =>
      _$UpdateSalePointDtoCopyWithImpl<UpdateSalePointDto>(
          this as UpdateSalePointDto, _$identity);

  /// Serializes this UpdateSalePointDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateSalePointDto &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.usersId, usersId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(usersId));

  @override
  String toString() {
    return 'UpdateSalePointDto(name: $name, usersId: $usersId)';
  }
}

/// @nodoc
abstract mixin class $UpdateSalePointDtoCopyWith<$Res> {
  factory $UpdateSalePointDtoCopyWith(
          UpdateSalePointDto value, $Res Function(UpdateSalePointDto) _then) =
      _$UpdateSalePointDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UpdateSalePointDto.nameKey_) String? name,
      @JsonKey(name: UpdateSalePointDto.usersIdKey_) List<String>? usersId});
}

/// @nodoc
class _$UpdateSalePointDtoCopyWithImpl<$Res>
    implements $UpdateSalePointDtoCopyWith<$Res> {
  _$UpdateSalePointDtoCopyWithImpl(this._self, this._then);

  final UpdateSalePointDto _self;
  final $Res Function(UpdateSalePointDto) _then;

  /// Create a copy of UpdateSalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? usersId = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      usersId: freezed == usersId
          ? _self.usersId
          : usersId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateSalePointDto].
extension UpdateSalePointDtoPatterns on UpdateSalePointDto {
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
    TResult Function(_UpdateSalePointDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateSalePointDto() when $default != null:
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
    TResult Function(_UpdateSalePointDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalePointDto():
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
    TResult? Function(_UpdateSalePointDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalePointDto() when $default != null:
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
            @JsonKey(name: UpdateSalePointDto.nameKey_) String? name,
            @JsonKey(name: UpdateSalePointDto.usersIdKey_)
            List<String>? usersId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateSalePointDto() when $default != null:
        return $default(_that.name, _that.usersId);
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
            @JsonKey(name: UpdateSalePointDto.nameKey_) String? name,
            @JsonKey(name: UpdateSalePointDto.usersIdKey_)
            List<String>? usersId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalePointDto():
        return $default(_that.name, _that.usersId);
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
            @JsonKey(name: UpdateSalePointDto.nameKey_) String? name,
            @JsonKey(name: UpdateSalePointDto.usersIdKey_)
            List<String>? usersId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateSalePointDto() when $default != null:
        return $default(_that.name, _that.usersId);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UpdateSalePointDto extends UpdateSalePointDto {
  const _UpdateSalePointDto(
      {@JsonKey(name: UpdateSalePointDto.nameKey_) this.name,
      @JsonKey(name: UpdateSalePointDto.usersIdKey_)
      final List<String>? usersId})
      : _usersId = usersId,
        super._();
  factory _UpdateSalePointDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateSalePointDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: UpdateSalePointDto.nameKey_)
  final String? name;

  /// usersId
  final List<String>? _usersId;

  /// usersId
  @override
  @JsonKey(name: UpdateSalePointDto.usersIdKey_)
  List<String>? get usersId {
    final value = _usersId;
    if (value == null) return null;
    if (_usersId is EqualUnmodifiableListView) return _usersId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of UpdateSalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateSalePointDtoCopyWith<_UpdateSalePointDto> get copyWith =>
      __$UpdateSalePointDtoCopyWithImpl<_UpdateSalePointDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateSalePointDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateSalePointDto &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._usersId, _usersId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_usersId));

  @override
  String toString() {
    return 'UpdateSalePointDto(name: $name, usersId: $usersId)';
  }
}

/// @nodoc
abstract mixin class _$UpdateSalePointDtoCopyWith<$Res>
    implements $UpdateSalePointDtoCopyWith<$Res> {
  factory _$UpdateSalePointDtoCopyWith(
          _UpdateSalePointDto value, $Res Function(_UpdateSalePointDto) _then) =
      __$UpdateSalePointDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdateSalePointDto.nameKey_) String? name,
      @JsonKey(name: UpdateSalePointDto.usersIdKey_) List<String>? usersId});
}

/// @nodoc
class __$UpdateSalePointDtoCopyWithImpl<$Res>
    implements _$UpdateSalePointDtoCopyWith<$Res> {
  __$UpdateSalePointDtoCopyWithImpl(this._self, this._then);

  final _UpdateSalePointDto _self;
  final $Res Function(_UpdateSalePointDto) _then;

  /// Create a copy of UpdateSalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? usersId = freezed,
  }) {
    return _then(_UpdateSalePointDto(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      usersId: freezed == usersId
          ? _self._usersId
          : usersId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}
