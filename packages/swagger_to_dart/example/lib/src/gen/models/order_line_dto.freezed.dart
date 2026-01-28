// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_line_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderLineDto {
  /// id
  @JsonKey(name: OrderLineDto.idKey_)
  String get id;

  /// productId
  @JsonKey(name: OrderLineDto.productIdKey_)
  String get productId;

  /// productName
  @JsonKey(name: OrderLineDto.productNameKey_)
  String get productName;

  /// variantId
  @JsonKey(name: OrderLineDto.variantIdKey_)
  String? get variantId;

  /// variantName
  @JsonKey(name: OrderLineDto.variantNameKey_)
  String? get variantName;

  /// presentationId
  @JsonKey(name: OrderLineDto.presentationIdKey_)
  String get presentationId;

  /// presentationName
  @JsonKey(name: OrderLineDto.presentationNameKey_)
  String get presentationName;

  /// presentationQuantityMultiplier
  @JsonKey(name: OrderLineDto.presentationQuantityMultiplierKey_)
  int get presentationQuantityMultiplier;

  /// quantity
  @JsonKey(name: OrderLineDto.quantityKey_)
  int get quantity;

  /// unitPriceExcludingTax
  @JsonKey(name: OrderLineDto.unitPriceExcludingTaxKey_)
  double get unitPriceExcludingTax;

  /// discountPercentage
  @JsonKey(name: OrderLineDto.discountPercentageKey_)
  double? get discountPercentage;

  /// discountAmount
  @JsonKey(name: OrderLineDto.discountAmountKey_)
  double? get discountAmount;

  /// netExcludingTax
  @JsonKey(name: OrderLineDto.netExcludingTaxKey_)
  double get netExcludingTax;

  /// totalTax
  @JsonKey(name: OrderLineDto.totalTaxKey_)
  double get totalTax;

  /// total
  @JsonKey(name: OrderLineDto.totalKey_)
  double get total;

  /// Create a copy of OrderLineDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderLineDtoCopyWith<OrderLineDto> get copyWith =>
      _$OrderLineDtoCopyWithImpl<OrderLineDto>(
          this as OrderLineDto, _$identity);

  /// Serializes this OrderLineDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderLineDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.presentationId, presentationId) ||
                other.presentationId == presentationId) &&
            (identical(other.presentationName, presentationName) ||
                other.presentationName == presentationName) &&
            (identical(other.presentationQuantityMultiplier,
                    presentationQuantityMultiplier) ||
                other.presentationQuantityMultiplier ==
                    presentationQuantityMultiplier) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPriceExcludingTax, unitPriceExcludingTax) ||
                other.unitPriceExcludingTax == unitPriceExcludingTax) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.netExcludingTax, netExcludingTax) ||
                other.netExcludingTax == netExcludingTax) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      productName,
      variantId,
      variantName,
      presentationId,
      presentationName,
      presentationQuantityMultiplier,
      quantity,
      unitPriceExcludingTax,
      discountPercentage,
      discountAmount,
      netExcludingTax,
      totalTax,
      total);

  @override
  String toString() {
    return 'OrderLineDto(id: $id, productId: $productId, productName: $productName, variantId: $variantId, variantName: $variantName, presentationId: $presentationId, presentationName: $presentationName, presentationQuantityMultiplier: $presentationQuantityMultiplier, quantity: $quantity, unitPriceExcludingTax: $unitPriceExcludingTax, discountPercentage: $discountPercentage, discountAmount: $discountAmount, netExcludingTax: $netExcludingTax, totalTax: $totalTax, total: $total)';
  }
}

