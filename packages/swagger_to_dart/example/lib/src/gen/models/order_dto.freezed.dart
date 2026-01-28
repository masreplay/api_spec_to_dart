// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDto {
  /// id
  @JsonKey(name: OrderDto.idKey_)
  String get id;

  /// kind
  @JsonKey(name: OrderDto.kindKey_)
  DocumentKind get kind;

  /// salePointId
  @JsonKey(name: OrderDto.salePointIdKey_)
  String get salePointId;

  /// salePointName
  @JsonKey(name: OrderDto.salePointNameKey_)
  String get salePointName;

  /// customerId
  @JsonKey(name: OrderDto.customerIdKey_)
  String? get customerId;

  /// customerName
  @JsonKey(name: OrderDto.customerNameKey_)
  String? get customerName;

  /// userId
  @JsonKey(name: OrderDto.userIdKey_)
  String get userId;

  /// userName
  @JsonKey(name: OrderDto.userNameKey_)
  String get userName;

  /// status
  @JsonKey(name: OrderDto.statusKey_)
  OrderStatus get status;

  /// paymentStatus
  @JsonKey(name: OrderDto.paymentStatusKey_)
  OrderPaymentStatus get paymentStatus;

  /// isPaid
  @JsonKey(name: OrderDto.isPaidKey_)
  bool get isPaid;

  /// number
  @JsonKey(name: OrderDto.numberKey_)
  String get number;

  /// total
  @JsonKey(name: OrderDto.totalKey_)
  double get total;

  /// createdAt
  @JsonKey(name: OrderDto.createdAtKey_)
  DateTime get createdAt;

  /// modifiedAt
  @JsonKey(name: OrderDto.modifiedAtKey_)
  DateTime get modifiedAt;

  /// lines
  @JsonKey(name: OrderDto.linesKey_)
  List<OrderLineDto> get lines;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderDtoCopyWith<OrderDto> get copyWith =>
      _$OrderDtoCopyWithImpl<OrderDto>(this as OrderDto, _$identity);

  /// Serializes this OrderDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId) &&
            (identical(other.salePointName, salePointName) ||
                other.salePointName == salePointName) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt) &&
            const DeepCollectionEquality().equals(other.lines, lines));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      kind,
      salePointId,
      salePointName,
      customerId,
      customerName,
      userId,
      userName,
      status,
      paymentStatus,
      isPaid,
      number,
      total,
      createdAt,
      modifiedAt,
      const DeepCollectionEquality().hash(lines));

  @override
  String toString() {
    return 'OrderDto(id: $id, kind: $kind, salePointId: $salePointId, salePointName: $salePointName, customerId: $customerId, customerName: $customerName, userId: $userId, userName: $userName, status: $status, paymentStatus: $paymentStatus, isPaid: $isPaid, number: $number, total: $total, createdAt: $createdAt, modifiedAt: $modifiedAt, lines: $lines)';
  }
}

/// @nodoc
abstract mixin class $OrderDtoCopyWith<$Res> {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) _then) =
      _$OrderDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: OrderDto.idKey_) String id,
      @JsonKey(name: OrderDto.kindKey_) DocumentKind kind,
      @JsonKey(name: OrderDto.salePointIdKey_) String salePointId,
      @JsonKey(name: OrderDto.salePointNameKey_) String salePointName,
      @JsonKey(name: OrderDto.customerIdKey_) String? customerId,
      @JsonKey(name: OrderDto.customerNameKey_) String? customerName,
      @JsonKey(name: OrderDto.userIdKey_) String userId,
      @JsonKey(name: OrderDto.userNameKey_) String userName,
      @JsonKey(name: OrderDto.statusKey_) OrderStatus status,
      @JsonKey(name: OrderDto.paymentStatusKey_)
      OrderPaymentStatus paymentStatus,
      @JsonKey(name: OrderDto.isPaidKey_) bool isPaid,
      @JsonKey(name: OrderDto.numberKey_) String number,
      @JsonKey(name: OrderDto.totalKey_) double total,
      @JsonKey(name: OrderDto.createdAtKey_) DateTime createdAt,
      @JsonKey(name: OrderDto.modifiedAtKey_) DateTime modifiedAt,
      @JsonKey(name: OrderDto.linesKey_) List<OrderLineDto> lines});
}

