// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_presentation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductPresentationDto {
  /// id
  @JsonKey(name: ProductPresentationDto.idKey_)
  String get id;

  /// name
  @JsonKey(name: ProductPresentationDto.nameKey_)
  String get name;

  /// quantityMultiplier
  @JsonKey(name: ProductPresentationDto.quantityMultiplierKey_)
  int get quantityMultiplier;

  /// isDefault
  @JsonKey(name: ProductPresentationDto.isDefaultKey_)
  bool get isDefault;

  /// salePrice
  @JsonKey(name: ProductPresentationDto.salePriceKey_)
  double? get salePrice;

  /// Create a copy of ProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductPresentationDtoCopyWith<ProductPresentationDto> get copyWith =>
      _$ProductPresentationDtoCopyWithImpl<ProductPresentationDto>(
          this as ProductPresentationDto, _$identity);

  /// Serializes this ProductPresentationDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductPresentationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantityMultiplier, quantityMultiplier) ||
                other.quantityMultiplier == quantityMultiplier) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, quantityMultiplier, isDefault, salePrice);

  @override
  String toString() {
    return 'ProductPresentationDto(id: $id, name: $name, quantityMultiplier: $quantityMultiplier, isDefault: $isDefault, salePrice: $salePrice)';
  }
}

/// @nodoc
abstract mixin class $ProductPresentationDtoCopyWith<$Res> {
  factory $ProductPresentationDtoCopyWith(ProductPresentationDto value,
          $Res Function(ProductPresentationDto) _then) =
      _$ProductPresentationDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ProductPresentationDto.idKey_) String id,
      @JsonKey(name: ProductPresentationDto.nameKey_) String name,
      @JsonKey(name: ProductPresentationDto.quantityMultiplierKey_)
      int quantityMultiplier,
      @JsonKey(name: ProductPresentationDto.isDefaultKey_) bool isDefault,
      @JsonKey(name: ProductPresentationDto.salePriceKey_) double? salePrice});
}

/// @nodoc
class _$ProductPresentationDtoCopyWithImpl<$Res>
    implements $ProductPresentationDtoCopyWith<$Res> {
  _$ProductPresentationDtoCopyWithImpl(this._self, this._then);

  final ProductPresentationDto _self;
  final $Res Function(ProductPresentationDto) _then;

  /// Create a copy of ProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? quantityMultiplier = null,
    Object? isDefault = null,
    Object? salePrice = freezed,
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
      quantityMultiplier: null == quantityMultiplier
          ? _self.quantityMultiplier
          : quantityMultiplier // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      salePrice: freezed == salePrice
          ? _self.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductPresentationDto].
