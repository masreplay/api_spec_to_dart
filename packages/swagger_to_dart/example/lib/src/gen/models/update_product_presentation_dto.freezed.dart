// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_product_presentation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProductPresentationDto {
  /// id
  @JsonKey(name: UpdateProductPresentationDto.idKey_)
  String? get id;

  /// name
  @JsonKey(name: UpdateProductPresentationDto.nameKey_)
  String? get name;

  /// quantityMultiplier
  @JsonKey(name: UpdateProductPresentationDto.quantityMultiplierKey_)
  int? get quantityMultiplier;

  /// Create a copy of UpdateProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateProductPresentationDtoCopyWith<UpdateProductPresentationDto>
      get copyWith => _$UpdateProductPresentationDtoCopyWithImpl<
              UpdateProductPresentationDto>(
          this as UpdateProductPresentationDto, _$identity);

  /// Serializes this UpdateProductPresentationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateProductPresentationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantityMultiplier, quantityMultiplier) ||
                other.quantityMultiplier == quantityMultiplier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, quantityMultiplier);

  @override
  String toString() {
    return 'UpdateProductPresentationDto(id: $id, name: $name, quantityMultiplier: $quantityMultiplier)';
  }
}

/// @nodoc
abstract mixin class $UpdateProductPresentationDtoCopyWith<$Res> {
  factory $UpdateProductPresentationDtoCopyWith(
          UpdateProductPresentationDto value,
          $Res Function(UpdateProductPresentationDto) _then) =
      _$UpdateProductPresentationDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UpdateProductPresentationDto.idKey_) String? id,
      @JsonKey(name: UpdateProductPresentationDto.nameKey_) String? name,
      @JsonKey(name: UpdateProductPresentationDto.quantityMultiplierKey_)
      int? quantityMultiplier});
}

/// @nodoc
class _$UpdateProductPresentationDtoCopyWithImpl<$Res>
    implements $UpdateProductPresentationDtoCopyWith<$Res> {
  _$UpdateProductPresentationDtoCopyWithImpl(this._self, this._then);

  final UpdateProductPresentationDto _self;
  final $Res Function(UpdateProductPresentationDto) _then;

  /// Create a copy of UpdateProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? quantityMultiplier = freezed,
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
      quantityMultiplier: freezed == quantityMultiplier
          ? _self.quantityMultiplier
          : quantityMultiplier // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateProductPresentationDto].
extension UpdateProductPresentationDtoPatterns on UpdateProductPresentationDto {
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
    TResult Function(_UpdateProductPresentationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateProductPresentationDto() when $default != null:
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
    TResult Function(_UpdateProductPresentationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProductPresentationDto():
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
    TResult? Function(_UpdateProductPresentationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProductPresentationDto() when $default != null:
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
            @JsonKey(name: UpdateProductPresentationDto.idKey_) String? id,
            @JsonKey(name: UpdateProductPresentationDto.nameKey_) String? name,
            @JsonKey(name: UpdateProductPresentationDto.quantityMultiplierKey_)
            int? quantityMultiplier)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateProductPresentationDto() when $default != null:
        return $default(_that.id, _that.name, _that.quantityMultiplier);
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
            @JsonKey(name: UpdateProductPresentationDto.idKey_) String? id,
            @JsonKey(name: UpdateProductPresentationDto.nameKey_) String? name,
            @JsonKey(name: UpdateProductPresentationDto.quantityMultiplierKey_)
            int? quantityMultiplier)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProductPresentationDto():
        return $default(_that.id, _that.name, _that.quantityMultiplier);
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
            @JsonKey(name: UpdateProductPresentationDto.idKey_) String? id,
            @JsonKey(name: UpdateProductPresentationDto.nameKey_) String? name,
            @JsonKey(name: UpdateProductPresentationDto.quantityMultiplierKey_)
            int? quantityMultiplier)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProductPresentationDto() when $default != null:
        return $default(_that.id, _that.name, _that.quantityMultiplier);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UpdateProductPresentationDto extends UpdateProductPresentationDto {
  const _UpdateProductPresentationDto(
      {@JsonKey(name: UpdateProductPresentationDto.idKey_) this.id,
      @JsonKey(name: UpdateProductPresentationDto.nameKey_) this.name,
      @JsonKey(name: UpdateProductPresentationDto.quantityMultiplierKey_)
      this.quantityMultiplier})
      : super._();
  factory _UpdateProductPresentationDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductPresentationDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: UpdateProductPresentationDto.idKey_)
  final String? id;

  /// name
  @override
  @JsonKey(name: UpdateProductPresentationDto.nameKey_)
  final String? name;

  /// quantityMultiplier
  @override
  @JsonKey(name: UpdateProductPresentationDto.quantityMultiplierKey_)
  final int? quantityMultiplier;

  /// Create a copy of UpdateProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateProductPresentationDtoCopyWith<_UpdateProductPresentationDto>
      get copyWith => __$UpdateProductPresentationDtoCopyWithImpl<
          _UpdateProductPresentationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateProductPresentationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProductPresentationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantityMultiplier, quantityMultiplier) ||
                other.quantityMultiplier == quantityMultiplier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, quantityMultiplier);

  @override
  String toString() {
    return 'UpdateProductPresentationDto(id: $id, name: $name, quantityMultiplier: $quantityMultiplier)';
  }
}

/// @nodoc
abstract mixin class _$UpdateProductPresentationDtoCopyWith<$Res>
    implements $UpdateProductPresentationDtoCopyWith<$Res> {
  factory _$UpdateProductPresentationDtoCopyWith(
          _UpdateProductPresentationDto value,
          $Res Function(_UpdateProductPresentationDto) _then) =
      __$UpdateProductPresentationDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdateProductPresentationDto.idKey_) String? id,
      @JsonKey(name: UpdateProductPresentationDto.nameKey_) String? name,
      @JsonKey(name: UpdateProductPresentationDto.quantityMultiplierKey_)
      int? quantityMultiplier});
}

/// @nodoc
class __$UpdateProductPresentationDtoCopyWithImpl<$Res>
    implements _$UpdateProductPresentationDtoCopyWith<$Res> {
  __$UpdateProductPresentationDtoCopyWithImpl(this._self, this._then);

  final _UpdateProductPresentationDto _self;
  final $Res Function(_UpdateProductPresentationDto) _then;

  /// Create a copy of UpdateProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? quantityMultiplier = freezed,
  }) {
    return _then(_UpdateProductPresentationDto(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantityMultiplier: freezed == quantityMultiplier
          ? _self.quantityMultiplier
          : quantityMultiplier // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}
