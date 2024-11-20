// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderPublic _$OrderPublicFromJson(Map<String, dynamic> json) {
  return _OrderPublic.fromJson(json);
}

/// @nodoc
mixin _$OrderPublic {
  @JsonKey(name: 'price')
  num? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  dynamic get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_type')
  OrderTypeEnum? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  OrderStatusEnum? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status_history')
  Map<dynamic, dynamic>? get orderStatusHistory =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_address')
  String? get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_status')
  ShippingStatusEnum? get shippingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  num? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  DiscountTypeEnum? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_processing_id')
  String? get paymentProcessingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_price')
  num? get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student')
  StudentTableMap? get student => throw _privateConstructorUsedError;

  /// Serializes this OrderPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPublicCopyWith<OrderPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPublicCopyWith<$Res> {
  factory $OrderPublicCopyWith(
          OrderPublic value, $Res Function(OrderPublic) then) =
      _$OrderPublicCopyWithImpl<$Res, OrderPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'price') num? price,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'product') dynamic product,
      @JsonKey(name: 'order_type') OrderTypeEnum? orderType,
      @JsonKey(name: 'order_status') OrderStatusEnum? orderStatus,
      @JsonKey(name: 'order_status_history')
      Map<dynamic, dynamic>? orderStatusHistory,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'payment_status') String? paymentStatus,
      @JsonKey(name: 'shipping_address') String? shippingAddress,
      @JsonKey(name: 'shipping_status') ShippingStatusEnum? shippingStatus,
      @JsonKey(name: 'discount') num? discount,
      @JsonKey(name: 'discount_type') DiscountTypeEnum? discountType,
      @JsonKey(name: 'payment_processing_id') String? paymentProcessingId,
      @JsonKey(name: 'final_price') num? finalPrice,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'student') StudentTableMap? student});

  $OrderTypeEnumCopyWith<$Res>? get orderType;
  $OrderStatusEnumCopyWith<$Res>? get orderStatus;
  $ShippingStatusEnumCopyWith<$Res>? get shippingStatus;
  $DiscountTypeEnumCopyWith<$Res>? get discountType;
}

/// @nodoc
class _$OrderPublicCopyWithImpl<$Res, $Val extends OrderPublic>
    implements $OrderPublicCopyWith<$Res> {
  _$OrderPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? currency = freezed,
    Object? product = freezed,
    Object? orderType = freezed,
    Object? orderStatus = freezed,
    Object? orderStatusHistory = freezed,
    Object? quantity = freezed,
    Object? paymentMethod = freezed,
    Object? paymentStatus = freezed,
    Object? shippingAddress = freezed,
    Object? shippingStatus = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
    Object? paymentProcessingId = freezed,
    Object? finalPrice = freezed,
    Object? id = null,
    Object? student = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderTypeEnum?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatusEnum?,
      orderStatusHistory: freezed == orderStatusHistory
          ? _value.orderStatusHistory
          : orderStatusHistory // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingStatus: freezed == shippingStatus
          ? _value.shippingStatus
          : shippingStatus // ignore: cast_nullable_to_non_nullable
              as ShippingStatusEnum?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountTypeEnum?,
      paymentProcessingId: freezed == paymentProcessingId
          ? _value.paymentProcessingId
          : paymentProcessingId // ignore: cast_nullable_to_non_nullable
              as String?,
      finalPrice: freezed == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentTableMap?,
    ) as $Val);
  }

  /// Create a copy of OrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderTypeEnumCopyWith<$Res>? get orderType {
    if (_value.orderType == null) {
      return null;
    }

    return $OrderTypeEnumCopyWith<$Res>(_value.orderType!, (value) {
      return _then(_value.copyWith(orderType: value) as $Val);
    });
  }

  /// Create a copy of OrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderStatusEnumCopyWith<$Res>? get orderStatus {
    if (_value.orderStatus == null) {
      return null;
    }

    return $OrderStatusEnumCopyWith<$Res>(_value.orderStatus!, (value) {
      return _then(_value.copyWith(orderStatus: value) as $Val);
    });
  }

  /// Create a copy of OrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingStatusEnumCopyWith<$Res>? get shippingStatus {
    if (_value.shippingStatus == null) {
      return null;
    }

    return $ShippingStatusEnumCopyWith<$Res>(_value.shippingStatus!, (value) {
      return _then(_value.copyWith(shippingStatus: value) as $Val);
    });
  }

  /// Create a copy of OrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountTypeEnumCopyWith<$Res>? get discountType {
    if (_value.discountType == null) {
      return null;
    }

    return $DiscountTypeEnumCopyWith<$Res>(_value.discountType!, (value) {
      return _then(_value.copyWith(discountType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderPublicImplCopyWith<$Res>
    implements $OrderPublicCopyWith<$Res> {
  factory _$$OrderPublicImplCopyWith(
          _$OrderPublicImpl value, $Res Function(_$OrderPublicImpl) then) =
      __$$OrderPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'price') num? price,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'product') dynamic product,
      @JsonKey(name: 'order_type') OrderTypeEnum? orderType,
      @JsonKey(name: 'order_status') OrderStatusEnum? orderStatus,
      @JsonKey(name: 'order_status_history')
      Map<dynamic, dynamic>? orderStatusHistory,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'payment_status') String? paymentStatus,
      @JsonKey(name: 'shipping_address') String? shippingAddress,
      @JsonKey(name: 'shipping_status') ShippingStatusEnum? shippingStatus,
      @JsonKey(name: 'discount') num? discount,
      @JsonKey(name: 'discount_type') DiscountTypeEnum? discountType,
      @JsonKey(name: 'payment_processing_id') String? paymentProcessingId,
      @JsonKey(name: 'final_price') num? finalPrice,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'student') StudentTableMap? student});

  @override
  $OrderTypeEnumCopyWith<$Res>? get orderType;
  @override
  $OrderStatusEnumCopyWith<$Res>? get orderStatus;
  @override
  $ShippingStatusEnumCopyWith<$Res>? get shippingStatus;
  @override
  $DiscountTypeEnumCopyWith<$Res>? get discountType;
}

