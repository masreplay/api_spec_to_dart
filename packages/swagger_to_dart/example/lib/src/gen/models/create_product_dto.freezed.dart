// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateProductDto {
  /// name
  @JsonKey(name: CreateProductDto.nameKey_)
  String get name;

  /// categoryId
  @JsonKey(name: CreateProductDto.categoryIdKey_)
  String get categoryId;

  /// baseUom
  @JsonKey(name: CreateProductDto.baseUomKey_)
  BaseUomKind get baseUom;

  /// description
  @JsonKey(name: CreateProductDto.descriptionKey_)
  String? get description;

  /// barcode
  @JsonKey(name: CreateProductDto.barcodeKey_)
  String? get barcode;

  /// purchasePrice
  @JsonKey(name: CreateProductDto.purchasePriceKey_)
  double? get purchasePrice;

  /// salePrice
  @JsonKey(name: CreateProductDto.salePriceKey_)
  double? get salePrice;

  /// markupPercentage
  @JsonKey(name: CreateProductDto.markupPercentageKey_)
  double? get markupPercentage;

  /// useBooleanStock
  @JsonKey(name: CreateProductDto.useBooleanStockKey_)
  bool get useBooleanStock;

  /// allowGeneric
  @JsonKey(name: CreateProductDto.allowGenericKey_)
  bool get allowGeneric;

  /// variants
  @JsonKey(name: CreateProductDto.variantsKey_)
  List<CreateProductVariantDto> get variants;

  /// presentations
  @JsonKey(name: CreateProductDto.presentationsKey_)
  List<CreateProductPresentationDto> get presentations;

  /// Create a copy of CreateProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateProductDtoCopyWith<CreateProductDto> get copyWith =>
      _$CreateProductDtoCopyWithImpl<CreateProductDto>(
          this as CreateProductDto, _$identity);

  /// Serializes this CreateProductDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateProductDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.baseUom, baseUom) || other.baseUom == baseUom) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.markupPercentage, markupPercentage) ||
                other.markupPercentage == markupPercentage) &&
            (identical(other.useBooleanStock, useBooleanStock) ||
                other.useBooleanStock == useBooleanStock) &&
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
      name,
      categoryId,
      baseUom,
      description,
      barcode,
      purchasePrice,
      salePrice,
      markupPercentage,
      useBooleanStock,
      allowGeneric,
      const DeepCollectionEquality().hash(variants),
      const DeepCollectionEquality().hash(presentations));

  @override
  String toString() {
    return 'CreateProductDto(name: $name, categoryId: $categoryId, baseUom: $baseUom, description: $description, barcode: $barcode, purchasePrice: $purchasePrice, salePrice: $salePrice, markupPercentage: $markupPercentage, useBooleanStock: $useBooleanStock, allowGeneric: $allowGeneric, variants: $variants, presentations: $presentations)';
  }
}

/// @nodoc
abstract mixin class $CreateProductDtoCopyWith<$Res> {
  factory $CreateProductDtoCopyWith(
          CreateProductDto value, $Res Function(CreateProductDto) _then) =
      _$CreateProductDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreateProductDto.nameKey_) String name,
      @JsonKey(name: CreateProductDto.categoryIdKey_) String categoryId,
      @JsonKey(name: CreateProductDto.baseUomKey_) BaseUomKind baseUom,
      @JsonKey(name: CreateProductDto.descriptionKey_) String? description,
      @JsonKey(name: CreateProductDto.barcodeKey_) String? barcode,
      @JsonKey(name: CreateProductDto.purchasePriceKey_) double? purchasePrice,
      @JsonKey(name: CreateProductDto.salePriceKey_) double? salePrice,
      @JsonKey(name: CreateProductDto.markupPercentageKey_)
      double? markupPercentage,
      @JsonKey(name: CreateProductDto.useBooleanStockKey_) bool useBooleanStock,
      @JsonKey(name: CreateProductDto.allowGenericKey_) bool allowGeneric,
      @JsonKey(name: CreateProductDto.variantsKey_)
      List<CreateProductVariantDto> variants,
      @JsonKey(name: CreateProductDto.presentationsKey_)
      List<CreateProductPresentationDto> presentations});
}

