// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_variant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductVariantDto {
  /// id
  @JsonKey(name: ProductVariantDto.idKey_)
  String get id;

  /// name
  @JsonKey(name: ProductVariantDto.nameKey_)
  String get name;

  /// Create a copy of ProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductVariantDtoCopyWith<ProductVariantDto> get copyWith =>
      _$ProductVariantDtoCopyWithImpl<ProductVariantDto>(
          this as ProductVariantDto, _$identity);

  /// Serializes this ProductVariantDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductVariantDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ProductVariantDto(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $ProductVariantDtoCopyWith<$Res> {
  factory $ProductVariantDtoCopyWith(
          ProductVariantDto value, $Res Function(ProductVariantDto) _then) =
      _$ProductVariantDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ProductVariantDto.idKey_) String id,
      @JsonKey(name: ProductVariantDto.nameKey_) String name});
}

/// @nodoc
class _$ProductVariantDtoCopyWithImpl<$Res>
    implements $ProductVariantDtoCopyWith<$Res> {
  _$ProductVariantDtoCopyWithImpl(this._self, this._then);

  final ProductVariantDto _self;
  final $Res Function(ProductVariantDto) _then;

  /// Create a copy of ProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductVariantDto].
extension ProductVariantDtoPatterns on ProductVariantDto {
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
    TResult Function(_ProductVariantDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductVariantDto() when $default != null:
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
    TResult Function(_ProductVariantDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductVariantDto():
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
    TResult? Function(_ProductVariantDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductVariantDto() when $default != null:
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
    TResult Function(@JsonKey(name: ProductVariantDto.idKey_) String id,
            @JsonKey(name: ProductVariantDto.nameKey_) String name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductVariantDto() when $default != null:
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
    TResult Function(@JsonKey(name: ProductVariantDto.idKey_) String id,
            @JsonKey(name: ProductVariantDto.nameKey_) String name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductVariantDto():
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
    TResult? Function(@JsonKey(name: ProductVariantDto.idKey_) String id,
            @JsonKey(name: ProductVariantDto.nameKey_) String name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductVariantDto() when $default != null:
        return $default(_that.id, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ProductVariantDto extends ProductVariantDto {
  const _ProductVariantDto(
      {@JsonKey(name: ProductVariantDto.idKey_) required this.id,
      @JsonKey(name: ProductVariantDto.nameKey_) required this.name})
      : super._();
  factory _ProductVariantDto.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: ProductVariantDto.idKey_)
  final String id;

  /// name
  @override
  @JsonKey(name: ProductVariantDto.nameKey_)
  final String name;

  /// Create a copy of ProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductVariantDtoCopyWith<_ProductVariantDto> get copyWith =>
      __$ProductVariantDtoCopyWithImpl<_ProductVariantDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductVariantDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductVariantDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'ProductVariantDto(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ProductVariantDtoCopyWith<$Res>
    implements $ProductVariantDtoCopyWith<$Res> {
  factory _$ProductVariantDtoCopyWith(
          _ProductVariantDto value, $Res Function(_ProductVariantDto) _then) =
      __$ProductVariantDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProductVariantDto.idKey_) String id,
      @JsonKey(name: ProductVariantDto.nameKey_) String name});
}

/// @nodoc
class __$ProductVariantDtoCopyWithImpl<$Res>
    implements _$ProductVariantDtoCopyWith<$Res> {
  __$ProductVariantDtoCopyWithImpl(this._self, this._then);

  final _ProductVariantDto _self;
  final $Res Function(_ProductVariantDto) _then;

  /// Create a copy of ProductVariantDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_ProductVariantDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
