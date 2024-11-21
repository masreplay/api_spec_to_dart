// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) {
  return _OrderResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderResponse {
  /// Price
  @JsonKey(name: 'price')
  num? get price => throw _privateConstructorUsedError;

  /// Currency
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;

  /// Product
  @JsonKey(name: 'product')
  dynamic get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_type')
  OrderTypeEnum? get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  OrderStatusEnum? get orderStatus => throw _privateConstructorUsedError;

  /// Order Status History
  @JsonKey(name: 'order_status_history')
  Map<String, dynamic>? get orderStatusHistory =>
      throw _privateConstructorUsedError;

  /// Quantity
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;

  /// Payment Method
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;

  /// Payment Status
  @JsonKey(name: 'payment_status')
  String? get paymentStatus => throw _privateConstructorUsedError;

  /// Shipping Address
  @JsonKey(name: 'shipping_address')
  String? get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_status')
  ShippingStatusEnum? get shippingStatus => throw _privateConstructorUsedError;

  /// Discount
  @JsonKey(name: 'discount')
  num? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  DiscountTypeEnum? get discountType => throw _privateConstructorUsedError;

  /// Payment Processing Id
  @JsonKey(name: 'payment_processing_id')
  String? get paymentProcessingId => throw _privateConstructorUsedError;

  /// Final Price
  @JsonKey(name: 'final_price')
  num? get finalPrice => throw _privateConstructorUsedError;

  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student')
  StudentTable? get student => throw _privateConstructorUsedError;

  /// Serializes this OrderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderResponseCopyWith<OrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseCopyWith<$Res> {
  factory $OrderResponseCopyWith(
          OrderResponse value, $Res Function(OrderResponse) then) =
      _$OrderResponseCopyWithImpl<$Res, OrderResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'price') num? price,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'product') dynamic product,
      @JsonKey(name: 'order_type') OrderTypeEnum? orderType,
      @JsonKey(name: 'order_status') OrderStatusEnum? orderStatus,
      @JsonKey(name: 'order_status_history')
      Map<String, dynamic>? orderStatusHistory,
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
      @JsonKey(name: 'student') StudentTable? student});

  $StudentTableCopyWith<$Res>? get student;
}

/// @nodoc
class _$OrderResponseCopyWithImpl<$Res, $Val extends OrderResponse>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderResponse
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
              as Map<String, dynamic>?,
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
              as StudentTable?,
    ) as $Val);
  }

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentTableCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $StudentTableCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderResponseImplCopyWith<$Res>
    implements $OrderResponseCopyWith<$Res> {
  factory _$$OrderResponseImplCopyWith(
          _$OrderResponseImpl value, $Res Function(_$OrderResponseImpl) then) =
      __$$OrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'price') num? price,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'product') dynamic product,
      @JsonKey(name: 'order_type') OrderTypeEnum? orderType,
      @JsonKey(name: 'order_status') OrderStatusEnum? orderStatus,
      @JsonKey(name: 'order_status_history')
      Map<String, dynamic>? orderStatusHistory,
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
      @JsonKey(name: 'student') StudentTable? student});

  @override
  $StudentTableCopyWith<$Res>? get student;
}

