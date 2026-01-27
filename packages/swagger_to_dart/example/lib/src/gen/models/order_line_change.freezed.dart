// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_line_change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OrderLineChange _$OrderLineChangeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'create':
      return OrderLineChangeCreate.fromJson(json);
    case 'update':
      return OrderLineChangeUpdate.fromJson(json);
    case 'delete':
      return OrderLineChangeDelete.fromJson(json);

    default:
      return OrderLineChangeFallback.fromJson(json);
  }
}

/// @nodoc
mixin _$OrderLineChange {
  /// Serializes this OrderLineChange to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderLineChange);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderLineChange()';
  }
}

/// @nodoc
class $OrderLineChangeCopyWith<$Res> {
  $OrderLineChangeCopyWith(
      OrderLineChange _, $Res Function(OrderLineChange) __);
}

/// Adds pattern-matching-related methods to [OrderLineChange].
extension OrderLineChangePatterns on OrderLineChange {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderLineChangeCreate value)? create,
    TResult Function(OrderLineChangeUpdate value)? update,
    TResult Function(OrderLineChangeDelete value)? delete,
    TResult Function(OrderLineChangeFallback value)? fallback,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OrderLineChangeCreate() when create != null:
        return create(_that);
      case OrderLineChangeUpdate() when update != null:
        return update(_that);
      case OrderLineChangeDelete() when delete != null:
        return delete(_that);
      case OrderLineChangeFallback() when fallback != null:
        return fallback(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(OrderLineChangeCreate value) create,
    required TResult Function(OrderLineChangeUpdate value) update,
    required TResult Function(OrderLineChangeDelete value) delete,
    required TResult Function(OrderLineChangeFallback value) fallback,
  }) {
    final _that = this;
    switch (_that) {
      case OrderLineChangeCreate():
        return create(_that);
      case OrderLineChangeUpdate():
        return update(_that);
      case OrderLineChangeDelete():
        return delete(_that);
      case OrderLineChangeFallback():
        return fallback(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderLineChangeCreate value)? create,
    TResult? Function(OrderLineChangeUpdate value)? update,
    TResult? Function(OrderLineChangeDelete value)? delete,
    TResult? Function(OrderLineChangeFallback value)? fallback,
  }) {
    final _that = this;
    switch (_that) {
      case OrderLineChangeCreate() when create != null:
        return create(_that);
      case OrderLineChangeUpdate() when update != null:
        return update(_that);
      case OrderLineChangeDelete() when delete != null:
        return delete(_that);
      case OrderLineChangeFallback() when fallback != null:
        return fallback(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: OrderLineChange.productIdKey_) String productId,
            @JsonKey(name: OrderLineChange.presentationIdKey_)
            String presentationId,
            @JsonKey(name: OrderLineChange.variantIdKey_) String? variantId,
            @JsonKey(name: OrderLineChange.quantityKey_) int quantity,
            @JsonKey(name: OrderLineChange.salePriceKey_) double? salePrice,
            @JsonKey(name: OrderLineChange.typeKey_) String type)?
        create,
    TResult Function(
            @JsonKey(name: OrderLineChange.idKey_) String id,
            @JsonKey(name: OrderLineChange.quantityKey_) int? quantity,
            @JsonKey(name: OrderLineChange.salePriceKey_) double? salePrice,
            @JsonKey(name: OrderLineChange.typeKey_) String type)?
        update,
    TResult Function(@JsonKey(name: OrderLineChange.idKey_) String id,
            @JsonKey(name: OrderLineChange.typeKey_) String type)?
        delete,
    TResult Function(Map<String, dynamic>? json)? fallback,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OrderLineChangeCreate() when create != null:
        return create(_that.productId, _that.presentationId, _that.variantId,
            _that.quantity, _that.salePrice, _that.type);
      case OrderLineChangeUpdate() when update != null:
        return update(_that.id, _that.quantity, _that.salePrice, _that.type);
      case OrderLineChangeDelete() when delete != null:
        return delete(_that.id, _that.type);
      case OrderLineChangeFallback() when fallback != null:
        return fallback(_that.json);
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
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: OrderLineChange.productIdKey_) String productId,
            @JsonKey(name: OrderLineChange.presentationIdKey_)
            String presentationId,
            @JsonKey(name: OrderLineChange.variantIdKey_) String? variantId,
            @JsonKey(name: OrderLineChange.quantityKey_) int quantity,
            @JsonKey(name: OrderLineChange.salePriceKey_) double? salePrice,
            @JsonKey(name: OrderLineChange.typeKey_) String type)
        create,
    required TResult Function(
            @JsonKey(name: OrderLineChange.idKey_) String id,
            @JsonKey(name: OrderLineChange.quantityKey_) int? quantity,
            @JsonKey(name: OrderLineChange.salePriceKey_) double? salePrice,
            @JsonKey(name: OrderLineChange.typeKey_) String type)
        update,
    required TResult Function(@JsonKey(name: OrderLineChange.idKey_) String id,
            @JsonKey(name: OrderLineChange.typeKey_) String type)
        delete,
    required TResult Function(Map<String, dynamic>? json) fallback,
  }) {
    final _that = this;
    switch (_that) {
      case OrderLineChangeCreate():
        return create(_that.productId, _that.presentationId, _that.variantId,
            _that.quantity, _that.salePrice, _that.type);
      case OrderLineChangeUpdate():
        return update(_that.id, _that.quantity, _that.salePrice, _that.type);
      case OrderLineChangeDelete():
        return delete(_that.id, _that.type);
      case OrderLineChangeFallback():
        return fallback(_that.json);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: OrderLineChange.productIdKey_) String productId,
            @JsonKey(name: OrderLineChange.presentationIdKey_)
            String presentationId,
            @JsonKey(name: OrderLineChange.variantIdKey_) String? variantId,
            @JsonKey(name: OrderLineChange.quantityKey_) int quantity,
            @JsonKey(name: OrderLineChange.salePriceKey_) double? salePrice,
            @JsonKey(name: OrderLineChange.typeKey_) String type)?
        create,
    TResult? Function(
            @JsonKey(name: OrderLineChange.idKey_) String id,
            @JsonKey(name: OrderLineChange.quantityKey_) int? quantity,
            @JsonKey(name: OrderLineChange.salePriceKey_) double? salePrice,
            @JsonKey(name: OrderLineChange.typeKey_) String type)?
        update,
    TResult? Function(@JsonKey(name: OrderLineChange.idKey_) String id,
            @JsonKey(name: OrderLineChange.typeKey_) String type)?
        delete,
    TResult? Function(Map<String, dynamic>? json)? fallback,
  }) {
    final _that = this;
    switch (_that) {
      case OrderLineChangeCreate() when create != null:
        return create(_that.productId, _that.presentationId, _that.variantId,
            _that.quantity, _that.salePrice, _that.type);
      case OrderLineChangeUpdate() when update != null:
        return update(_that.id, _that.quantity, _that.salePrice, _that.type);
      case OrderLineChangeDelete() when delete != null:
        return delete(_that.id, _that.type);
      case OrderLineChangeFallback() when fallback != null:
        return fallback(_that.json);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class OrderLineChangeCreate extends OrderLineChange {
  const OrderLineChangeCreate(
      {@JsonKey(name: OrderLineChange.productIdKey_) required this.productId,
      @JsonKey(name: OrderLineChange.presentationIdKey_)
      required this.presentationId,
      @JsonKey(name: OrderLineChange.variantIdKey_) this.variantId,
      @JsonKey(name: OrderLineChange.quantityKey_) required this.quantity,
      @JsonKey(name: OrderLineChange.salePriceKey_) this.salePrice,
      @JsonKey(name: OrderLineChange.typeKey_) this.type = 'create'})
      : super._();
  factory OrderLineChangeCreate.fromJson(Map<String, dynamic> json) =>
      _$OrderLineChangeCreateFromJson(json);

  /// productId
  @JsonKey(name: OrderLineChange.productIdKey_)
  final String productId;

  /// presentationId
  @JsonKey(name: OrderLineChange.presentationIdKey_)
  final String presentationId;

  /// variantId
  @JsonKey(name: OrderLineChange.variantIdKey_)
  final String? variantId;

  /// quantity
  @JsonKey(name: OrderLineChange.quantityKey_)
  final int quantity;

  /// salePrice
  @JsonKey(name: OrderLineChange.salePriceKey_)
  final double? salePrice;

  /// type
  @JsonKey(name: OrderLineChange.typeKey_)
  final String type;

  /// Create a copy of OrderLineChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderLineChangeCreateCopyWith<OrderLineChangeCreate> get copyWith =>
      _$OrderLineChangeCreateCopyWithImpl<OrderLineChangeCreate>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderLineChangeCreateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderLineChangeCreate &&
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
    return 'OrderLineChange.create(productId: $productId, presentationId: $presentationId, variantId: $variantId, quantity: $quantity, salePrice: $salePrice, type: $type)';
  }
}

/// @nodoc
abstract mixin class $OrderLineChangeCreateCopyWith<$Res>
    implements $OrderLineChangeCopyWith<$Res> {
  factory $OrderLineChangeCreateCopyWith(OrderLineChangeCreate value,
          $Res Function(OrderLineChangeCreate) _then) =
      _$OrderLineChangeCreateCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: OrderLineChange.productIdKey_) String productId,
      @JsonKey(name: OrderLineChange.presentationIdKey_) String presentationId,
      @JsonKey(name: OrderLineChange.variantIdKey_) String? variantId,
      @JsonKey(name: OrderLineChange.quantityKey_) int quantity,
      @JsonKey(name: OrderLineChange.salePriceKey_) double? salePrice,
      @JsonKey(name: OrderLineChange.typeKey_) String type});
}

