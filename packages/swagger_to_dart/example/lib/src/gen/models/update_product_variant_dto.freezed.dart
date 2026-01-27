// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_product_variant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProductVariantDto {
  /// id
  @JsonKey(name: UpdateProductVariantDto.idKey_)
  String? get id;

  /// name
  @JsonKey(name: UpdateProductVariantDto.nameKey_)
  String? get name;

  /// Create a copy of UpdateProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateProductVariantDtoCopyWith<UpdateProductVariantDto> get copyWith =>
      _$UpdateProductVariantDtoCopyWithImpl<UpdateProductVariantDto>(
          this as UpdateProductVariantDto, _$identity);

  /// Serializes this UpdateProductVariantDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateProductVariantDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'UpdateProductVariantDto(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $UpdateProductVariantDtoCopyWith<$Res> {
  factory $UpdateProductVariantDtoCopyWith(UpdateProductVariantDto value,
          $Res Function(UpdateProductVariantDto) _then) =
      _$UpdateProductVariantDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UpdateProductVariantDto.idKey_) String? id,
      @JsonKey(name: UpdateProductVariantDto.nameKey_) String? name});
}

/// @nodoc
class _$UpdateProductVariantDtoCopyWithImpl<$Res>
    implements $UpdateProductVariantDtoCopyWith<$Res> {
  _$UpdateProductVariantDtoCopyWithImpl(this._self, this._then);

  final UpdateProductVariantDto _self;
  final $Res Function(UpdateProductVariantDto) _then;

  /// Create a copy of UpdateProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateProductVariantDto].
extension UpdateProductVariantDtoPatterns on UpdateProductVariantDto {
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
    TResult Function(_UpdateProductVariantDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateProductVariantDto() when $default != null:
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
    TResult Function(_UpdateProductVariantDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProductVariantDto():
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
    TResult? Function(_UpdateProductVariantDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProductVariantDto() when $default != null:
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
    TResult Function(@JsonKey(name: UpdateProductVariantDto.idKey_) String? id,
            @JsonKey(name: UpdateProductVariantDto.nameKey_) String? name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateProductVariantDto() when $default != null:
        return $default(_that.id, _that.name);
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
    TResult Function(@JsonKey(name: UpdateProductVariantDto.idKey_) String? id,
            @JsonKey(name: UpdateProductVariantDto.nameKey_) String? name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProductVariantDto():
        return $default(_that.id, _that.name);
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
    TResult? Function(@JsonKey(name: UpdateProductVariantDto.idKey_) String? id,
            @JsonKey(name: UpdateProductVariantDto.nameKey_) String? name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProductVariantDto() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UpdateProductVariantDto extends UpdateProductVariantDto {
  const _UpdateProductVariantDto(
      {@JsonKey(name: UpdateProductVariantDto.idKey_) this.id,
      @JsonKey(name: UpdateProductVariantDto.nameKey_) this.name})
      : super._();
  factory _UpdateProductVariantDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductVariantDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: UpdateProductVariantDto.idKey_)
  final String? id;

  /// name
  @override
  @JsonKey(name: UpdateProductVariantDto.nameKey_)
  final String? name;

  /// Create a copy of UpdateProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateProductVariantDtoCopyWith<_UpdateProductVariantDto> get copyWith =>
      __$UpdateProductVariantDtoCopyWithImpl<_UpdateProductVariantDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateProductVariantDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProductVariantDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'UpdateProductVariantDto(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$UpdateProductVariantDtoCopyWith<$Res>
    implements $UpdateProductVariantDtoCopyWith<$Res> {
  factory _$UpdateProductVariantDtoCopyWith(_UpdateProductVariantDto value,
          $Res Function(_UpdateProductVariantDto) _then) =
      __$UpdateProductVariantDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdateProductVariantDto.idKey_) String? id,
      @JsonKey(name: UpdateProductVariantDto.nameKey_) String? name});
}

/// @nodoc
class __$UpdateProductVariantDtoCopyWithImpl<$Res>
    implements _$UpdateProductVariantDtoCopyWith<$Res> {
  __$UpdateProductVariantDtoCopyWithImpl(this._self, this._then);

  final _UpdateProductVariantDto _self;
  final $Res Function(_UpdateProductVariantDto) _then;

  /// Create a copy of UpdateProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_UpdateProductVariantDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