/// @nodoc
class __$$OrderPublicImplCopyWithImpl<$Res>
    extends _$OrderPublicCopyWithImpl<$Res, _$OrderPublicImpl>
    implements _$$OrderPublicImplCopyWith<$Res> {
  __$$OrderPublicImplCopyWithImpl(
      _$OrderPublicImpl _value, $Res Function(_$OrderPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? currency = freezed,
    Object? product = freezed,
    Object? orderType = freezed,
    Object? orderStatus = freezed,
    Object? orderStatusHistory = freezed,
    Object? quantity = freezed,
    Object? paymentMethod = freezed,
    Object? paymentStatus = freezed,
    Object? shippingAddress = freezed,
    Object? shippingStatus = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
    Object? paymentProcessingId = freezed,
    Object? finalPrice = freezed,
    Object? id = null,
    Object? student = freezed,
  }) {
    return _then(_$OrderPublicImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderTypeEnum?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatusEnum?,
      orderStatusHistory: freezed == orderStatusHistory
          ? _value._orderStatusHistory
          : orderStatusHistory // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingStatus: freezed == shippingStatus
          ? _value.shippingStatus
          : shippingStatus // ignore: cast_nullable_to_non_nullable
              as ShippingStatusEnum?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountTypeEnum?,
      paymentProcessingId: freezed == paymentProcessingId
          ? _value.paymentProcessingId
          : paymentProcessingId // ignore: cast_nullable_to_non_nullable
              as String?,
      finalPrice: freezed == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentTableMap?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPublicImpl implements _OrderPublic {
  const _$OrderPublicImpl(
      {@JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'currency') required this.currency,
      @JsonKey(name: 'product') required this.product,
      @JsonKey(name: 'order_type') required this.orderType,
      @JsonKey(name: 'order_status') required this.orderStatus,
      @JsonKey(name: 'order_status_history')
      required final Map<dynamic, dynamic>? orderStatusHistory,
      @JsonKey(name: 'quantity') required this.quantity,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'payment_status') required this.paymentStatus,
      @JsonKey(name: 'shipping_address') required this.shippingAddress,
      @JsonKey(name: 'shipping_status') required this.shippingStatus,
      @JsonKey(name: 'discount') required this.discount,
      @JsonKey(name: 'discount_type') required this.discountType,
      @JsonKey(name: 'payment_processing_id') required this.paymentProcessingId,
      @JsonKey(name: 'final_price') required this.finalPrice,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'student') required this.student})
      : _orderStatusHistory = orderStatusHistory;

  factory _$OrderPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPublicImplFromJson(json);

  @override
  @JsonKey(name: 'price')
  final num? price;
  @override
  @JsonKey(name: 'currency')
  final String? currency;
  @override
  @JsonKey(name: 'product')
  final dynamic product;
  @override
  @JsonKey(name: 'order_type')
  final OrderTypeEnum? orderType;
  @override
  @JsonKey(name: 'order_status')
  final OrderStatusEnum? orderStatus;
  final Map<dynamic, dynamic>? _orderStatusHistory;
  @override
  @JsonKey(name: 'order_status_history')
  Map<dynamic, dynamic>? get orderStatusHistory {
    final value = _orderStatusHistory;
    if (value == null) return null;
    if (_orderStatusHistory is EqualUnmodifiableMapView)
      return _orderStatusHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'quantity')
  final int? quantity;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'payment_status')
  final String? paymentStatus;
  @override
  @JsonKey(name: 'shipping_address')
  final String? shippingAddress;
  @override
  @JsonKey(name: 'shipping_status')
  final ShippingStatusEnum? shippingStatus;
  @override
  @JsonKey(name: 'discount')
  final num? discount;
  @override
  @JsonKey(name: 'discount_type')
  final DiscountTypeEnum? discountType;
  @override
  @JsonKey(name: 'payment_processing_id')
  final String? paymentProcessingId;
  @override
  @JsonKey(name: 'final_price')
  final num? finalPrice;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'student')
  final StudentTableMap? student;

  @override
  String toString() {
    return 'OrderPublic(price: $price, currency: $currency, product: $product, orderType: $orderType, orderStatus: $orderStatus, orderStatusHistory: $orderStatusHistory, quantity: $quantity, paymentMethod: $paymentMethod, paymentStatus: $paymentStatus, shippingAddress: $shippingAddress, shippingStatus: $shippingStatus, discount: $discount, discountType: $discountType, paymentProcessingId: $paymentProcessingId, finalPrice: $finalPrice, id: $id, student: $student)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPublicImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            const DeepCollectionEquality()
                .equals(other._orderStatusHistory, _orderStatusHistory) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.shippingStatus, shippingStatus) ||
                other.shippingStatus == shippingStatus) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.paymentProcessingId, paymentProcessingId) ||
                other.paymentProcessingId == paymentProcessingId) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.student, student));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      price,
      currency,
      const DeepCollectionEquality().hash(product),
      orderType,
      orderStatus,
      const DeepCollectionEquality().hash(_orderStatusHistory),
      quantity,
      paymentMethod,
      paymentStatus,
      shippingAddress,
      shippingStatus,
      discount,
      discountType,
      paymentProcessingId,
      finalPrice,
      id,
      const DeepCollectionEquality().hash(student));

  /// Create a copy of OrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPublicImplCopyWith<_$OrderPublicImpl> get copyWith =>
      __$$OrderPublicImplCopyWithImpl<_$OrderPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPublicImplToJson(
      this,
    );
  }
}

