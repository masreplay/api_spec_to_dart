// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDto {
  /// id
  @JsonKey(name: ProductDto.idKey_)
  String get id;

  /// categoryPath
  @JsonKey(name: ProductDto.categoryPathKey_)
  List<ProductCategoryRef> get categoryPath;

  /// name
  @JsonKey(name: ProductDto.nameKey_)
  String get name;

  /// description
  @JsonKey(name: ProductDto.descriptionKey_)
  String? get description;

  /// barcode
  @JsonKey(name: ProductDto.barcodeKey_)
  String? get barcode;

  /// unitaryPurchasePrice
  @JsonKey(name: ProductDto.unitaryPurchasePriceKey_)
  double? get unitaryPurchasePrice;

  /// markupPercentage
  @JsonKey(name: ProductDto.markupPercentageKey_)
  double? get markupPercentage;

  /// unitarySalePrice
  @JsonKey(name: ProductDto.unitarySalePriceKey_)
  double? get unitarySalePrice;

  /// hasVariants
  @JsonKey(name: ProductDto.hasVariantsKey_)
  bool get hasVariants;

  /// useBooleanStock
  @JsonKey(name: ProductDto.useBooleanStockKey_)
  bool get useBooleanStock;

  /// hasStock
  @JsonKey(name: ProductDto.hasStockKey_)
  bool get hasStock;

  /// stock
  @JsonKey(name: ProductDto.stockKey_)
  int? get stock;

  /// baseUom
  @JsonKey(name: ProductDto.baseUomKey_)
  BaseUomKind get baseUom;

  /// allowGeneric
  @JsonKey(name: ProductDto.allowGenericKey_)
  bool get allowGeneric;

  /// variants
  @JsonKey(name: ProductDto.variantsKey_)
  List<ProductVariantDto> get variants;

  /// presentations
  @JsonKey(name: ProductDto.presentationsKey_)
  List<ProductPresentationDto> get presentations;

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      _$ProductDtoCopyWithImpl<ProductDto>(this as ProductDto, _$identity);

  /// Serializes this ProductDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductDto &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.categoryPath, categoryPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.unitaryPurchasePrice, unitaryPurchasePrice) ||
                other.unitaryPurchasePrice == unitaryPurchasePrice) &&
            (identical(other.markupPercentage, markupPercentage) ||
                other.markupPercentage == markupPercentage) &&
            (identical(other.unitarySalePrice, unitarySalePrice) ||
                other.unitarySalePrice == unitarySalePrice) &&
            (identical(other.hasVariants, hasVariants) ||
                other.hasVariants == hasVariants) &&
            (identical(other.useBooleanStock, useBooleanStock) ||
                other.useBooleanStock == useBooleanStock) &&
            (identical(other.hasStock, hasStock) ||
                other.hasStock == hasStock) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.baseUom, baseUom) || other.baseUom == baseUom) &&
            (identical(other.allowGeneric, allowGeneric) ||
                other.allowGeneric == allowGeneric) &&
            const DeepCollectionEquality().equals(other.variants, variants) &&
            const DeepCollectionEquality()
                .equals(other.presentations, presentations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(categoryPath),
      name,
      description,
      barcode,
      unitaryPurchasePrice,
      markupPercentage,
      unitarySalePrice,
      hasVariants,
      useBooleanStock,
      hasStock,
      stock,
      baseUom,
      allowGeneric,
      const DeepCollectionEquality().hash(variants),
      const DeepCollectionEquality().hash(presentations));

  @override
  String toString() {
    return 'ProductDto(id: $id, categoryPath: $categoryPath, name: $name, description: $description, barcode: $barcode, unitaryPurchasePrice: $unitaryPurchasePrice, markupPercentage: $markupPercentage, unitarySalePrice: $unitarySalePrice, hasVariants: $hasVariants, useBooleanStock: $useBooleanStock, hasStock: $hasStock, stock: $stock, baseUom: $baseUom, allowGeneric: $allowGeneric, variants: $variants, presentations: $presentations)';
  }
}