/// @nodoc
class __$$OrderResponseImplCopyWithImpl<$Res>
    extends _$OrderResponseCopyWithImpl<$Res, _$OrderResponseImpl>
    implements _$$OrderResponseImplCopyWith<$Res> {
  __$$OrderResponseImplCopyWithImpl(
      _$OrderResponseImpl _value, $Res Function(_$OrderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderResponse
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
    return _then(_$OrderResponseImpl(
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
              as Map<String, dynamic>?,
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
              as StudentTable?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$OrderResponseImpl extends _OrderResponse {
  const _$OrderResponseImpl(
      {@JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'currency') required this.currency,
      @JsonKey(name: 'product') required this.product,
      @JsonKey(name: 'order_type') required this.orderType,
      @JsonKey(name: 'order_status') required this.orderStatus,
      @JsonKey(name: 'order_status_history')
      required final Map<String, dynamic>? orderStatusHistory,
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
      : _orderStatusHistory = orderStatusHistory,
        super._();

  factory _$OrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseImplFromJson(json);

  /// Price
  @override
  @JsonKey(name: 'price')
  final num? price;

  /// Currency
  @override
  @JsonKey(name: 'currency')
  final String? currency;

  /// Product
  @override
  @JsonKey(name: 'product')
  final dynamic product;
  @override
  @JsonKey(name: 'order_type')
  final OrderTypeEnum? orderType;
  @override
  @JsonKey(name: 'order_status')
  final OrderStatusEnum? orderStatus;

  /// Order Status History
  final Map<String, dynamic>? _orderStatusHistory;

  /// Order Status History
  @override
  @JsonKey(name: 'order_status_history')
  Map<String, dynamic>? get orderStatusHistory {
    final value = _orderStatusHistory;
    if (value == null) return null;
    if (_orderStatusHistory is EqualUnmodifiableMapView)
      return _orderStatusHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Quantity
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;

  /// Payment Method
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;

  /// Payment Status
  @override
  @JsonKey(name: 'payment_status')
  final String? paymentStatus;

  /// Shipping Address
  @override
  @JsonKey(name: 'shipping_address')
  final String? shippingAddress;
  @override
  @JsonKey(name: 'shipping_status')
  final ShippingStatusEnum? shippingStatus;

  /// Discount
  @override
  @JsonKey(name: 'discount')
  final num? discount;
  @override
  @JsonKey(name: 'discount_type')
  final DiscountTypeEnum? discountType;

  /// Payment Processing Id
  @override
  @JsonKey(name: 'payment_processing_id')
  final String? paymentProcessingId;

  /// Final Price
  @override
  @JsonKey(name: 'final_price')
  final num? finalPrice;

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'student')
  final StudentTable? student;

  @override
  String toString() {
    return 'OrderResponse(price: $price, currency: $currency, product: $product, orderType: $orderType, orderStatus: $orderStatus, orderStatusHistory: $orderStatusHistory, quantity: $quantity, paymentMethod: $paymentMethod, paymentStatus: $paymentStatus, shippingAddress: $shippingAddress, shippingStatus: $shippingStatus, discount: $discount, discountType: $discountType, paymentProcessingId: $paymentProcessingId, finalPrice: $finalPrice, id: $id, student: $student)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseImpl &&
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
            (identical(other.student, student) || other.student == student));
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
      student);

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      __$$OrderResponseImplCopyWithImpl<_$OrderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderResponse extends OrderResponse {
  const factory _OrderResponse(
      {@JsonKey(name: 'price') required final num? price,
      @JsonKey(name: 'currency') required final String? currency,
      @JsonKey(name: 'product') required final dynamic product,
      @JsonKey(name: 'order_type') required final OrderTypeEnum? orderType,
      @JsonKey(name: 'order_status')
      required final OrderStatusEnum? orderStatus,
      @JsonKey(name: 'order_status_history')
      required final Map<String, dynamic>? orderStatusHistory,
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
      required final StudentTable? student}) = _$OrderResponseImpl;
  const _OrderResponse._() : super._();

  factory _OrderResponse.fromJson(Map<String, dynamic> json) =
      _$OrderResponseImpl.fromJson;

  /// Price
  @override
  @JsonKey(name: 'price')
  num? get price;

  /// Currency
  @override
  @JsonKey(name: 'currency')
  String? get currency;

  /// Product
  @override
  @JsonKey(name: 'product')
  dynamic get product;
  @override
  @JsonKey(name: 'order_type')
  OrderTypeEnum? get orderType;
  @override
  @JsonKey(name: 'order_status')
  OrderStatusEnum? get orderStatus;

  /// Order Status History
  @override
  @JsonKey(name: 'order_status_history')
  Map<String, dynamic>? get orderStatusHistory;

  /// Quantity
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;

  /// Payment Method
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;

  /// Payment Status
  @override
  @JsonKey(name: 'payment_status')
  String? get paymentStatus;

  /// Shipping Address
  @override
  @JsonKey(name: 'shipping_address')
  String? get shippingAddress;
  @override
  @JsonKey(name: 'shipping_status')
  ShippingStatusEnum? get shippingStatus;

  /// Discount
  @override
  @JsonKey(name: 'discount')
  num? get discount;
  @override
  @JsonKey(name: 'discount_type')
  DiscountTypeEnum? get discountType;

  /// Payment Processing Id
  @override
  @JsonKey(name: 'payment_processing_id')
  String? get paymentProcessingId;

  /// Final Price
  @override
  @JsonKey(name: 'final_price')
  num? get finalPrice;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'student')
  StudentTable? get student;

  /// Create a copy of OrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