extension ProductPresentationDtoPatterns on ProductPresentationDto {
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
    TResult Function(_ProductPresentationDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductPresentationDto() when $default != null:
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
    TResult Function(_ProductPresentationDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductPresentationDto():
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
    TResult? Function(_ProductPresentationDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductPresentationDto() when $default != null:
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
            @JsonKey(name: ProductPresentationDto.idKey_) String id,
            @JsonKey(name: ProductPresentationDto.nameKey_) String name,
            @JsonKey(name: ProductPresentationDto.quantityMultiplierKey_)
            int quantityMultiplier,
            @JsonKey(name: ProductPresentationDto.isDefaultKey_) bool isDefault,
            @JsonKey(name: ProductPresentationDto.salePriceKey_)
            double? salePrice)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductPresentationDto() when $default != null:
        return $default(_that.id, _that.name, _that.quantityMultiplier,
            _that.isDefault, _that.salePrice);
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
            @JsonKey(name: ProductPresentationDto.idKey_) String id,
            @JsonKey(name: ProductPresentationDto.nameKey_) String name,
            @JsonKey(name: ProductPresentationDto.quantityMultiplierKey_)
            int quantityMultiplier,
            @JsonKey(name: ProductPresentationDto.isDefaultKey_) bool isDefault,
            @JsonKey(name: ProductPresentationDto.salePriceKey_)
            double? salePrice)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductPresentationDto():
        return $default(_that.id, _that.name, _that.quantityMultiplier,
            _that.isDefault, _that.salePrice);
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
            @JsonKey(name: ProductPresentationDto.idKey_) String id,
            @JsonKey(name: ProductPresentationDto.nameKey_) String name,
            @JsonKey(name: ProductPresentationDto.quantityMultiplierKey_)
            int quantityMultiplier,
            @JsonKey(name: ProductPresentationDto.isDefaultKey_) bool isDefault,
            @JsonKey(name: ProductPresentationDto.salePriceKey_)
            double? salePrice)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductPresentationDto() when $default != null:
        return $default(_that.id, _that.name, _that.quantityMultiplier,
            _that.isDefault, _that.salePrice);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ProductPresentationDto extends ProductPresentationDto {
  const _ProductPresentationDto(
      {@JsonKey(name: ProductPresentationDto.idKey_) required this.id,
      @JsonKey(name: ProductPresentationDto.nameKey_) required this.name,
      @JsonKey(name: ProductPresentationDto.quantityMultiplierKey_)
      required this.quantityMultiplier,
      @JsonKey(name: ProductPresentationDto.isDefaultKey_)
      required this.isDefault,
      @JsonKey(name: ProductPresentationDto.salePriceKey_) this.salePrice})
      : super._();
  factory _ProductPresentationDto.fromJson(Map<String, dynamic> json) =>
      _$ProductPresentationDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: ProductPresentationDto.idKey_)
  final String id;

  /// name
  @override
  @JsonKey(name: ProductPresentationDto.nameKey_)
  final String name;

  /// quantityMultiplier
  @override
  @JsonKey(name: ProductPresentationDto.quantityMultiplierKey_)
  final int quantityMultiplier;

  /// isDefault
  @override
  @JsonKey(name: ProductPresentationDto.isDefaultKey_)
  final bool isDefault;

  /// salePrice
  @override
  @JsonKey(name: ProductPresentationDto.salePriceKey_)
  final double? salePrice;

  /// Create a copy of ProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductPresentationDtoCopyWith<_ProductPresentationDto> get copyWith =>
      __$ProductPresentationDtoCopyWithImpl<_ProductPresentationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductPresentationDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductPresentationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantityMultiplier, quantityMultiplier) ||
                other.quantityMultiplier == quantityMultiplier) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, quantityMultiplier, isDefault, salePrice);

  @override
  String toString() {
    return 'ProductPresentationDto(id: $id, name: $name, quantityMultiplier: $quantityMultiplier, isDefault: $isDefault, salePrice: $salePrice)';
  }
}

/// @nodoc
abstract mixin class _$ProductPresentationDtoCopyWith<$Res>
    implements $ProductPresentationDtoCopyWith<$Res> {
  factory _$ProductPresentationDtoCopyWith(_ProductPresentationDto value,
          $Res Function(_ProductPresentationDto) _then) =
      __$ProductPresentationDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProductPresentationDto.idKey_) String id,
      @JsonKey(name: ProductPresentationDto.nameKey_) String name,
      @JsonKey(name: ProductPresentationDto.quantityMultiplierKey_)
      int quantityMultiplier,
      @JsonKey(name: ProductPresentationDto.isDefaultKey_) bool isDefault,
      @JsonKey(name: ProductPresentationDto.salePriceKey_) double? salePrice});
}

/// @nodoc
class __$ProductPresentationDtoCopyWithImpl<$Res>
    implements _$ProductPresentationDtoCopyWith<$Res> {
  __$ProductPresentationDtoCopyWithImpl(this._self, this._then);

  final _ProductPresentationDto _self;
  final $Res Function(_ProductPresentationDto) _then;

  /// Create a copy of ProductPresentationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? quantityMultiplier = null,
    Object? isDefault = null,
    Object? salePrice = freezed,
  }) {
    return _then(_ProductPresentationDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantityMultiplier: null == quantityMultiplier
          ? _self.quantityMultiplier
          : quantityMultiplier // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      salePrice: freezed == salePrice
          ? _self.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}
