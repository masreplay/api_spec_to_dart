// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateOrderLine {
  /// productId
  @JsonKey(name: CreateOrderLine.productIdKey_)
  String get productId;

  /// presentationId
  @JsonKey(name: CreateOrderLine.presentationIdKey_)
  String get presentationId;

  /// variantId
  @JsonKey(name: CreateOrderLine.variantIdKey_)
  String? get variantId;

  /// quantity
  @JsonKey(name: CreateOrderLine.quantityKey_)
  int get quantity;

  /// salePrice
  @JsonKey(name: CreateOrderLine.salePriceKey_)
  double? get salePrice;

  /// type
  @JsonKey(name: CreateOrderLine.typeKey_)
  String get type;

  /// Create a copy of CreateOrderLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateOrderLineCopyWith<CreateOrderLine> get copyWith =>
      _$CreateOrderLineCopyWithImpl<CreateOrderLine>(
          this as CreateOrderLine, _$identity);

  /// Serializes this CreateOrderLine to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOrderLine &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.presentationId, presentationId) ||
                other.presentationId == presentationId) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, presentationId,
      variantId, quantity, salePrice, type);

  @override
  String toString() {
    return 'CreateOrderLine(productId: $productId, presentationId: $presentationId, variantId: $variantId, quantity: $quantity, salePrice: $salePrice, type: $type)';
  }
}

/// @nodoc
abstract mixin class $CreateOrderLineCopyWith<$Res> {
  factory $CreateOrderLineCopyWith(
          CreateOrderLine value, $Res Function(CreateOrderLine) _then) =
      _$CreateOrderLineCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CreateOrderLine.productIdKey_) String productId,
      @JsonKey(name: CreateOrderLine.presentationIdKey_) String presentationId,
      @JsonKey(name: CreateOrderLine.variantIdKey_) String? variantId,
      @JsonKey(name: CreateOrderLine.quantityKey_) int quantity,
      @JsonKey(name: CreateOrderLine.salePriceKey_) double? salePrice,
      @JsonKey(name: CreateOrderLine.typeKey_) String type});
}

/// @nodoc
class _$CreateOrderLineCopyWithImpl<$Res>
    implements $CreateOrderLineCopyWith<$Res> {
  _$CreateOrderLineCopyWithImpl(this._self, this._then);

  final CreateOrderLine _self;
  final $Res Function(CreateOrderLine) _then;

  /// Create a copy of CreateOrderLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? presentationId = null,
    Object? variantId = freezed,
    Object? quantity = null,
    Object? salePrice = freezed,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      presentationId: null == presentationId
          ? _self.presentationId
          : presentationId // ignore: cast_nullable_to_non_nullable
              as String,
      variantId: freezed == variantId
          ? _self.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      salePrice: freezed == salePrice
          ? _self.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CreateOrderLine].
