// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProductDto {
  /// name
  @JsonKey(name: UpdateProductDto.nameKey_)
  String? get name;

  /// categoryId
  @JsonKey(name: UpdateProductDto.categoryIdKey_)
  String? get categoryId;

  /// description
  @JsonKey(name: UpdateProductDto.descriptionKey_)
  String? get description;

  /// barcode
  @JsonKey(name: UpdateProductDto.barcodeKey_)
  String? get barcode;

  /// purchasePrice
  @JsonKey(name: UpdateProductDto.purchasePriceKey_)
  double? get purchasePrice;

  /// markupPercentage
  @JsonKey(name: UpdateProductDto.markupPercentageKey_)
  double? get markupPercentage;

  /// salePrice
  @JsonKey(name: UpdateProductDto.salePriceKey_)
  double? get salePrice;

  /// allowGeneric
  @JsonKey(name: UpdateProductDto.allowGenericKey_)
  bool? get allowGeneric;

  /// useBooleanStock
  @JsonKey(name: UpdateProductDto.useBooleanStockKey_)
  bool? get useBooleanStock;

  /// hasStock
  @JsonKey(name: UpdateProductDto.hasStockKey_)
  bool? get hasStock;

  /// variants
  @JsonKey(name: UpdateProductDto.variantsKey_)
  List<UpdateProductVariantDto>? get variants;

  /// presentations
  @JsonKey(name: UpdateProductDto.presentationsKey_)
  List<UpdateProductPresentationDto>? get presentations;

  /// Create a copy of UpdateProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateProductDtoCopyWith<UpdateProductDto> get copyWith =>
      _$UpdateProductDtoCopyWithImpl<UpdateProductDto>(
          this as UpdateProductDto, _$identity);

  /// Serializes this UpdateProductDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateProductDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.markupPercentage, markupPercentage) ||
                other.markupPercentage == markupPercentage) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.allowGeneric, allowGeneric) ||
                other.allowGeneric == allowGeneric) &&
            (identical(other.useBooleanStock, useBooleanStock) ||
                other.useBooleanStock == useBooleanStock) &&
            (identical(other.hasStock, hasStock) ||
                other.hasStock == hasStock) &&
            const DeepCollectionEquality().equals(other.variants, variants) &&
            const DeepCollectionEquality()
                .equals(other.presentations, presentations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      categoryId,
      description,
      barcode,
      purchasePrice,
      markupPercentage,
      salePrice,
      allowGeneric,
      useBooleanStock,
      hasStock,
      const DeepCollectionEquality().hash(variants),
      const DeepCollectionEquality().hash(presentations));

  @override
  String toString() {
    return 'UpdateProductDto(name: $name, categoryId: $categoryId, description: $description, barcode: $barcode, purchasePrice: $purchasePrice, markupPercentage: $markupPercentage, salePrice: $salePrice, allowGeneric: $allowGeneric, useBooleanStock: $useBooleanStock, hasStock: $hasStock, variants: $variants, presentations: $presentations)';
  }
}

/// @nodoc
abstract mixin class $UpdateProductDtoCopyWith<$Res> {
  factory $UpdateProductDtoCopyWith(
          UpdateProductDto value, $Res Function(UpdateProductDto) _then) =
      _$UpdateProductDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UpdateProductDto.nameKey_) String? name,
      @JsonKey(name: UpdateProductDto.categoryIdKey_) String? categoryId,
      @JsonKey(name: UpdateProductDto.descriptionKey_) String? description,
      @JsonKey(name: UpdateProductDto.barcodeKey_) String? barcode,
      @JsonKey(name: UpdateProductDto.purchasePriceKey_) double? purchasePrice,
      @JsonKey(name: UpdateProductDto.markupPercentageKey_)
      double? markupPercentage,
      @JsonKey(name: UpdateProductDto.salePriceKey_) double? salePrice,
      @JsonKey(name: UpdateProductDto.allowGenericKey_) bool? allowGeneric,
      @JsonKey(name: UpdateProductDto.useBooleanStockKey_)
      bool? useBooleanStock,
      @JsonKey(name: UpdateProductDto.hasStockKey_) bool? hasStock,
      @JsonKey(name: UpdateProductDto.variantsKey_)
      List<UpdateProductVariantDto>? variants,
      @JsonKey(name: UpdateProductDto.presentationsKey_)
      List<UpdateProductPresentationDto>? presentations});
}