abstract class _OrderPublic implements OrderPublic {
  const factory _OrderPublic(
      {@JsonKey(name: 'price') required final num? price,
      @JsonKey(name: 'currency') required final String? currency,
      @JsonKey(name: 'product') required final dynamic product,
      @JsonKey(name: 'order_type') required final OrderTypeEnum? orderType,
      @JsonKey(name: 'order_status')
      required final OrderStatusEnum? orderStatus,
      @JsonKey(name: 'order_status_history')
      required final Map<dynamic, dynamic>? orderStatusHistory,
      @JsonKey(name: 'quantity') required final int? quantity,
      @JsonKey(name: 'payment_method') required final String? paymentMethod,
      @JsonKey(name: 'payment_status') required final String? paymentStatus,
      @JsonKey(name: 'shipping_address') required final String? shippingAddress,
      @JsonKey(name: 'shipping_status')
      required final ShippingStatusEnum? shippingStatus,
      @JsonKey(name: 'discount') required final num? discount,
      @JsonKey(name: 'discount_type')
      required final DiscountTypeEnum? discountType,
      @JsonKey(name: 'payment_processing_id')
      required final String? paymentProcessingId,
      @JsonKey(name: 'final_price') required final num? finalPrice,
      @JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'student')
      required final StudentTableMap? student}) = _$OrderPublicImpl;

  factory _OrderPublic.fromJson(Map<String, dynamic> json) =
      _$OrderPublicImpl.fromJson;

  @override
  @JsonKey(name: 'price')
  num? get price;
  @override
  @JsonKey(name: 'currency')
  String? get currency;
  @override
  @JsonKey(name: 'product')
  dynamic get product;
  @override
  @JsonKey(name: 'order_type')
  OrderTypeEnum? get orderType;
  @override
  @JsonKey(name: 'order_status')
  OrderStatusEnum? get orderStatus;
  @override
  @JsonKey(name: 'order_status_history')
  Map<dynamic, dynamic>? get orderStatusHistory;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  @JsonKey(name: 'payment_status')
  String? get paymentStatus;
  @override
  @JsonKey(name: 'shipping_address')
  String? get shippingAddress;
  @override
  @JsonKey(name: 'shipping_status')
  ShippingStatusEnum? get shippingStatus;
  @override
  @JsonKey(name: 'discount')
  num? get discount;
  @override
  @JsonKey(name: 'discount_type')
  DiscountTypeEnum? get discountType;
  @override
  @JsonKey(name: 'payment_processing_id')
  String? get paymentProcessingId;
  @override
  @JsonKey(name: 'final_price')
  num? get finalPrice;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'student')
  StudentTableMap? get student;

  /// Create a copy of OrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPublicImplCopyWith<_$OrderPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