/// @nodoc
abstract mixin class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) _then) =
      _$ProductDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ProductDto.idKey_) String id,
      @JsonKey(name: ProductDto.categoryPathKey_)
      List<ProductCategoryRef> categoryPath,
      @JsonKey(name: ProductDto.nameKey_) String name,
      @JsonKey(name: ProductDto.descriptionKey_) String? description,
      @JsonKey(name: ProductDto.barcodeKey_) String? barcode,
      @JsonKey(name: ProductDto.unitaryPurchasePriceKey_)
      double? unitaryPurchasePrice,
      @JsonKey(name: ProductDto.markupPercentageKey_) double? markupPercentage,
      @JsonKey(name: ProductDto.unitarySalePriceKey_) double? unitarySalePrice,
      @JsonKey(name: ProductDto.hasVariantsKey_) bool hasVariants,
      @JsonKey(name: ProductDto.useBooleanStockKey_) bool useBooleanStock,
      @JsonKey(name: ProductDto.hasStockKey_) bool hasStock,
      @JsonKey(name: ProductDto.stockKey_) int? stock,
      @JsonKey(name: ProductDto.baseUomKey_) BaseUomKind baseUom,
      @JsonKey(name: ProductDto.allowGenericKey_) bool allowGeneric,
      @JsonKey(name: ProductDto.variantsKey_) List<ProductVariantDto> variants,
      @JsonKey(name: ProductDto.presentationsKey_)
      List<ProductPresentationDto> presentations});
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res> implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._self, this._then);

  final ProductDto _self;
  final $Res Function(ProductDto) _then;

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryPath = null,
    Object? name = null,
    Object? description = freezed,
    Object? barcode = freezed,
    Object? unitaryPurchasePrice = freezed,
    Object? markupPercentage = freezed,
    Object? unitarySalePrice = freezed,
    Object? hasVariants = null,
    Object? useBooleanStock = null,
    Object? hasStock = null,
    Object? stock = freezed,
    Object? baseUom = null,
    Object? allowGeneric = null,
    Object? variants = null,
    Object? presentations = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryPath: null == categoryPath
          ? _self.categoryPath
          : categoryPath // ignore: cast_nullable_to_non_nullable
              as List<ProductCategoryRef>,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _self.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      unitaryPurchasePrice: freezed == unitaryPurchasePrice
          ? _self.unitaryPurchasePrice
          : unitaryPurchasePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      markupPercentage: freezed == markupPercentage
          ? _self.markupPercentage
          : markupPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      unitarySalePrice: freezed == unitarySalePrice
          ? _self.unitarySalePrice
          : unitarySalePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      hasVariants: null == hasVariants
          ? _self.hasVariants
          : hasVariants // ignore: cast_nullable_to_non_nullable
              as bool,
      useBooleanStock: null == useBooleanStock
          ? _self.useBooleanStock
          : useBooleanStock // ignore: cast_nullable_to_non_nullable
              as bool,
      hasStock: null == hasStock
          ? _self.hasStock
          : hasStock // ignore: cast_nullable_to_non_nullable
              as bool,
      stock: freezed == stock
          ? _self.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      baseUom: null == baseUom
          ? _self.baseUom
          : baseUom // ignore: cast_nullable_to_non_nullable
              as BaseUomKind,
      allowGeneric: null == allowGeneric
          ? _self.allowGeneric
          : allowGeneric // ignore: cast_nullable_to_non_nullable
              as bool,
      variants: null == variants
          ? _self.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantDto>,
      presentations: null == presentations
          ? _self.presentations
          : presentations // ignore: cast_nullable_to_non_nullable
              as List<ProductPresentationDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductDto].