extension CreateOrderLinePatterns on CreateOrderLine {
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
    TResult Function(_CreateOrderLine value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrderLine() when $default != null:
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
    TResult Function(_CreateOrderLine value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderLine():
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
    TResult? Function(_CreateOrderLine value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderLine() when $default != null:
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
            @JsonKey(name: CreateOrderLine.productIdKey_) String productId,
            @JsonKey(name: CreateOrderLine.presentationIdKey_)
            String presentationId,
            @JsonKey(name: CreateOrderLine.variantIdKey_) String? variantId,
            @JsonKey(name: CreateOrderLine.quantityKey_) int quantity,
            @JsonKey(name: CreateOrderLine.salePriceKey_) double? salePrice,
            @JsonKey(name: CreateOrderLine.typeKey_) String type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CreateOrderLine() when $default != null:
        return $default(_that.productId, _that.presentationId, _that.variantId,
            _that.quantity, _that.salePrice, _that.type);
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
            @JsonKey(name: CreateOrderLine.productIdKey_) String productId,
            @JsonKey(name: CreateOrderLine.presentationIdKey_)
            String presentationId,
            @JsonKey(name: CreateOrderLine.variantIdKey_) String? variantId,
            @JsonKey(name: CreateOrderLine.quantityKey_) int quantity,
            @JsonKey(name: CreateOrderLine.salePriceKey_) double? salePrice,
            @JsonKey(name: CreateOrderLine.typeKey_) String type)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderLine():
        return $default(_that.productId, _that.presentationId, _that.variantId,
            _that.quantity, _that.salePrice, _that.type);
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
            @JsonKey(name: CreateOrderLine.productIdKey_) String productId,
            @JsonKey(name: CreateOrderLine.presentationIdKey_)
            String presentationId,
            @JsonKey(name: CreateOrderLine.variantIdKey_) String? variantId,
            @JsonKey(name: CreateOrderLine.quantityKey_) int quantity,
            @JsonKey(name: CreateOrderLine.salePriceKey_) double? salePrice,
            @JsonKey(name: CreateOrderLine.typeKey_) String type)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CreateOrderLine() when $default != null:
        return $default(_that.productId, _that.presentationId, _that.variantId,
            _that.quantity, _that.salePrice, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CreateOrderLine extends CreateOrderLine {
  const _CreateOrderLine(
      {@JsonKey(name: CreateOrderLine.productIdKey_) required this.productId,
      @JsonKey(name: CreateOrderLine.presentationIdKey_)
      required this.presentationId,
      @JsonKey(name: CreateOrderLine.variantIdKey_) this.variantId,
      @JsonKey(name: CreateOrderLine.quantityKey_) required this.quantity,
      @JsonKey(name: CreateOrderLine.salePriceKey_) this.salePrice,
      @JsonKey(name: CreateOrderLine.typeKey_) this.type = 'create'})
      : super._();
  factory _CreateOrderLine.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderLineFromJson(json);

  /// productId
  @override
  @JsonKey(name: CreateOrderLine.productIdKey_)
  final String productId;

  /// presentationId
  @override
  @JsonKey(name: CreateOrderLine.presentationIdKey_)
  final String presentationId;

  /// variantId
  @override
  @JsonKey(name: CreateOrderLine.variantIdKey_)
  final String? variantId;

  /// quantity
  @override
  @JsonKey(name: CreateOrderLine.quantityKey_)
  final int quantity;

  /// salePrice
  @override
  @JsonKey(name: CreateOrderLine.salePriceKey_)
  final double? salePrice;

  /// type
  @override
  @JsonKey(name: CreateOrderLine.typeKey_)
  final String type;

  /// Create a copy of CreateOrderLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateOrderLineCopyWith<_CreateOrderLine> get copyWith =>
      __$CreateOrderLineCopyWithImpl<_CreateOrderLine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateOrderLineToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateOrderLine &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.presentationId, presentationId) ||
                other.presentationId == presentationId) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, presentationId,
      variantId, quantity, salePrice, type);

  @override
  String toString() {
    return 'CreateOrderLine(productId: $productId, presentationId: $presentationId, variantId: $variantId, quantity: $quantity, salePrice: $salePrice, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$CreateOrderLineCopyWith<$Res>
    implements $CreateOrderLineCopyWith<$Res> {
  factory _$CreateOrderLineCopyWith(
          _CreateOrderLine value, $Res Function(_CreateOrderLine) _then) =
      __$CreateOrderLineCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CreateOrderLine.productIdKey_) String productId,
      @JsonKey(name: CreateOrderLine.presentationIdKey_) String presentationId,
      @JsonKey(name: CreateOrderLine.variantIdKey_) String? variantId,
      @JsonKey(name: CreateOrderLine.quantityKey_) int quantity,
      @JsonKey(name: CreateOrderLine.salePriceKey_) double? salePrice,
      @JsonKey(name: CreateOrderLine.typeKey_) String type});
}

/// @nodoc
class __$CreateOrderLineCopyWithImpl<$Res>
    implements _$CreateOrderLineCopyWith<$Res> {
  __$CreateOrderLineCopyWithImpl(this._self, this._then);

  final _CreateOrderLine _self;
  final $Res Function(_CreateOrderLine) _then;

  /// Create a copy of CreateOrderLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productId = null,
    Object? presentationId = null,
    Object? variantId = freezed,
    Object? quantity = null,
    Object? salePrice = freezed,
    Object? type = null,
  }) {
    return _then(_CreateOrderLine(
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      presentationId: null == presentationId
          ? _self.presentationId
          : presentationId // ignore: cast_nullable_to_non_nullable
              as String,
      variantId: freezed == variantId
          ? _self.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      salePrice: freezed == salePrice
          ? _self.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