/// @nodoc
class _$OrderLineChangeCreateCopyWithImpl<$Res>
    implements $OrderLineChangeCreateCopyWith<$Res> {
  _$OrderLineChangeCreateCopyWithImpl(this._self, this._then);

  final OrderLineChangeCreate _self;
  final $Res Function(OrderLineChangeCreate) _then;

  /// Create a copy of OrderLineChange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productId = null,
    Object? presentationId = null,
    Object? variantId = freezed,
    Object? quantity = null,
    Object? salePrice = freezed,
    Object? type = null,
  }) {
    return _then(OrderLineChangeCreate(
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

/// @nodoc

@jsonSerializable
class OrderLineChangeUpdate extends OrderLineChange {
  const OrderLineChangeUpdate(
      {@JsonKey(name: OrderLineChange.idKey_) required this.id,
      @JsonKey(name: OrderLineChange.quantityKey_) this.quantity,
      @JsonKey(name: OrderLineChange.salePriceKey_) this.salePrice,
      @JsonKey(name: OrderLineChange.typeKey_) this.type = 'update'})
      : super._();
  factory OrderLineChangeUpdate.fromJson(Map<String, dynamic> json) =>
      _$OrderLineChangeUpdateFromJson(json);

  /// id
  @JsonKey(name: OrderLineChange.idKey_)
  final String id;

  /// quantity
  @JsonKey(name: OrderLineChange.quantityKey_)
  final int? quantity;

  /// salePrice
  @JsonKey(name: OrderLineChange.salePriceKey_)
  final double? salePrice;

  /// type
  @JsonKey(name: OrderLineChange.typeKey_)
  final String type;

  /// Create a copy of OrderLineChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderLineChangeUpdateCopyWith<OrderLineChangeUpdate> get copyWith =>
      _$OrderLineChangeUpdateCopyWithImpl<OrderLineChangeUpdate>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderLineChangeUpdateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderLineChangeUpdate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity, salePrice, type);

  @override
  String toString() {
    return 'OrderLineChange.update(id: $id, quantity: $quantity, salePrice: $salePrice, type: $type)';
  }
}

/// @nodoc
abstract mixin class $OrderLineChangeUpdateCopyWith<$Res>
    implements $OrderLineChangeCopyWith<$Res> {
  factory $OrderLineChangeUpdateCopyWith(OrderLineChangeUpdate value,
          $Res Function(OrderLineChangeUpdate) _then) =
      _$OrderLineChangeUpdateCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: OrderLineChange.idKey_) String id,
      @JsonKey(name: OrderLineChange.quantityKey_) int? quantity,
      @JsonKey(name: OrderLineChange.salePriceKey_) double? salePrice,
      @JsonKey(name: OrderLineChange.typeKey_) String type});
}