/// @nodoc
abstract mixin class $OrderLineDtoCopyWith<$Res> {
  factory $OrderLineDtoCopyWith(
          OrderLineDto value, $Res Function(OrderLineDto) _then) =
      _$OrderLineDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: OrderLineDto.idKey_) String id,
      @JsonKey(name: OrderLineDto.productIdKey_) String productId,
      @JsonKey(name: OrderLineDto.productNameKey_) String productName,
      @JsonKey(name: OrderLineDto.variantIdKey_) String? variantId,
      @JsonKey(name: OrderLineDto.variantNameKey_) String? variantName,
      @JsonKey(name: OrderLineDto.presentationIdKey_) String presentationId,
      @JsonKey(name: OrderLineDto.presentationNameKey_) String presentationName,
      @JsonKey(name: OrderLineDto.presentationQuantityMultiplierKey_)
      int presentationQuantityMultiplier,
      @JsonKey(name: OrderLineDto.quantityKey_) int quantity,
      @JsonKey(name: OrderLineDto.unitPriceExcludingTaxKey_)
      double unitPriceExcludingTax,
      @JsonKey(name: OrderLineDto.discountPercentageKey_)
      double? discountPercentage,
      @JsonKey(name: OrderLineDto.discountAmountKey_) double? discountAmount,
      @JsonKey(name: OrderLineDto.netExcludingTaxKey_) double netExcludingTax,
      @JsonKey(name: OrderLineDto.totalTaxKey_) double totalTax,
      @JsonKey(name: OrderLineDto.totalKey_) double total});
}

/// @nodoc
class _$OrderLineDtoCopyWithImpl<$Res> implements $OrderLineDtoCopyWith<$Res> {
  _$OrderLineDtoCopyWithImpl(this._self, this._then);

  final OrderLineDto _self;
  final $Res Function(OrderLineDto) _then;

  /// Create a copy of OrderLineDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productName = null,
    Object? variantId = freezed,
    Object? variantName = freezed,
    Object? presentationId = null,
    Object? presentationName = null,
    Object? presentationQuantityMultiplier = null,
    Object? quantity = null,
    Object? unitPriceExcludingTax = null,
    Object? discountPercentage = freezed,
    Object? discountAmount = freezed,
    Object? netExcludingTax = null,
    Object? totalTax = null,
    Object? total = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _self.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      variantId: freezed == variantId
          ? _self.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _self.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      presentationId: null == presentationId
          ? _self.presentationId
          : presentationId // ignore: cast_nullable_to_non_nullable
              as String,
      presentationName: null == presentationName
          ? _self.presentationName
          : presentationName // ignore: cast_nullable_to_non_nullable
              as String,
      presentationQuantityMultiplier: null == presentationQuantityMultiplier
          ? _self.presentationQuantityMultiplier
          : presentationQuantityMultiplier // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPriceExcludingTax: null == unitPriceExcludingTax
          ? _self.unitPriceExcludingTax
          : unitPriceExcludingTax // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: freezed == discountPercentage
          ? _self.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      netExcludingTax: null == netExcludingTax
          ? _self.netExcludingTax
          : netExcludingTax // ignore: cast_nullable_to_non_nullable
              as double,
      totalTax: null == totalTax
          ? _self.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderLineDto].