/// @nodoc
class _$UpdateProductDtoCopyWithImpl<$Res>
    implements $UpdateProductDtoCopyWith<$Res> {
  _$UpdateProductDtoCopyWithImpl(this._self, this._then);

  final UpdateProductDto _self;
  final $Res Function(UpdateProductDto) _then;

  /// Create a copy of UpdateProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? categoryId = freezed,
    Object? description = freezed,
    Object? barcode = freezed,
    Object? purchasePrice = freezed,
    Object? markupPercentage = freezed,
    Object? salePrice = freezed,
    Object? allowGeneric = freezed,
    Object? useBooleanStock = freezed,
    Object? hasStock = freezed,
    Object? variants = freezed,
    Object? presentations = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _self.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchasePrice: freezed == purchasePrice
          ? _self.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      markupPercentage: freezed == markupPercentage
          ? _self.markupPercentage
          : markupPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      salePrice: freezed == salePrice
          ? _self.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      allowGeneric: freezed == allowGeneric
          ? _self.allowGeneric
          : allowGeneric // ignore: cast_nullable_to_non_nullable
              as bool?,
      useBooleanStock: freezed == useBooleanStock
          ? _self.useBooleanStock
          : useBooleanStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasStock: freezed == hasStock
          ? _self.hasStock
          : hasStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      variants: freezed == variants
          ? _self.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<UpdateProductVariantDto>?,
      presentations: freezed == presentations
          ? _self.presentations
          : presentations // ignore: cast_nullable_to_non_nullable
              as List<UpdateProductPresentationDto>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UpdateProductDto].
extension UpdateProductDtoPatterns on UpdateProductDto {
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
    TResult Function(_UpdateProductDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateProductDto() when $default != null:
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
    TResult Function(_UpdateProductDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProductDto():
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
    TResult? Function(_UpdateProductDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProductDto() when $default != null:
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
            @JsonKey(name: UpdateProductDto.nameKey_) String? name,
            @JsonKey(name: UpdateProductDto.categoryIdKey_) String? categoryId,
            @JsonKey(name: UpdateProductDto.descriptionKey_)
            String? description,
            @JsonKey(name: UpdateProductDto.barcodeKey_) String? barcode,
            @JsonKey(name: UpdateProductDto.purchasePriceKey_)
            double? purchasePrice,
            @JsonKey(name: UpdateProductDto.markupPercentageKey_)
            double? markupPercentage,
            @JsonKey(name: UpdateProductDto.salePriceKey_) double? salePrice,
            @JsonKey(name: UpdateProductDto.allowGenericKey_)
            bool? allowGeneric,
            @JsonKey(name: UpdateProductDto.useBooleanStockKey_)
            bool? useBooleanStock,
            @JsonKey(name: UpdateProductDto.hasStockKey_) bool? hasStock,
            @JsonKey(name: UpdateProductDto.variantsKey_)
            List<UpdateProductVariantDto>? variants,
            @JsonKey(name: UpdateProductDto.presentationsKey_)
            List<UpdateProductPresentationDto>? presentations)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateProductDto() when $default != null:
        return $default(
            _that.name,
            _that.categoryId,
            _that.description,
            _that.barcode,
            _that.purchasePrice,
            _that.markupPercentage,
            _that.salePrice,
            _that.allowGeneric,
            _that.useBooleanStock,
            _that.hasStock,
            _that.variants,
            _that.presentations);
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
            @JsonKey(name: UpdateProductDto.nameKey_) String? name,
            @JsonKey(name: UpdateProductDto.categoryIdKey_) String? categoryId,
            @JsonKey(name: UpdateProductDto.descriptionKey_)
            String? description,
            @JsonKey(name: UpdateProductDto.barcodeKey_) String? barcode,
            @JsonKey(name: UpdateProductDto.purchasePriceKey_)
            double? purchasePrice,
            @JsonKey(name: UpdateProductDto.markupPercentageKey_)
            double? markupPercentage,
            @JsonKey(name: UpdateProductDto.salePriceKey_) double? salePrice,
            @JsonKey(name: UpdateProductDto.allowGenericKey_)
            bool? allowGeneric,
            @JsonKey(name: UpdateProductDto.useBooleanStockKey_)
            bool? useBooleanStock,
            @JsonKey(name: UpdateProductDto.hasStockKey_) bool? hasStock,
            @JsonKey(name: UpdateProductDto.variantsKey_)
            List<UpdateProductVariantDto>? variants,
            @JsonKey(name: UpdateProductDto.presentationsKey_)
            List<UpdateProductPresentationDto>? presentations)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProductDto():
        return $default(
            _that.name,
            _that.categoryId,
            _that.description,
            _that.barcode,
            _that.purchasePrice,
            _that.markupPercentage,
            _that.salePrice,
            _that.allowGeneric,
            _that.useBooleanStock,
            _that.hasStock,
            _that.variants,
            _that.presentations);
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
            @JsonKey(name: UpdateProductDto.nameKey_) String? name,
            @JsonKey(name: UpdateProductDto.categoryIdKey_) String? categoryId,
            @JsonKey(name: UpdateProductDto.descriptionKey_)
            String? description,
            @JsonKey(name: UpdateProductDto.barcodeKey_) String? barcode,
            @JsonKey(name: UpdateProductDto.purchasePriceKey_)
            double? purchasePrice,
            @JsonKey(name: UpdateProductDto.markupPercentageKey_)
            double? markupPercentage,
            @JsonKey(name: UpdateProductDto.salePriceKey_) double? salePrice,
            @JsonKey(name: UpdateProductDto.allowGenericKey_)
            bool? allowGeneric,
            @JsonKey(name: UpdateProductDto.useBooleanStockKey_)
            bool? useBooleanStock,
            @JsonKey(name: UpdateProductDto.hasStockKey_) bool? hasStock,
            @JsonKey(name: UpdateProductDto.variantsKey_)
            List<UpdateProductVariantDto>? variants,
            @JsonKey(name: UpdateProductDto.presentationsKey_)
            List<UpdateProductPresentationDto>? presentations)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateProductDto() when $default != null:
        return $default(
            _that.name,
            _that.categoryId,
            _that.description,
            _that.barcode,
            _that.purchasePrice,
            _that.markupPercentage,
            _that.salePrice,
            _that.allowGeneric,
            _that.useBooleanStock,
            _that.hasStock,
            _that.variants,
            _that.presentations);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UpdateProductDto extends UpdateProductDto {
  const _UpdateProductDto(
      {@JsonKey(name: UpdateProductDto.nameKey_) this.name,
      @JsonKey(name: UpdateProductDto.categoryIdKey_) this.categoryId,
      @JsonKey(name: UpdateProductDto.descriptionKey_) this.description,
      @JsonKey(name: UpdateProductDto.barcodeKey_) this.barcode,
      @JsonKey(name: UpdateProductDto.purchasePriceKey_) this.purchasePrice,
      @JsonKey(name: UpdateProductDto.markupPercentageKey_)
      this.markupPercentage,
      @JsonKey(name: UpdateProductDto.salePriceKey_) this.salePrice,
      @JsonKey(name: UpdateProductDto.allowGenericKey_) this.allowGeneric,
      @JsonKey(name: UpdateProductDto.useBooleanStockKey_) this.useBooleanStock,
      @JsonKey(name: UpdateProductDto.hasStockKey_) this.hasStock,
      @JsonKey(name: UpdateProductDto.variantsKey_)
      final List<UpdateProductVariantDto>? variants,
      @JsonKey(name: UpdateProductDto.presentationsKey_)
      final List<UpdateProductPresentationDto>? presentations})
      : _variants = variants,
        _presentations = presentations,
        super._();
  factory _UpdateProductDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: UpdateProductDto.nameKey_)
  final String? name;