/// @nodoc
class _$OrderLineChangeUpdateCopyWithImpl<$Res>
    implements $OrderLineChangeUpdateCopyWith<$Res> {
  _$OrderLineChangeUpdateCopyWithImpl(this._self, this._then);

  final OrderLineChangeUpdate _self;
  final $Res Function(OrderLineChangeUpdate) _then;

  /// Create a copy of OrderLineChange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? quantity = freezed,
    Object? salePrice = freezed,
    Object? type = null,
  }) {
    return _then(OrderLineChangeUpdate(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: freezed == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
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

/// @nodoc

@jsonSerializable
class OrderLineChangeDelete extends OrderLineChange {
  const OrderLineChangeDelete(
      {@JsonKey(name: OrderLineChange.idKey_) required this.id,
      @JsonKey(name: OrderLineChange.typeKey_) this.type = 'delete'})
      : super._();
  factory OrderLineChangeDelete.fromJson(Map<String, dynamic> json) =>
      _$OrderLineChangeDeleteFromJson(json);

  /// id
  @JsonKey(name: OrderLineChange.idKey_)
  final String id;

  /// type
  @JsonKey(name: OrderLineChange.typeKey_)
  final String type;

  /// Create a copy of OrderLineChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderLineChangeDeleteCopyWith<OrderLineChangeDelete> get copyWith =>
      _$OrderLineChangeDeleteCopyWithImpl<OrderLineChangeDelete>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderLineChangeDeleteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderLineChangeDelete &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  @override
  String toString() {
    return 'OrderLineChange.delete(id: $id, type: $type)';
  }
}

/// @nodoc
abstract mixin class $OrderLineChangeDeleteCopyWith<$Res>
    implements $OrderLineChangeCopyWith<$Res> {
  factory $OrderLineChangeDeleteCopyWith(OrderLineChangeDelete value,
          $Res Function(OrderLineChangeDelete) _then) =
      _$OrderLineChangeDeleteCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: OrderLineChange.idKey_) String id,
      @JsonKey(name: OrderLineChange.typeKey_) String type});
}