/// @nodoc
class _$OrderDtoCopyWithImpl<$Res> implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._self, this._then);

  final OrderDto _self;
  final $Res Function(OrderDto) _then;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? salePointId = null,
    Object? salePointName = null,
    Object? customerId = freezed,
    Object? customerName = freezed,
    Object? userId = null,
    Object? userName = null,
    Object? status = null,
    Object? paymentStatus = null,
    Object? isPaid = null,
    Object? number = null,
    Object? total = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? lines = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as DocumentKind,
      salePointId: null == salePointId
          ? _self.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as String,
      salePointName: null == salePointName
          ? _self.salePointName
          : salePointName // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _self.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      paymentStatus: null == paymentStatus
          ? _self.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as OrderPaymentStatus,
      isPaid: null == isPaid
          ? _self.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _self.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lines: null == lines
          ? _self.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<OrderLineDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderDto].
extension OrderDtoPatterns on OrderDto {
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
    TResult Function(_OrderDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderDto() when $default != null:
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
    TResult Function(_OrderDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDto():
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
    TResult? Function(_OrderDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDto() when $default != null:
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
            @JsonKey(name: OrderDto.idKey_) String id,
            @JsonKey(name: OrderDto.kindKey_) DocumentKind kind,
            @JsonKey(name: OrderDto.salePointIdKey_) String salePointId,
            @JsonKey(name: OrderDto.salePointNameKey_) String salePointName,
            @JsonKey(name: OrderDto.customerIdKey_) String? customerId,
            @JsonKey(name: OrderDto.customerNameKey_) String? customerName,
            @JsonKey(name: OrderDto.userIdKey_) String userId,
            @JsonKey(name: OrderDto.userNameKey_) String userName,
            @JsonKey(name: OrderDto.statusKey_) OrderStatus status,
            @JsonKey(name: OrderDto.paymentStatusKey_)
            OrderPaymentStatus paymentStatus,
            @JsonKey(name: OrderDto.isPaidKey_) bool isPaid,
            @JsonKey(name: OrderDto.numberKey_) String number,
            @JsonKey(name: OrderDto.totalKey_) double total,
            @JsonKey(name: OrderDto.createdAtKey_) DateTime createdAt,
            @JsonKey(name: OrderDto.modifiedAtKey_) DateTime modifiedAt,
            @JsonKey(name: OrderDto.linesKey_) List<OrderLineDto> lines)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderDto() when $default != null:
        return $default(
            _that.id,
            _that.kind,
            _that.salePointId,
            _that.salePointName,
            _that.customerId,
            _that.customerName,
            _that.userId,
            _that.userName,
            _that.status,
            _that.paymentStatus,
            _that.isPaid,
            _that.number,
            _that.total,
            _that.createdAt,
            _that.modifiedAt,
            _that.lines);
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
            @JsonKey(name: OrderDto.idKey_) String id,
            @JsonKey(name: OrderDto.kindKey_) DocumentKind kind,
            @JsonKey(name: OrderDto.salePointIdKey_) String salePointId,
            @JsonKey(name: OrderDto.salePointNameKey_) String salePointName,
            @JsonKey(name: OrderDto.customerIdKey_) String? customerId,
            @JsonKey(name: OrderDto.customerNameKey_) String? customerName,
            @JsonKey(name: OrderDto.userIdKey_) String userId,
            @JsonKey(name: OrderDto.userNameKey_) String userName,
            @JsonKey(name: OrderDto.statusKey_) OrderStatus status,
            @JsonKey(name: OrderDto.paymentStatusKey_)
            OrderPaymentStatus paymentStatus,
            @JsonKey(name: OrderDto.isPaidKey_) bool isPaid,
            @JsonKey(name: OrderDto.numberKey_) String number,
            @JsonKey(name: OrderDto.totalKey_) double total,
            @JsonKey(name: OrderDto.createdAtKey_) DateTime createdAt,
            @JsonKey(name: OrderDto.modifiedAtKey_) DateTime modifiedAt,
            @JsonKey(name: OrderDto.linesKey_) List<OrderLineDto> lines)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDto():
        return $default(
            _that.id,
            _that.kind,
            _that.salePointId,
            _that.salePointName,
            _that.customerId,
            _that.customerName,
            _that.userId,
            _that.userName,
            _that.status,
            _that.paymentStatus,
            _that.isPaid,
            _that.number,
            _that.total,
            _that.createdAt,
            _that.modifiedAt,
            _that.lines);
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
            @JsonKey(name: OrderDto.idKey_) String id,
            @JsonKey(name: OrderDto.kindKey_) DocumentKind kind,
            @JsonKey(name: OrderDto.salePointIdKey_) String salePointId,
            @JsonKey(name: OrderDto.salePointNameKey_) String salePointName,
            @JsonKey(name: OrderDto.customerIdKey_) String? customerId,
            @JsonKey(name: OrderDto.customerNameKey_) String? customerName,
            @JsonKey(name: OrderDto.userIdKey_) String userId,
            @JsonKey(name: OrderDto.userNameKey_) String userName,
            @JsonKey(name: OrderDto.statusKey_) OrderStatus status,
            @JsonKey(name: OrderDto.paymentStatusKey_)
            OrderPaymentStatus paymentStatus,
            @JsonKey(name: OrderDto.isPaidKey_) bool isPaid,
            @JsonKey(name: OrderDto.numberKey_) String number,
            @JsonKey(name: OrderDto.totalKey_) double total,
            @JsonKey(name: OrderDto.createdAtKey_) DateTime createdAt,
            @JsonKey(name: OrderDto.modifiedAtKey_) DateTime modifiedAt,
            @JsonKey(name: OrderDto.linesKey_) List<OrderLineDto> lines)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderDto() when $default != null:
        return $default(
            _that.id,
            _that.kind,
            _that.salePointId,
            _that.salePointName,
            _that.customerId,
            _that.customerName,
            _that.userId,
            _that.userName,
            _that.status,
            _that.paymentStatus,
            _that.isPaid,
            _that.number,
            _that.total,
            _that.createdAt,
            _that.modifiedAt,
            _that.lines);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _OrderDto extends OrderDto {
  const _OrderDto(
      {@JsonKey(name: OrderDto.idKey_) required this.id,
      @JsonKey(name: OrderDto.kindKey_) required this.kind,
      @JsonKey(name: OrderDto.salePointIdKey_) required this.salePointId,
      @JsonKey(name: OrderDto.salePointNameKey_) required this.salePointName,
      @JsonKey(name: OrderDto.customerIdKey_) this.customerId,
      @JsonKey(name: OrderDto.customerNameKey_) this.customerName,
      @JsonKey(name: OrderDto.userIdKey_) required this.userId,
      @JsonKey(name: OrderDto.userNameKey_) required this.userName,
      @JsonKey(name: OrderDto.statusKey_) required this.status,
      @JsonKey(name: OrderDto.paymentStatusKey_) required this.paymentStatus,
      @JsonKey(name: OrderDto.isPaidKey_) required this.isPaid,
      @JsonKey(name: OrderDto.numberKey_) required this.number,
      @JsonKey(name: OrderDto.totalKey_) required this.total,
      @JsonKey(name: OrderDto.createdAtKey_) required this.createdAt,
      @JsonKey(name: OrderDto.modifiedAtKey_) required this.modifiedAt,
      @JsonKey(name: OrderDto.linesKey_)
      required final List<OrderLineDto> lines})
      : _lines = lines,
        super._();
  factory _OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: OrderDto.idKey_)
  final String id;