extension OrderLineDtoPatterns on OrderLineDto {
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
    TResult Function(_OrderLineDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderLineDto() when $default != null:
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
    TResult Function(_OrderLineDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderLineDto():
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
    TResult? Function(_OrderLineDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderLineDto() when $default != null:
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
            @JsonKey(name: OrderLineDto.idKey_) String id,
            @JsonKey(name: OrderLineDto.productIdKey_) String productId,
            @JsonKey(name: OrderLineDto.productNameKey_) String productName,
            @JsonKey(name: OrderLineDto.variantIdKey_) String? variantId,
            @JsonKey(name: OrderLineDto.variantNameKey_) String? variantName,
            @JsonKey(name: OrderLineDto.presentationIdKey_)
            String presentationId,
            @JsonKey(name: OrderLineDto.presentationNameKey_)
            String presentationName,
            @JsonKey(name: OrderLineDto.presentationQuantityMultiplierKey_)
            int presentationQuantityMultiplier,
            @JsonKey(name: OrderLineDto.quantityKey_) int quantity,
            @JsonKey(name: OrderLineDto.unitPriceExcludingTaxKey_)
            double unitPriceExcludingTax,
            @JsonKey(name: OrderLineDto.discountPercentageKey_)
            double? discountPercentage,
            @JsonKey(name: OrderLineDto.discountAmountKey_)
            double? discountAmount,
            @JsonKey(name: OrderLineDto.netExcludingTaxKey_)
            double netExcludingTax,
            @JsonKey(name: OrderLineDto.totalTaxKey_) double totalTax,
            @JsonKey(name: OrderLineDto.totalKey_) double total)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderLineDto() when $default != null:
        return $default(
            _that.id,
            _that.productId,
            _that.productName,
            _that.variantId,
            _that.variantName,
            _that.presentationId,
            _that.presentationName,
            _that.presentationQuantityMultiplier,
            _that.quantity,
            _that.unitPriceExcludingTax,
            _that.discountPercentage,
            _that.discountAmount,
            _that.netExcludingTax,
            _that.totalTax,
            _that.total);
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
            @JsonKey(name: OrderLineDto.idKey_) String id,
            @JsonKey(name: OrderLineDto.productIdKey_) String productId,
            @JsonKey(name: OrderLineDto.productNameKey_) String productName,
            @JsonKey(name: OrderLineDto.variantIdKey_) String? variantId,
            @JsonKey(name: OrderLineDto.variantNameKey_) String? variantName,
            @JsonKey(name: OrderLineDto.presentationIdKey_)
            String presentationId,
            @JsonKey(name: OrderLineDto.presentationNameKey_)
            String presentationName,
            @JsonKey(name: OrderLineDto.presentationQuantityMultiplierKey_)
            int presentationQuantityMultiplier,
            @JsonKey(name: OrderLineDto.quantityKey_) int quantity,
            @JsonKey(name: OrderLineDto.unitPriceExcludingTaxKey_)
            double unitPriceExcludingTax,
            @JsonKey(name: OrderLineDto.discountPercentageKey_)
            double? discountPercentage,
            @JsonKey(name: OrderLineDto.discountAmountKey_)
            double? discountAmount,
            @JsonKey(name: OrderLineDto.netExcludingTaxKey_)
            double netExcludingTax,
            @JsonKey(name: OrderLineDto.totalTaxKey_) double totalTax,
            @JsonKey(name: OrderLineDto.totalKey_) double total)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderLineDto():
        return $default(
            _that.id,
            _that.productId,
            _that.productName,
            _that.variantId,
            _that.variantName,
            _that.presentationId,
            _that.presentationName,
            _that.presentationQuantityMultiplier,
            _that.quantity,
            _that.unitPriceExcludingTax,
            _that.discountPercentage,
            _that.discountAmount,
            _that.netExcludingTax,
            _that.totalTax,
            _that.total);
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
            @JsonKey(name: OrderLineDto.idKey_) String id,
            @JsonKey(name: OrderLineDto.productIdKey_) String productId,
            @JsonKey(name: OrderLineDto.productNameKey_) String productName,
            @JsonKey(name: OrderLineDto.variantIdKey_) String? variantId,
            @JsonKey(name: OrderLineDto.variantNameKey_) String? variantName,
            @JsonKey(name: OrderLineDto.presentationIdKey_)
            String presentationId,
            @JsonKey(name: OrderLineDto.presentationNameKey_)
            String presentationName,
            @JsonKey(name: OrderLineDto.presentationQuantityMultiplierKey_)
            int presentationQuantityMultiplier,
            @JsonKey(name: OrderLineDto.quantityKey_) int quantity,
            @JsonKey(name: OrderLineDto.unitPriceExcludingTaxKey_)
            double unitPriceExcludingTax,
            @JsonKey(name: OrderLineDto.discountPercentageKey_)
            double? discountPercentage,
            @JsonKey(name: OrderLineDto.discountAmountKey_)
            double? discountAmount,
            @JsonKey(name: OrderLineDto.netExcludingTaxKey_)
            double netExcludingTax,
            @JsonKey(name: OrderLineDto.totalTaxKey_) double totalTax,
            @JsonKey(name: OrderLineDto.totalKey_) double total)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderLineDto() when $default != null:
        return $default(
            _that.id,
            _that.productId,
            _that.productName,
            _that.variantId,
            _that.variantName,
            _that.presentationId,
            _that.presentationName,
            _that.presentationQuantityMultiplier,
            _that.quantity,
            _that.unitPriceExcludingTax,
            _that.discountPercentage,
            _that.discountAmount,
            _that.netExcludingTax,
            _that.totalTax,
            _that.total);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _OrderLineDto extends OrderLineDto {
  const _OrderLineDto(
      {@JsonKey(name: OrderLineDto.idKey_) required this.id,
      @JsonKey(name: OrderLineDto.productIdKey_) required this.productId,
      @JsonKey(name: OrderLineDto.productNameKey_) required this.productName,
      @JsonKey(name: OrderLineDto.variantIdKey_) this.variantId,
      @JsonKey(name: OrderLineDto.variantNameKey_) this.variantName,
      @JsonKey(name: OrderLineDto.presentationIdKey_)
      required this.presentationId,
      @JsonKey(name: OrderLineDto.presentationNameKey_)
      required this.presentationName,
      @JsonKey(name: OrderLineDto.presentationQuantityMultiplierKey_)
      required this.presentationQuantityMultiplier,
      @JsonKey(name: OrderLineDto.quantityKey_) required this.quantity,
      @JsonKey(name: OrderLineDto.unitPriceExcludingTaxKey_)
      required this.unitPriceExcludingTax,
      @JsonKey(name: OrderLineDto.discountPercentageKey_)
      this.discountPercentage,
      @JsonKey(name: OrderLineDto.discountAmountKey_) this.discountAmount,
      @JsonKey(name: OrderLineDto.netExcludingTaxKey_)
      required this.netExcludingTax,
      @JsonKey(name: OrderLineDto.totalTaxKey_) required this.totalTax,
      @JsonKey(name: OrderLineDto.totalKey_) required this.total})
      : super._();
  factory _OrderLineDto.fromJson(Map<String, dynamic> json) =>
      _$OrderLineDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: OrderLineDto.idKey_)
  final String id;