/// @nodoc
class _$OrderLineChangeDeleteCopyWithImpl<$Res>
    implements $OrderLineChangeDeleteCopyWith<$Res> {
  _$OrderLineChangeDeleteCopyWithImpl(this._self, this._then);

  final OrderLineChangeDelete _self;
  final $Res Function(OrderLineChangeDelete) _then;

  /// Create a copy of OrderLineChange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(OrderLineChangeDelete(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@jsonSerializable
class OrderLineChangeFallback extends OrderLineChange {
  const OrderLineChangeFallback(
      {final Map<String, dynamic>? json, final String? $type})
      : _json = json,
        $type = $type ?? 'fallback',
        super._();
  factory OrderLineChangeFallback.fromJson(Map<String, dynamic> json) =>
      _$OrderLineChangeFallbackFromJson(json);

  final Map<String, dynamic>? _json;
  Map<String, dynamic>? get json {
    final value = _json;
    if (value == null) return null;
    if (_json is EqualUnmodifiableMapView) return _json;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of OrderLineChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderLineChangeFallbackCopyWith<OrderLineChangeFallback> get copyWith =>
      _$OrderLineChangeFallbackCopyWithImpl<OrderLineChangeFallback>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderLineChangeFallbackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderLineChangeFallback &&
            const DeepCollectionEquality().equals(other._json, _json));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_json));

  @override
  String toString() {
    return 'OrderLineChange.fallback(json: $json)';
  }
}

/// @nodoc
abstract mixin class $OrderLineChangeFallbackCopyWith<$Res>
    implements $OrderLineChangeCopyWith<$Res> {
  factory $OrderLineChangeFallbackCopyWith(OrderLineChangeFallback value,
          $Res Function(OrderLineChangeFallback) _then) =
      _$OrderLineChangeFallbackCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic>? json});
}

/// @nodoc
class _$OrderLineChangeFallbackCopyWithImpl<$Res>
    implements $OrderLineChangeFallbackCopyWith<$Res> {
  _$OrderLineChangeFallbackCopyWithImpl(this._self, this._then);

  final OrderLineChangeFallback _self;
  final $Res Function(OrderLineChangeFallback) _then;

  /// Create a copy of OrderLineChange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? json = freezed,
  }) {
    return _then(OrderLineChangeFallback(
      json: freezed == json
          ? _self._json
          : json // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}