/// @nodoc
class _$CreateProductDtoCopyWithImpl<$Res>
    implements $CreateProductDtoCopyWith<$Res> {
  _$CreateProductDtoCopyWithImpl(this._self, this._then);

  final CreateProductDto _self;
  final $Res Function(CreateProductDto) _then;

  /// Create a copy of CreateProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? categoryId = null,
    Object? baseUom = null,
    Object? description = freezed,
    Object? barcode = freezed,
    Object? purchasePrice = freezed,
    Object? salePrice = freezed,
    Object? markupPercentage = freezed,
    Object? useBooleanStock = null,
    Object? allowGeneric = null,
    Object? variants = null,
    Object? presentations = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      baseUom: null == baseUom
          ? _self.baseUom
          : baseUom // ignore: cast_nullable_to_non_nullable
              as BaseUomKind,
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
      salePrice: freezed == salePrice
          ? _self.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      markupPercentage: freezed == markupPercentage
          ? _self.markupPercentage
          : markupPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      useBooleanStock: null == useBooleanStock
          ? _self.useBooleanStock
          : useBooleanStock // ignore: cast_nullable_to_non_nullable
              as bool,
      allowGeneric: null == allowGeneric
          ? _self.allowGeneric
          : allowGeneric // ignore: cast_nullable_to_non_nullable
              as bool,
      variants: null == variants
          ? _self.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<CreateProductVariantDto>,
      presentations: null == presentations
          ? _self.presentations
          : presentations // ignore: cast_nullable_to_non_nullable
              as List<CreateProductPresentationDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateProductDto].