  /// categoryId
  @override
  @JsonKey(name: UpdateProductDto.categoryIdKey_)
  final String? categoryId;

  /// description
  @override
  @JsonKey(name: UpdateProductDto.descriptionKey_)
  final String? description;

  /// barcode
  @override
  @JsonKey(name: UpdateProductDto.barcodeKey_)
  final String? barcode;

  /// purchasePrice
  @override
  @JsonKey(name: UpdateProductDto.purchasePriceKey_)
  final double? purchasePrice;

  /// markupPercentage
  @override
  @JsonKey(name: UpdateProductDto.markupPercentageKey_)
  final double? markupPercentage;

  /// salePrice
  @override
  @JsonKey(name: UpdateProductDto.salePriceKey_)
  final double? salePrice;

  /// allowGeneric
  @override
  @JsonKey(name: UpdateProductDto.allowGenericKey_)
  final bool? allowGeneric;

  /// useBooleanStock
  @override
  @JsonKey(name: UpdateProductDto.useBooleanStockKey_)
  final bool? useBooleanStock;

  /// hasStock
  @override
  @JsonKey(name: UpdateProductDto.hasStockKey_)
  final bool? hasStock;

  /// variants
  final List<UpdateProductVariantDto>? _variants;

  /// variants
  @override
  @JsonKey(name: UpdateProductDto.variantsKey_)
  List<UpdateProductVariantDto>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// presentations
  final List<UpdateProductPresentationDto>? _presentations;