  /// kind
  @override
  @JsonKey(name: OrderDto.kindKey_)
  final DocumentKind kind;

  /// salePointId
  @override
  @JsonKey(name: OrderDto.salePointIdKey_)
  final String salePointId;

  /// salePointName
  @override
  @JsonKey(name: OrderDto.salePointNameKey_)
  final String salePointName;

  /// customerId
  @override
  @JsonKey(name: OrderDto.customerIdKey_)
  final String? customerId;

  /// customerName
  @override
  @JsonKey(name: OrderDto.customerNameKey_)
  final String? customerName;

  /// userId
  @override
  @JsonKey(name: OrderDto.userIdKey_)
  final String userId;

  /// userName
  @override
  @JsonKey(name: OrderDto.userNameKey_)
  final String userName;

  /// status
  @override
  @JsonKey(name: OrderDto.statusKey_)
  final OrderStatus status;

  /// paymentStatus
  @override
  @JsonKey(name: OrderDto.paymentStatusKey_)
  final OrderPaymentStatus paymentStatus;

  /// isPaid
  @override
  @JsonKey(name: OrderDto.isPaidKey_)
  final bool isPaid;

  /// number
  @override
  @JsonKey(name: OrderDto.numberKey_)
  final String number;

  /// total
  @override
  @JsonKey(name: OrderDto.totalKey_)
  final double total;