  /// productId
  @override
  @JsonKey(name: OrderLineDto.productIdKey_)
  final String productId;

  /// productName
  @override
  @JsonKey(name: OrderLineDto.productNameKey_)
  final String productName;

  /// variantId
  @override
  @JsonKey(name: OrderLineDto.variantIdKey_)
  final String? variantId;

  /// variantName
  @override
  @JsonKey(name: OrderLineDto.variantNameKey_)
  final String? variantName;

  /// presentationId
  @override
  @JsonKey(name: OrderLineDto.presentationIdKey_)
  final String presentationId;

  /// presentationName
  @override
  @JsonKey(name: OrderLineDto.presentationNameKey_)
  final String presentationName;

  /// presentationQuantityMultiplier
  @override
  @JsonKey(name: OrderLineDto.presentationQuantityMultiplierKey_)
  final int presentationQuantityMultiplier;

  /// quantity
  @override
  @JsonKey(name: OrderLineDto.quantityKey_)
  final int quantity;

  /// unitPriceExcludingTax
  @override
  @JsonKey(name: OrderLineDto.unitPriceExcludingTaxKey_)
  final double unitPriceExcludingTax;

  /// discountPercentage
  @override
  @JsonKey(name: OrderLineDto.discountPercentageKey_)
  final double? discountPercentage;

  /// discountAmount
  @override
  @JsonKey(name: OrderLineDto.discountAmountKey_)
  final double? discountAmount;

  /// netExcludingTax
  @override
  @JsonKey(name: OrderLineDto.netExcludingTaxKey_)
  final double netExcludingTax;

  /// totalTax
  @override
  @JsonKey(name: OrderLineDto.totalTaxKey_)
  final double totalTax;

  /// total
  @override
  @JsonKey(name: OrderLineDto.totalKey_)
  final double total;

  /// Create a copy of OrderLineDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderLineDtoCopyWith<_OrderLineDto> get copyWith =>
      __$OrderLineDtoCopyWithImpl<_OrderLineDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderLineDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderLineDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantName, variantName) ||
                other.variantName == variantName) &&
            (identical(other.presentationId, presentationId) ||
                other.presentationId == presentationId) &&
            (identical(other.presentationName, presentationName) ||
                other.presentationName == presentationName) &&
            (identical(other.presentationQuantityMultiplier,
                    presentationQuantityMultiplier) ||
                other.presentationQuantityMultiplier ==
                    presentationQuantityMultiplier) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPriceExcludingTax, unitPriceExcludingTax) ||
                other.unitPriceExcludingTax == unitPriceExcludingTax) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.netExcludingTax, netExcludingTax) ||
                other.netExcludingTax == netExcludingTax) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      productName,
      variantId,
      variantName,
      presentationId,
      presentationName,
      presentationQuantityMultiplier,
      quantity,
      unitPriceExcludingTax,
      discountPercentage,
      discountAmount,
      netExcludingTax,
      totalTax,
      total);

  @override
  String toString() {
    return 'OrderLineDto(id: $id, productId: $productId, productName: $productName, variantId: $variantId, variantName: $variantName, presentationId: $presentationId, presentationName: $presentationName, presentationQuantityMultiplier: $presentationQuantityMultiplier, quantity: $quantity, unitPriceExcludingTax: $unitPriceExcludingTax, discountPercentage: $discountPercentage, discountAmount: $discountAmount, netExcludingTax: $netExcludingTax, totalTax: $totalTax, total: $total)';
  }
}