  /// presentations
  @override
  @JsonKey(name: UpdateProductDto.presentationsKey_)
  List<UpdateProductPresentationDto>? get presentations {
    final value = _presentations;
    if (value == null) return null;
    if (_presentations is EqualUnmodifiableListView) return _presentations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of UpdateProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateProductDtoCopyWith<_UpdateProductDto> get copyWith =>
      __$UpdateProductDtoCopyWithImpl<_UpdateProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateProductDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProductDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.markupPercentage, markupPercentage) ||
                other.markupPercentage == markupPercentage) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.allowGeneric, allowGeneric) ||
                other.allowGeneric == allowGeneric) &&
            (identical(other.useBooleanStock, useBooleanStock) ||
                other.useBooleanStock == useBooleanStock) &&
            (identical(other.hasStock, hasStock) ||
                other.hasStock == hasStock) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality()
                .equals(other._presentations, _presentations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      categoryId,
      description,
      barcode,
      purchasePrice,
      markupPercentage,
      salePrice,
      allowGeneric,
      useBooleanStock,
      hasStock,
      const DeepCollectionEquality().hash(_variants),
      const DeepCollectionEquality().hash(_presentations));

  @override
  String toString() {
    return 'UpdateProductDto(name: $name, categoryId: $categoryId, description: $description, barcode: $barcode, purchasePrice: $purchasePrice, markupPercentage: $markupPercentage, salePrice: $salePrice, allowGeneric: $allowGeneric, useBooleanStock: $useBooleanStock, hasStock: $hasStock, variants: $variants, presentations: $presentations)';
  }
}

/// @nodoc
abstract mixin class _$UpdateProductDtoCopyWith<$Res>
    implements $UpdateProductDtoCopyWith<$Res> {
  factory _$UpdateProductDtoCopyWith(
          _UpdateProductDto value, $Res Function(_UpdateProductDto) _then) =
      __$UpdateProductDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdateProductDto.nameKey_) String? name,
      @JsonKey(name: UpdateProductDto.categoryIdKey_) String? categoryId,
      @JsonKey(name: UpdateProductDto.descriptionKey_) String? description,
      @JsonKey(name: UpdateProductDto.barcodeKey_) String? barcode,
      @JsonKey(name: UpdateProductDto.purchasePriceKey_) double? purchasePrice,
      @JsonKey(name: UpdateProductDto.markupPercentageKey_)
      double? markupPercentage,
      @JsonKey(name: UpdateProductDto.salePriceKey_) double? salePrice,
      @JsonKey(name: UpdateProductDto.allowGenericKey_) bool? allowGeneric,
      @JsonKey(name: UpdateProductDto.useBooleanStockKey_)
      bool? useBooleanStock,
      @JsonKey(name: UpdateProductDto.hasStockKey_) bool? hasStock,
      @JsonKey(name: UpdateProductDto.variantsKey_)
      List<UpdateProductVariantDto>? variants,
      @JsonKey(name: UpdateProductDto.presentationsKey_)
      List<UpdateProductPresentationDto>? presentations});
}

/// @nodoc
class __$UpdateProductDtoCopyWithImpl<$Res>
    implements _$UpdateProductDtoCopyWith<$Res> {
  __$UpdateProductDtoCopyWithImpl(this._self, this._then);

  final _UpdateProductDto _self;
  final $Res Function(_UpdateProductDto) _then;

  /// Create a copy of UpdateProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? categoryId = freezed,
    Object? description = freezed,
    Object? barcode = freezed,
    Object? purchasePrice = freezed,
    Object? markupPercentage = freezed,
    Object? salePrice = freezed,
    Object? allowGeneric = freezed,
    Object? useBooleanStock = freezed,
    Object? hasStock = freezed,
    Object? variants = freezed,
    Object? presentations = freezed,
  }) {
    return _then(_UpdateProductDto(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _self.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      purchasePrice: freezed == purchasePrice
          ? _self.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      markupPercentage: freezed == markupPercentage
          ? _self.markupPercentage
          : markupPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      salePrice: freezed == salePrice
          ? _self.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      allowGeneric: freezed == allowGeneric
          ? _self.allowGeneric
          : allowGeneric // ignore: cast_nullable_to_non_nullable
              as bool?,
      useBooleanStock: freezed == useBooleanStock
          ? _self.useBooleanStock
          : useBooleanStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasStock: freezed == hasStock
          ? _self.hasStock
          : hasStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      variants: freezed == variants
          ? _self._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<UpdateProductVariantDto>?,
      presentations: freezed == presentations
          ? _self._presentations
          : presentations // ignore: cast_nullable_to_non_nullable
              as List<UpdateProductPresentationDto>?,
    ));
  }
}