extension CreateProductDtoPatterns on CreateProductDto {
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
    TResult Function(_CreateProductDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProductDto() when $default != null:
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
    TResult Function(_CreateProductDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductDto():
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
    TResult? Function(_CreateProductDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductDto() when $default != null:
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
            @JsonKey(name: CreateProductDto.nameKey_) String name,
            @JsonKey(name: CreateProductDto.categoryIdKey_) String categoryId,
            @JsonKey(name: CreateProductDto.baseUomKey_) BaseUomKind baseUom,
            @JsonKey(name: CreateProductDto.descriptionKey_)
            String? description,
            @JsonKey(name: CreateProductDto.barcodeKey_) String? barcode,
            @JsonKey(name: CreateProductDto.purchasePriceKey_)
            double? purchasePrice,
            @JsonKey(name: CreateProductDto.salePriceKey_) double? salePrice,
            @JsonKey(name: CreateProductDto.markupPercentageKey_)
            double? markupPercentage,
            @JsonKey(name: CreateProductDto.useBooleanStockKey_)
            bool useBooleanStock,
            @JsonKey(name: CreateProductDto.allowGenericKey_) bool allowGeneric,
            @JsonKey(name: CreateProductDto.variantsKey_)
            List<CreateProductVariantDto> variants,
            @JsonKey(name: CreateProductDto.presentationsKey_)
            List<CreateProductPresentationDto> presentations)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateProductDto() when $default != null:
        return $default(
            _that.name,
            _that.categoryId,
            _that.baseUom,
            _that.description,
            _that.barcode,
            _that.purchasePrice,
            _that.salePrice,
            _that.markupPercentage,
            _that.useBooleanStock,
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
            @JsonKey(name: CreateProductDto.nameKey_) String name,
            @JsonKey(name: CreateProductDto.categoryIdKey_) String categoryId,
            @JsonKey(name: CreateProductDto.baseUomKey_) BaseUomKind baseUom,
            @JsonKey(name: CreateProductDto.descriptionKey_)
            String? description,
            @JsonKey(name: CreateProductDto.barcodeKey_) String? barcode,
            @JsonKey(name: CreateProductDto.purchasePriceKey_)
            double? purchasePrice,
            @JsonKey(name: CreateProductDto.salePriceKey_) double? salePrice,
            @JsonKey(name: CreateProductDto.markupPercentageKey_)
            double? markupPercentage,
            @JsonKey(name: CreateProductDto.useBooleanStockKey_)
            bool useBooleanStock,
            @JsonKey(name: CreateProductDto.allowGenericKey_) bool allowGeneric,
            @JsonKey(name: CreateProductDto.variantsKey_)
            List<CreateProductVariantDto> variants,
            @JsonKey(name: CreateProductDto.presentationsKey_)
            List<CreateProductPresentationDto> presentations)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductDto():
        return $default(
            _that.name,
            _that.categoryId,
            _that.baseUom,
            _that.description,
            _that.barcode,
            _that.purchasePrice,
            _that.salePrice,
            _that.markupPercentage,
            _that.useBooleanStock,
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
            @JsonKey(name: CreateProductDto.nameKey_) String name,
            @JsonKey(name: CreateProductDto.categoryIdKey_) String categoryId,
            @JsonKey(name: CreateProductDto.baseUomKey_) BaseUomKind baseUom,
            @JsonKey(name: CreateProductDto.descriptionKey_)
            String? description,
            @JsonKey(name: CreateProductDto.barcodeKey_) String? barcode,
            @JsonKey(name: CreateProductDto.purchasePriceKey_)
            double? purchasePrice,
            @JsonKey(name: CreateProductDto.salePriceKey_) double? salePrice,
            @JsonKey(name: CreateProductDto.markupPercentageKey_)
            double? markupPercentage,
            @JsonKey(name: CreateProductDto.useBooleanStockKey_)
            bool useBooleanStock,
            @JsonKey(name: CreateProductDto.allowGenericKey_) bool allowGeneric,
            @JsonKey(name: CreateProductDto.variantsKey_)
            List<CreateProductVariantDto> variants,
            @JsonKey(name: CreateProductDto.presentationsKey_)
            List<CreateProductPresentationDto> presentations)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateProductDto() when $default != null:
        return $default(
            _that.name,
            _that.categoryId,
            _that.baseUom,
            _that.description,
            _that.barcode,
            _that.purchasePrice,
            _that.salePrice,
            _that.markupPercentage,
            _that.useBooleanStock,
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
class _CreateProductDto extends CreateProductDto {
  const _CreateProductDto(
      {@JsonKey(name: CreateProductDto.nameKey_) required this.name,
      @JsonKey(name: CreateProductDto.categoryIdKey_) required this.categoryId,
      @JsonKey(name: CreateProductDto.baseUomKey_) required this.baseUom,
      @JsonKey(name: CreateProductDto.descriptionKey_) this.description,
      @JsonKey(name: CreateProductDto.barcodeKey_) this.barcode,
      @JsonKey(name: CreateProductDto.purchasePriceKey_) this.purchasePrice,
      @JsonKey(name: CreateProductDto.salePriceKey_) this.salePrice,
      @JsonKey(name: CreateProductDto.markupPercentageKey_)
      this.markupPercentage,
      @JsonKey(name: CreateProductDto.useBooleanStockKey_)
      required this.useBooleanStock,
      @JsonKey(name: CreateProductDto.allowGenericKey_)
      required this.allowGeneric,
      @JsonKey(name: CreateProductDto.variantsKey_)
      required final List<CreateProductVariantDto> variants,
      @JsonKey(name: CreateProductDto.presentationsKey_)
      required final List<CreateProductPresentationDto> presentations})
      : _variants = variants,
        _presentations = presentations,
        super._();
  factory _CreateProductDto.fromJson(Map<String, dynamic> json) =>
      _$CreateProductDtoFromJson(json);

  /// name
  @override
  @JsonKey(name: CreateProductDto.nameKey_)
  final String name;

  /// categoryId
  @override
  @JsonKey(name: CreateProductDto.categoryIdKey_)
  final String categoryId;

  /// baseUom
  @override
  @JsonKey(name: CreateProductDto.baseUomKey_)
  final BaseUomKind baseUom;

  /// description
  @override
  @JsonKey(name: CreateProductDto.descriptionKey_)
  final String? description;

  /// barcode
  @override
  @JsonKey(name: CreateProductDto.barcodeKey_)
  final String? barcode;

  /// purchasePrice
  @override
  @JsonKey(name: CreateProductDto.purchasePriceKey_)
  final double? purchasePrice;

  /// salePrice
  @override
  @JsonKey(name: CreateProductDto.salePriceKey_)
  final double? salePrice;

  /// markupPercentage
  @override
  @JsonKey(name: CreateProductDto.markupPercentageKey_)
  final double? markupPercentage;

  /// useBooleanStock
  @override
  @JsonKey(name: CreateProductDto.useBooleanStockKey_)
  final bool useBooleanStock;

  /// allowGeneric
  @override
  @JsonKey(name: CreateProductDto.allowGenericKey_)
  final bool allowGeneric;

  /// variants
  final List<CreateProductVariantDto> _variants;

  /// variants
  @override
  @JsonKey(name: CreateProductDto.variantsKey_)
  List<CreateProductVariantDto> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  /// presentations
  final List<CreateProductPresentationDto> _presentations;

  /// presentations
  @override
  @JsonKey(name: CreateProductDto.presentationsKey_)
  List<CreateProductPresentationDto> get presentations {
    if (_presentations is EqualUnmodifiableListView) return _presentations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_presentations);
  }

  /// Create a copy of CreateProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateProductDtoCopyWith<_CreateProductDto> get copyWith =>
      __$CreateProductDtoCopyWithImpl<_CreateProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateProductDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProductDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.baseUom, baseUom) || other.baseUom == baseUom) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.markupPercentage, markupPercentage) ||
                other.markupPercentage == markupPercentage) &&
            (identical(other.useBooleanStock, useBooleanStock) ||
                other.useBooleanStock == useBooleanStock) &&
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
      name,
      categoryId,
      baseUom,
      description,
      barcode,
      purchasePrice,
      salePrice,
      markupPercentage,
      useBooleanStock,
      allowGeneric,
      const DeepCollectionEquality().hash(_variants),
      const DeepCollectionEquality().hash(_presentations));

  @override
  String toString() {
    return 'CreateProductDto(name: $name, categoryId: $categoryId, baseUom: $baseUom, description: $description, barcode: $barcode, purchasePrice: $purchasePrice, salePrice: $salePrice, markupPercentage: $markupPercentage, useBooleanStock: $useBooleanStock, allowGeneric: $allowGeneric, variants: $variants, presentations: $presentations)';
  }
}