extension ProductDtoPatterns on ProductDto {
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
    TResult Function(_ProductDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductDto() when $default != null:
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
    TResult Function(_ProductDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDto():
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
    TResult? Function(_ProductDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDto() when $default != null:
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
            @JsonKey(name: ProductDto.idKey_) String id,
            @JsonKey(name: ProductDto.categoryPathKey_)
            List<ProductCategoryRef> categoryPath,
            @JsonKey(name: ProductDto.nameKey_) String name,
            @JsonKey(name: ProductDto.descriptionKey_) String? description,
            @JsonKey(name: ProductDto.barcodeKey_) String? barcode,
            @JsonKey(name: ProductDto.unitaryPurchasePriceKey_)
            double? unitaryPurchasePrice,
            @JsonKey(name: ProductDto.markupPercentageKey_)
            double? markupPercentage,
            @JsonKey(name: ProductDto.unitarySalePriceKey_)
            double? unitarySalePrice,
            @JsonKey(name: ProductDto.hasVariantsKey_) bool hasVariants,
            @JsonKey(name: ProductDto.useBooleanStockKey_) bool useBooleanStock,
            @JsonKey(name: ProductDto.hasStockKey_) bool hasStock,
            @JsonKey(name: ProductDto.stockKey_) int? stock,
            @JsonKey(name: ProductDto.baseUomKey_) BaseUomKind baseUom,
            @JsonKey(name: ProductDto.allowGenericKey_) bool allowGeneric,
            @JsonKey(name: ProductDto.variantsKey_)
            List<ProductVariantDto> variants,
            @JsonKey(name: ProductDto.presentationsKey_)
            List<ProductPresentationDto> presentations)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductDto() when $default != null:
        return $default(
            _that.id,
            _that.categoryPath,
            _that.name,
            _that.description,
            _that.barcode,
            _that.unitaryPurchasePrice,
            _that.markupPercentage,
            _that.unitarySalePrice,
            _that.hasVariants,
            _that.useBooleanStock,
            _that.hasStock,
            _that.stock,
            _that.baseUom,
            _that.allowGeneric,
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
            @JsonKey(name: ProductDto.idKey_) String id,
            @JsonKey(name: ProductDto.categoryPathKey_)
            List<ProductCategoryRef> categoryPath,
            @JsonKey(name: ProductDto.nameKey_) String name,
            @JsonKey(name: ProductDto.descriptionKey_) String? description,
            @JsonKey(name: ProductDto.barcodeKey_) String? barcode,
            @JsonKey(name: ProductDto.unitaryPurchasePriceKey_)
            double? unitaryPurchasePrice,
            @JsonKey(name: ProductDto.markupPercentageKey_)
            double? markupPercentage,
            @JsonKey(name: ProductDto.unitarySalePriceKey_)
            double? unitarySalePrice,
            @JsonKey(name: ProductDto.hasVariantsKey_) bool hasVariants,
            @JsonKey(name: ProductDto.useBooleanStockKey_) bool useBooleanStock,
            @JsonKey(name: ProductDto.hasStockKey_) bool hasStock,
            @JsonKey(name: ProductDto.stockKey_) int? stock,
            @JsonKey(name: ProductDto.baseUomKey_) BaseUomKind baseUom,
            @JsonKey(name: ProductDto.allowGenericKey_) bool allowGeneric,
            @JsonKey(name: ProductDto.variantsKey_)
            List<ProductVariantDto> variants,
            @JsonKey(name: ProductDto.presentationsKey_)
            List<ProductPresentationDto> presentations)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDto():
        return $default(
            _that.id,
            _that.categoryPath,
            _that.name,
            _that.description,
            _that.barcode,
            _that.unitaryPurchasePrice,
            _that.markupPercentage,
            _that.unitarySalePrice,
            _that.hasVariants,
            _that.useBooleanStock,
            _that.hasStock,
            _that.stock,
            _that.baseUom,
            _that.allowGeneric,
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
            @JsonKey(name: ProductDto.idKey_) String id,
            @JsonKey(name: ProductDto.categoryPathKey_)
            List<ProductCategoryRef> categoryPath,
            @JsonKey(name: ProductDto.nameKey_) String name,
            @JsonKey(name: ProductDto.descriptionKey_) String? description,
            @JsonKey(name: ProductDto.barcodeKey_) String? barcode,
            @JsonKey(name: ProductDto.unitaryPurchasePriceKey_)
            double? unitaryPurchasePrice,
            @JsonKey(name: ProductDto.markupPercentageKey_)
            double? markupPercentage,
            @JsonKey(name: ProductDto.unitarySalePriceKey_)
            double? unitarySalePrice,
            @JsonKey(name: ProductDto.hasVariantsKey_) bool hasVariants,
            @JsonKey(name: ProductDto.useBooleanStockKey_) bool useBooleanStock,
            @JsonKey(name: ProductDto.hasStockKey_) bool hasStock,
            @JsonKey(name: ProductDto.stockKey_) int? stock,
            @JsonKey(name: ProductDto.baseUomKey_) BaseUomKind baseUom,
            @JsonKey(name: ProductDto.allowGenericKey_) bool allowGeneric,
            @JsonKey(name: ProductDto.variantsKey_)
            List<ProductVariantDto> variants,
            @JsonKey(name: ProductDto.presentationsKey_)
            List<ProductPresentationDto> presentations)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductDto() when $default != null:
        return $default(
            _that.id,
            _that.categoryPath,
            _that.name,
            _that.description,
            _that.barcode,
            _that.unitaryPurchasePrice,
            _that.markupPercentage,
            _that.unitarySalePrice,
            _that.hasVariants,
            _that.useBooleanStock,
            _that.hasStock,
            _that.stock,
            _that.baseUom,
            _that.allowGeneric,
            _that.variants,
            _that.presentations);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ProductDto extends ProductDto {
  const _ProductDto(
      {@JsonKey(name: ProductDto.idKey_) required this.id,
      @JsonKey(name: ProductDto.categoryPathKey_)
      required final List<ProductCategoryRef> categoryPath,
      @JsonKey(name: ProductDto.nameKey_) required this.name,
      @JsonKey(name: ProductDto.descriptionKey_) this.description,
      @JsonKey(name: ProductDto.barcodeKey_) this.barcode,
      @JsonKey(name: ProductDto.unitaryPurchasePriceKey_)
      this.unitaryPurchasePrice,
      @JsonKey(name: ProductDto.markupPercentageKey_) this.markupPercentage,
      @JsonKey(name: ProductDto.unitarySalePriceKey_) this.unitarySalePrice,
      @JsonKey(name: ProductDto.hasVariantsKey_) required this.hasVariants,
      @JsonKey(name: ProductDto.useBooleanStockKey_)
      required this.useBooleanStock,
      @JsonKey(name: ProductDto.hasStockKey_) required this.hasStock,
      @JsonKey(name: ProductDto.stockKey_) this.stock,
      @JsonKey(name: ProductDto.baseUomKey_) required this.baseUom,
      @JsonKey(name: ProductDto.allowGenericKey_) required this.allowGeneric,
      @JsonKey(name: ProductDto.variantsKey_)
      required final List<ProductVariantDto> variants,
      @JsonKey(name: ProductDto.presentationsKey_)
      required final List<ProductPresentationDto> presentations})
      : _categoryPath = categoryPath,
        _variants = variants,
        _presentations = presentations,
        super._();
  factory _ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: ProductDto.idKey_)
  final String id;

  /// categoryPath
  final List<ProductCategoryRef> _categoryPath;

  /// categoryPath
  @override
  @JsonKey(name: ProductDto.categoryPathKey_)
  List<ProductCategoryRef> get categoryPath {
    if (_categoryPath is EqualUnmodifiableListView) return _categoryPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryPath);
  }

  /// name
  @override
  @JsonKey(name: ProductDto.nameKey_)
  final String name;

  /// description
  @override
  @JsonKey(name: ProductDto.descriptionKey_)
  final String? description;

  /// barcode
  @override
  @JsonKey(name: ProductDto.barcodeKey_)
  final String? barcode;

  /// unitaryPurchasePrice
  @override
  @JsonKey(name: ProductDto.unitaryPurchasePriceKey_)
  final double? unitaryPurchasePrice;

  /// markupPercentage
  @override
  @JsonKey(name: ProductDto.markupPercentageKey_)
  final double? markupPercentage;

  /// unitarySalePrice
  @override
  @JsonKey(name: ProductDto.unitarySalePriceKey_)
  final double? unitarySalePrice;

  /// hasVariants
  @override
  @JsonKey(name: ProductDto.hasVariantsKey_)
  final bool hasVariants;

  /// useBooleanStock
  @override
  @JsonKey(name: ProductDto.useBooleanStockKey_)
  final bool useBooleanStock;

  /// hasStock
  @override
  @JsonKey(name: ProductDto.hasStockKey_)
  final bool hasStock;

  /// stock
  @override
  @JsonKey(name: ProductDto.stockKey_)
  final int? stock;

  /// baseUom
  @override
  @JsonKey(name: ProductDto.baseUomKey_)
  final BaseUomKind baseUom;

  /// allowGeneric
  @override
  @JsonKey(name: ProductDto.allowGenericKey_)
  final bool allowGeneric;

  /// variants
  final List<ProductVariantDto> _variants;

  /// variants
  @override
  @JsonKey(name: ProductDto.variantsKey_)
  List<ProductVariantDto> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  /// presentations
  final List<ProductPresentationDto> _presentations;

  /// presentations
  @override
  @JsonKey(name: ProductDto.presentationsKey_)
  List<ProductPresentationDto> get presentations {
    if (_presentations is EqualUnmodifiableListView) return _presentations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_presentations);
  }

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductDtoCopyWith<_ProductDto> get copyWith =>
      __$ProductDtoCopyWithImpl<_ProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDto &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._categoryPath, _categoryPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.unitaryPurchasePrice, unitaryPurchasePrice) ||
                other.unitaryPurchasePrice == unitaryPurchasePrice) &&
            (identical(other.markupPercentage, markupPercentage) ||
                other.markupPercentage == markupPercentage) &&
            (identical(other.unitarySalePrice, unitarySalePrice) ||
                other.unitarySalePrice == unitarySalePrice) &&
            (identical(other.hasVariants, hasVariants) ||
                other.hasVariants == hasVariants) &&
            (identical(other.useBooleanStock, useBooleanStock) ||
                other.useBooleanStock == useBooleanStock) &&
            (identical(other.hasStock, hasStock) ||
                other.hasStock == hasStock) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.baseUom, baseUom) || other.baseUom == baseUom) &&
            (identical(other.allowGeneric, allowGeneric) ||
                other.allowGeneric == allowGeneric) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality()
                .equals(other._presentations, _presentations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_categoryPath),
      name,
      description,
      barcode,
      unitaryPurchasePrice,
      markupPercentage,
      unitarySalePrice,
      hasVariants,
      useBooleanStock,
      hasStock,
      stock,
      baseUom,
      allowGeneric,
      const DeepCollectionEquality().hash(_variants),
      const DeepCollectionEquality().hash(_presentations));

  @override
  String toString() {
    return 'ProductDto(id: $id, categoryPath: $categoryPath, name: $name, description: $description, barcode: $barcode, unitaryPurchasePrice: $unitaryPurchasePrice, markupPercentage: $markupPercentage, unitarySalePrice: $unitarySalePrice, hasVariants: $hasVariants, useBooleanStock: $useBooleanStock, hasStock: $hasStock, stock: $stock, baseUom: $baseUom, allowGeneric: $allowGeneric, variants: $variants, presentations: $presentations)';
  }
}