/// @nodoc
abstract mixin class _$OrderLineDtoCopyWith<$Res>
    implements $OrderLineDtoCopyWith<$Res> {
  factory _$OrderLineDtoCopyWith(
          _OrderLineDto value, $Res Function(_OrderLineDto) _then) =
      __$OrderLineDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: OrderLineDto.idKey_) String id,
      @JsonKey(name: OrderLineDto.productIdKey_) String productId,
      @JsonKey(name: OrderLineDto.productNameKey_) String productName,
      @JsonKey(name: OrderLineDto.variantIdKey_) String? variantId,
      @JsonKey(name: OrderLineDto.variantNameKey_) String? variantName,
      @JsonKey(name: OrderLineDto.presentationIdKey_) String presentationId,
      @JsonKey(name: OrderLineDto.presentationNameKey_) String presentationName,
      @JsonKey(name: OrderLineDto.presentationQuantityMultiplierKey_)
      int presentationQuantityMultiplier,
      @JsonKey(name: OrderLineDto.quantityKey_) int quantity,
      @JsonKey(name: OrderLineDto.unitPriceExcludingTaxKey_)
      double unitPriceExcludingTax,
      @JsonKey(name: OrderLineDto.discountPercentageKey_)
      double? discountPercentage,
      @JsonKey(name: OrderLineDto.discountAmountKey_) double? discountAmount,
      @JsonKey(name: OrderLineDto.netExcludingTaxKey_) double netExcludingTax,
      @JsonKey(name: OrderLineDto.totalTaxKey_) double totalTax,
      @JsonKey(name: OrderLineDto.totalKey_) double total});
}

/// @nodoc
class __$OrderLineDtoCopyWithImpl<$Res>
    implements _$OrderLineDtoCopyWith<$Res> {
  __$OrderLineDtoCopyWithImpl(this._self, this._then);

  final _OrderLineDto _self;
  final $Res Function(_OrderLineDto) _then;

  /// Create a copy of OrderLineDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productName = null,
    Object? variantId = freezed,
    Object? variantName = freezed,
    Object? presentationId = null,
    Object? presentationName = null,
    Object? presentationQuantityMultiplier = null,
    Object? quantity = null,
    Object? unitPriceExcludingTax = null,
    Object? discountPercentage = freezed,
    Object? discountAmount = freezed,
    Object? netExcludingTax = null,
    Object? totalTax = null,
    Object? total = null,
  }) {
    return _then(_OrderLineDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _self.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      variantId: freezed == variantId
          ? _self.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      variantName: freezed == variantName
          ? _self.variantName
          : variantName // ignore: cast_nullable_to_non_nullable
              as String?,
      presentationId: null == presentationId
          ? _self.presentationId
          : presentationId // ignore: cast_nullable_to_non_nullable
              as String,
      presentationName: null == presentationName
          ? _self.presentationName
          : presentationName // ignore: cast_nullable_to_non_nullable
              as String,
      presentationQuantityMultiplier: null == presentationQuantityMultiplier
          ? _self.presentationQuantityMultiplier
          : presentationQuantityMultiplier // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPriceExcludingTax: null == unitPriceExcludingTax
          ? _self.unitPriceExcludingTax
          : unitPriceExcludingTax // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: freezed == discountPercentage
          ? _self.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      discountAmount: freezed == discountAmount
          ? _self.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      netExcludingTax: null == netExcludingTax
          ? _self.netExcludingTax
          : netExcludingTax // ignore: cast_nullable_to_non_nullable
              as double,
      totalTax: null == totalTax
          ? _self.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}