/// @nodoc
abstract mixin class _$CreateProductDtoCopyWith<$Res>
    implements $CreateProductDtoCopyWith<$Res> {
  factory _$CreateProductDtoCopyWith(
          _CreateProductDto value, $Res Function(_CreateProductDto) _then) =
      __$CreateProductDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreateProductDto.nameKey_) String name,
      @JsonKey(name: CreateProductDto.categoryIdKey_) String categoryId,
      @JsonKey(name: CreateProductDto.baseUomKey_) BaseUomKind baseUom,
      @JsonKey(name: CreateProductDto.descriptionKey_) String? description,
      @JsonKey(name: CreateProductDto.barcodeKey_) String? barcode,
      @JsonKey(name: CreateProductDto.purchasePriceKey_) double? purchasePrice,
      @JsonKey(name: CreateProductDto.salePriceKey_) double? salePrice,
      @JsonKey(name: CreateProductDto.markupPercentageKey_)
      double? markupPercentage,
      @JsonKey(name: CreateProductDto.useBooleanStockKey_) bool useBooleanStock,
      @JsonKey(name: CreateProductDto.allowGenericKey_) bool allowGeneric,
      @JsonKey(name: CreateProductDto.variantsKey_)
      List<CreateProductVariantDto> variants,
      @JsonKey(name: CreateProductDto.presentationsKey_)
      List<CreateProductPresentationDto> presentations});
}

/// @nodoc
class __$CreateProductDtoCopyWithImpl<$Res>
    implements _$CreateProductDtoCopyWith<$Res> {
  __$CreateProductDtoCopyWithImpl(this._self, this._then);

  final _CreateProductDto _self;
  final $Res Function(_CreateProductDto) _then;

  /// Create a copy of CreateProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? categoryId = null,
    Object? baseUom = null,
    Object? description = freezed,
    Object? barcode = freezed,
    Object? purchasePrice = freezed,
    Object? salePrice = freezed,
    Object? markupPercentage = freezed,
    Object? useBooleanStock = null,
    Object? allowGeneric = null,
    Object? variants = null,
    Object? presentations = null,
  }) {
    return _then(_CreateProductDto(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      baseUom: null == baseUom
          ? _self.baseUom
          : baseUom // ignore: cast_nullable_to_non_nullable
              as BaseUomKind,
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
      salePrice: freezed == salePrice
          ? _self.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      markupPercentage: freezed == markupPercentage
          ? _self.markupPercentage
          : markupPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      useBooleanStock: null == useBooleanStock
          ? _self.useBooleanStock
          : useBooleanStock // ignore: cast_nullable_to_non_nullable
              as bool,
      allowGeneric: null == allowGeneric
          ? _self.allowGeneric
          : allowGeneric // ignore: cast_nullable_to_non_nullable
              as bool,
      variants: null == variants
          ? _self._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<CreateProductVariantDto>,
      presentations: null == presentations
          ? _self._presentations
          : presentations // ignore: cast_nullable_to_non_nullable
              as List<CreateProductPresentationDto>,
    ));
  }
}