/// @nodoc
abstract mixin class _$ProductDtoCopyWith<$Res>
    implements $ProductDtoCopyWith<$Res> {
  factory _$ProductDtoCopyWith(
          _ProductDto value, $Res Function(_ProductDto) _then) =
      __$ProductDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProductDto.idKey_) String id,
      @JsonKey(name: ProductDto.categoryPathKey_)
      List<ProductCategoryRef> categoryPath,
      @JsonKey(name: ProductDto.nameKey_) String name,
      @JsonKey(name: ProductDto.descriptionKey_) String? description,
      @JsonKey(name: ProductDto.barcodeKey_) String? barcode,
      @JsonKey(name: ProductDto.unitaryPurchasePriceKey_)
      double? unitaryPurchasePrice,
      @JsonKey(name: ProductDto.markupPercentageKey_) double? markupPercentage,
      @JsonKey(name: ProductDto.unitarySalePriceKey_) double? unitarySalePrice,
      @JsonKey(name: ProductDto.hasVariantsKey_) bool hasVariants,
      @JsonKey(name: ProductDto.useBooleanStockKey_) bool useBooleanStock,
      @JsonKey(name: ProductDto.hasStockKey_) bool hasStock,
      @JsonKey(name: ProductDto.stockKey_) int? stock,
      @JsonKey(name: ProductDto.baseUomKey_) BaseUomKind baseUom,
      @JsonKey(name: ProductDto.allowGenericKey_) bool allowGeneric,
      @JsonKey(name: ProductDto.variantsKey_) List<ProductVariantDto> variants,
      @JsonKey(name: ProductDto.presentationsKey_)
      List<ProductPresentationDto> presentations});
}

