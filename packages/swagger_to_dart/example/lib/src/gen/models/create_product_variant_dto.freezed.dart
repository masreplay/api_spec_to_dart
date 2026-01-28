// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_product_variant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateProductVariantDto {
  /// name
  @JsonKey(name: CreateProductVariantDto.nameKey_)
  String get name;

  /// Create a copy of CreateProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateProductVariantDtoCopyWith<CreateProductVariantDto> get copyWith =>
      _$CreateProductVariantDtoCopyWithImpl<CreateProductVariantDto>(
          this as CreateProductVariantDto, _$identity);

  /// Serializes this CreateProductVariantDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateProductVariantDto &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'CreateProductVariantDto(name: $name)';
  }
}

/// @nodoc
abstract mixin class $CreateProductVariantDtoCopyWith<$Res> {
  factory $CreateProductVariantDtoCopyWith(CreateProductVariantDto value,
          $Res Function(CreateProductVariantDto) _then) =
      _$CreateProductVariantDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: CreateProductVariantDto.nameKey_) String name});
}

/// @nodoc
class _$CreateProductVariantDtoCopyWithImpl<$Res>
    implements $CreateProductVariantDtoCopyWith<$Res> {
  _$CreateProductVariantDtoCopyWithImpl(this._self, this._then);

  final CreateProductVariantDto _self;
  final $Res Function(CreateProductVariantDto) _then;

  /// Create a copy of CreateProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateProductVariantDto].
extension CreateProductVariantDtoPatterns on CreateProductVariantDto {
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
    TResult Function(_CreateProductVariantDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProductVariantDto() when $default != null:
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
    TResult Function(_CreateProductVariantDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductVariantDto():
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
    TResult? Function(_CreateProductVariantDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductVariantDto() when $default != null:
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
            @JsonKey(name: CreateProductVariantDto.nameKey_) String name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProductVariantDto() when $default != null:
        return $default(_that.name);
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
            @JsonKey(name: CreateProductVariantDto.nameKey_) String name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductVariantDto():
        return $default(_that.name);
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
            @JsonKey(name: CreateProductVariantDto.nameKey_) String name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductVariantDto() when $default != null:
        return $default(_that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CreateProductVariantDto extends CreateProductVariantDto {
  const _CreateProductVariantDto(
      {@JsonKey(name: CreateProductVariantDto.nameKey_) required this.name})
      : super._();
  factory _CreateProductVariantDto.fromJson(Map<String, dynamic> json) =>
      _$CreateProductVariantDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: CreateProductVariantDto.nameKey_)
  final String name;

  /// Create a copy of CreateProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateProductVariantDtoCopyWith<_CreateProductVariantDto> get copyWith =>
      __$CreateProductVariantDtoCopyWithImpl<_CreateProductVariantDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateProductVariantDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProductVariantDto &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'CreateProductVariantDto(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$CreateProductVariantDtoCopyWith<$Res>
    implements $CreateProductVariantDtoCopyWith<$Res> {
  factory _$CreateProductVariantDtoCopyWith(_CreateProductVariantDto value,
          $Res Function(_CreateProductVariantDto) _then) =
      __$CreateProductVariantDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: CreateProductVariantDto.nameKey_) String name});
}

/// @nodoc
class __$CreateProductVariantDtoCopyWithImpl<$Res>
    implements _$CreateProductVariantDtoCopyWith<$Res> {
  __$CreateProductVariantDtoCopyWithImpl(this._self, this._then);

  final _CreateProductVariantDto _self;
  final $Res Function(_CreateProductVariantDto) _then;

  /// Create a copy of CreateProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_CreateProductVariantDto(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