  /// createdAt
  @override
  @JsonKey(name: OrderDto.createdAtKey_)
  final DateTime createdAt;

  /// modifiedAt
  @override
  @JsonKey(name: OrderDto.modifiedAtKey_)
  final DateTime modifiedAt;

  /// lines
  final List<OrderLineDto> _lines;

  /// lines
  @override
  @JsonKey(name: OrderDto.linesKey_)
  List<OrderLineDto> get lines {
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderDtoCopyWith<_OrderDto> get copyWith =>
      __$OrderDtoCopyWithImpl<_OrderDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId) &&
            (identical(other.salePointName, salePointName) ||
                other.salePointName == salePointName) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      kind,
      salePointId,
      salePointName,
      customerId,
      customerName,
      userId,
      userName,
      status,
      paymentStatus,
      isPaid,
      number,
      total,
      createdAt,
      modifiedAt,
      const DeepCollectionEquality().hash(_lines));

  @override
  String toString() {
    return 'OrderDto(id: $id, kind: $kind, salePointId: $salePointId, salePointName: $salePointName, customerId: $customerId, customerName: $customerName, userId: $userId, userName: $userName, status: $status, paymentStatus: $paymentStatus, isPaid: $isPaid, number: $number, total: $total, createdAt: $createdAt, modifiedAt: $modifiedAt, lines: $lines)';
  }
}

/// @nodoc
abstract mixin class _$OrderDtoCopyWith<$Res>
    implements $OrderDtoCopyWith<$Res> {
  factory _$OrderDtoCopyWith(_OrderDto value, $Res Function(_OrderDto) _then) =
      __$OrderDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: OrderDto.idKey_) String id,
      @JsonKey(name: OrderDto.kindKey_) DocumentKind kind,
      @JsonKey(name: OrderDto.salePointIdKey_) String salePointId,
      @JsonKey(name: OrderDto.salePointNameKey_) String salePointName,
      @JsonKey(name: OrderDto.customerIdKey_) String? customerId,
      @JsonKey(name: OrderDto.customerNameKey_) String? customerName,
      @JsonKey(name: OrderDto.userIdKey_) String userId,
      @JsonKey(name: OrderDto.userNameKey_) String userName,
      @JsonKey(name: OrderDto.statusKey_) OrderStatus status,
      @JsonKey(name: OrderDto.paymentStatusKey_)
      OrderPaymentStatus paymentStatus,
      @JsonKey(name: OrderDto.isPaidKey_) bool isPaid,
      @JsonKey(name: OrderDto.numberKey_) String number,
      @JsonKey(name: OrderDto.totalKey_) double total,
      @JsonKey(name: OrderDto.createdAtKey_) DateTime createdAt,
      @JsonKey(name: OrderDto.modifiedAtKey_) DateTime modifiedAt,
      @JsonKey(name: OrderDto.linesKey_) List<OrderLineDto> lines});
}

/// @nodoc
class __$OrderDtoCopyWithImpl<$Res> implements _$OrderDtoCopyWith<$Res> {
  __$OrderDtoCopyWithImpl(this._self, this._then);

  final _OrderDto _self;
  final $Res Function(_OrderDto) _then;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? kind = null,
    Object? salePointId = null,
    Object? salePointName = null,
    Object? customerId = freezed,
    Object? customerName = freezed,
    Object? userId = null,
    Object? userName = null,
    Object? status = null,
    Object? paymentStatus = null,
    Object? isPaid = null,
    Object? number = null,
    Object? total = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? lines = null,
  }) {
    return _then(_OrderDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as DocumentKind,
      salePointId: null == salePointId
          ? _self.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as String,
      salePointName: null == salePointName
          ? _self.salePointName
          : salePointName // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _self.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      paymentStatus: null == paymentStatus
          ? _self.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as OrderPaymentStatus,
      isPaid: null == isPaid
          ? _self.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _self.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lines: null == lines
          ? _self._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<OrderLineDto>,
    ));
  }
}