/// @nodoc
class __$ProductDtoCopyWithImpl<$Res> implements _$ProductDtoCopyWith<$Res> {
  __$ProductDtoCopyWithImpl(this._self, this._then);

  final _ProductDto _self;
  final $Res Function(_ProductDto) _then;

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? categoryPath = null,
    Object? name = null,
    Object? description = freezed,
    Object? barcode = freezed,
    Object? unitaryPurchasePrice = freezed,
    Object? markupPercentage = freezed,
    Object? unitarySalePrice = freezed,
    Object? hasVariants = null,
    Object? useBooleanStock = null,
    Object? hasStock = null,
    Object? stock = freezed,
    Object? baseUom = null,
    Object? allowGeneric = null,
    Object? variants = null,
    Object? presentations = null,
  }) {
    return _then(_ProductDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryPath: null == categoryPath
          ? _self._categoryPath
          : categoryPath // ignore: cast_nullable_to_non_nullable
              as List<ProductCategoryRef>,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _self.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      unitaryPurchasePrice: freezed == unitaryPurchasePrice
          ? _self.unitaryPurchasePrice
          : unitaryPurchasePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      markupPercentage: freezed == markupPercentage
          ? _self.markupPercentage
          : markupPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      unitarySalePrice: freezed == unitarySalePrice
          ? _self.unitarySalePrice
          : unitarySalePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      hasVariants: null == hasVariants
          ? _self.hasVariants
          : hasVariants // ignore: cast_nullable_to_non_nullable
              as bool,
      useBooleanStock: null == useBooleanStock
          ? _self.useBooleanStock
          : useBooleanStock // ignore: cast_nullable_to_non_nullable
              as bool,
      hasStock: null == hasStock
          ? _self.hasStock
          : hasStock // ignore: cast_nullable_to_non_nullable
              as bool,
      stock: freezed == stock
          ? _self.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      baseUom: null == baseUom
          ? _self.baseUom
          : baseUom // ignore: cast_nullable_to_non_nullable
              as BaseUomKind,
      allowGeneric: null == allowGeneric
          ? _self.allowGeneric
          : allowGeneric // ignore: cast_nullable_to_non_nullable
              as bool,
      variants: null == variants
          ? _self._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantDto>,
      presentations: null == presentations
          ? _self._presentations
          : presentations // ignore: cast_nullable_to_non_nullable
              as List<ProductPresentationDto>,
    ));
  }
}
