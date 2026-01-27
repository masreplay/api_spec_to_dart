// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_sale_point_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSalePointDto {
  /// name
  @JsonKey(name: CreateSalePointDto.nameKey_)
  String get name;

  /// usersId
  @JsonKey(name: CreateSalePointDto.usersIdKey_)
  List<String> get usersId;

  /// Create a copy of CreateSalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSalePointDtoCopyWith<CreateSalePointDto> get copyWith =>
      _$CreateSalePointDtoCopyWithImpl<CreateSalePointDto>(
          this as CreateSalePointDto, _$identity);

  /// Serializes this CreateSalePointDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSalePointDto &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.usersId, usersId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(usersId));

  @override
  String toString() {
    return 'CreateSalePointDto(name: $name, usersId: $usersId)';
  }
}

/// @nodoc
abstract mixin class $CreateSalePointDtoCopyWith<$Res> {
  factory $CreateSalePointDtoCopyWith(
          CreateSalePointDto value, $Res Function(CreateSalePointDto) _then) =
      _$CreateSalePointDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreateSalePointDto.nameKey_) String name,
      @JsonKey(name: CreateSalePointDto.usersIdKey_) List<String> usersId});
}

/// @nodoc
class _$CreateSalePointDtoCopyWithImpl<$Res>
    implements $CreateSalePointDtoCopyWith<$Res> {
  _$CreateSalePointDtoCopyWithImpl(this._self, this._then);

  final CreateSalePointDto _self;
  final $Res Function(CreateSalePointDto) _then;

  /// Create a copy of CreateSalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? usersId = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      usersId: null == usersId
          ? _self.usersId
          : usersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateSalePointDto].
extension CreateSalePointDtoPatterns on CreateSalePointDto {
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
    TResult Function(_CreateSalePointDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSalePointDto() when $default != null:
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
    TResult Function(_CreateSalePointDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalePointDto():
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
    TResult? Function(_CreateSalePointDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalePointDto() when $default != null:
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
            @JsonKey(name: CreateSalePointDto.nameKey_) String name,
            @JsonKey(name: CreateSalePointDto.usersIdKey_)
            List<String> usersId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateSalePointDto() when $default != null:
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
    TResult Function(@JsonKey(name: CreateSalePointDto.nameKey_) String name,
            @JsonKey(name: CreateSalePointDto.usersIdKey_) List<String> usersId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalePointDto():
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
            @JsonKey(name: CreateSalePointDto.nameKey_) String name,
            @JsonKey(name: CreateSalePointDto.usersIdKey_)
            List<String> usersId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateSalePointDto() when $default != null:
        return $default(_that.name, _that.usersId);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CreateSalePointDto extends CreateSalePointDto {
  const _CreateSalePointDto(
      {@JsonKey(name: CreateSalePointDto.nameKey_) required this.name,
      @JsonKey(name: CreateSalePointDto.usersIdKey_)
      required final List<String> usersId})
      : _usersId = usersId,
        super._();
  factory _CreateSalePointDto.fromJson(Map<String, dynamic> json) =>
      _$CreateSalePointDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: CreateSalePointDto.nameKey_)
  final String name;

  /// usersId
  final List<String> _usersId;

  /// usersId
  @override
  @JsonKey(name: CreateSalePointDto.usersIdKey_)
  List<String> get usersId {
    if (_usersId is EqualUnmodifiableListView) return _usersId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersId);
  }

  /// Create a copy of CreateSalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSalePointDtoCopyWith<_CreateSalePointDto> get copyWith =>
      __$CreateSalePointDtoCopyWithImpl<_CreateSalePointDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateSalePointDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSalePointDto &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._usersId, _usersId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_usersId));

  @override
  String toString() {
    return 'CreateSalePointDto(name: $name, usersId: $usersId)';
  }
}

/// @nodoc
abstract mixin class _$CreateSalePointDtoCopyWith<$Res>
    implements $CreateSalePointDtoCopyWith<$Res> {
  factory _$CreateSalePointDtoCopyWith(
          _CreateSalePointDto value, $Res Function(_CreateSalePointDto) _then) =
      __$CreateSalePointDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreateSalePointDto.nameKey_) String name,
      @JsonKey(name: CreateSalePointDto.usersIdKey_) List<String> usersId});
}

/// @nodoc
class __$CreateSalePointDtoCopyWithImpl<$Res>
    implements _$CreateSalePointDtoCopyWith<$Res> {
  __$CreateSalePointDtoCopyWithImpl(this._self, this._then);

  final _CreateSalePointDto _self;
  final $Res Function(_CreateSalePointDto) _then;

  /// Create a copy of CreateSalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? usersId = null,
  }) {
    return _then(_CreateSalePointDto(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      usersId: null == usersId
          ? _self._usersId
          : usersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}
