// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_account_entry_order_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerAccountEntryOrderDetailsDto {
  /// orderId
  @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderIdKey_)
  String get orderId;

  /// orderNumber
  @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderNumberKey_)
  int get orderNumber;

  /// amount
  @JsonKey(name: CustomerAccountEntryOrderDetailsDto.amountKey_)
  double get amount;

  /// date
  @JsonKey(name: CustomerAccountEntryOrderDetailsDto.dateKey_)
  DateTime get date;

  /// Create a copy of CustomerAccountEntryOrderDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerAccountEntryOrderDetailsDtoCopyWith<
          CustomerAccountEntryOrderDetailsDto>
      get copyWith => _$CustomerAccountEntryOrderDetailsDtoCopyWithImpl<
              CustomerAccountEntryOrderDetailsDto>(
          this as CustomerAccountEntryOrderDetailsDto, _$identity);

  /// Serializes this CustomerAccountEntryOrderDetailsDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomerAccountEntryOrderDetailsDto &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, orderNumber, amount, date);

  @override
  String toString() {
    return 'CustomerAccountEntryOrderDetailsDto(orderId: $orderId, orderNumber: $orderNumber, amount: $amount, date: $date)';
  }
}

/// @nodoc
abstract mixin class $CustomerAccountEntryOrderDetailsDtoCopyWith<$Res> {
  factory $CustomerAccountEntryOrderDetailsDtoCopyWith(
          CustomerAccountEntryOrderDetailsDto value,
          $Res Function(CustomerAccountEntryOrderDetailsDto) _then) =
      _$CustomerAccountEntryOrderDetailsDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderIdKey_)
      String orderId,
      @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderNumberKey_)
      int orderNumber,
      @JsonKey(name: CustomerAccountEntryOrderDetailsDto.amountKey_)
      double amount,
      @JsonKey(name: CustomerAccountEntryOrderDetailsDto.dateKey_)
      DateTime date});
}

/// @nodoc
class _$CustomerAccountEntryOrderDetailsDtoCopyWithImpl<$Res>
    implements $CustomerAccountEntryOrderDetailsDtoCopyWith<$Res> {
  _$CustomerAccountEntryOrderDetailsDtoCopyWithImpl(this._self, this._then);

  final CustomerAccountEntryOrderDetailsDto _self;
  final $Res Function(CustomerAccountEntryOrderDetailsDto) _then;

  /// Create a copy of CustomerAccountEntryOrderDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? orderNumber = null,
    Object? amount = null,
    Object? date = null,
  }) {
    return _then(_self.copyWith(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [CustomerAccountEntryOrderDetailsDto].
extension CustomerAccountEntryOrderDetailsDtoPatterns
    on CustomerAccountEntryOrderDetailsDto {
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
    TResult Function(_CustomerAccountEntryOrderDetailsDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomerAccountEntryOrderDetailsDto() when $default != null:
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
    TResult Function(_CustomerAccountEntryOrderDetailsDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerAccountEntryOrderDetailsDto():
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
    TResult? Function(_CustomerAccountEntryOrderDetailsDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerAccountEntryOrderDetailsDto() when $default != null:
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
            @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderIdKey_)
            String orderId,
            @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderNumberKey_)
            int orderNumber,
            @JsonKey(name: CustomerAccountEntryOrderDetailsDto.amountKey_)
            double amount,
            @JsonKey(name: CustomerAccountEntryOrderDetailsDto.dateKey_)
            DateTime date)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomerAccountEntryOrderDetailsDto() when $default != null:
        return $default(
            _that.orderId, _that.orderNumber, _that.amount, _that.date);
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
            @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderIdKey_)
            String orderId,
            @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderNumberKey_)
            int orderNumber,
            @JsonKey(name: CustomerAccountEntryOrderDetailsDto.amountKey_)
            double amount,
            @JsonKey(name: CustomerAccountEntryOrderDetailsDto.dateKey_)
            DateTime date)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerAccountEntryOrderDetailsDto():
        return $default(
            _that.orderId, _that.orderNumber, _that.amount, _that.date);
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
            @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderIdKey_)
            String orderId,
            @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderNumberKey_)
            int orderNumber,
            @JsonKey(name: CustomerAccountEntryOrderDetailsDto.amountKey_)
            double amount,
            @JsonKey(name: CustomerAccountEntryOrderDetailsDto.dateKey_)
            DateTime date)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomerAccountEntryOrderDetailsDto() when $default != null:
        return $default(
            _that.orderId, _that.orderNumber, _that.amount, _that.date);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _CustomerAccountEntryOrderDetailsDto
    extends CustomerAccountEntryOrderDetailsDto {
  const _CustomerAccountEntryOrderDetailsDto(
      {@JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderIdKey_)
      required this.orderId,
      @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderNumberKey_)
      required this.orderNumber,
      @JsonKey(name: CustomerAccountEntryOrderDetailsDto.amountKey_)
      required this.amount,
      @JsonKey(name: CustomerAccountEntryOrderDetailsDto.dateKey_)
      required this.date})
      : super._();
  factory _CustomerAccountEntryOrderDetailsDto.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerAccountEntryOrderDetailsDtoFromJson(json);

  /// orderId
  @override
  @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderIdKey_)
  final String orderId;

  /// orderNumber
  @override
  @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderNumberKey_)
  final int orderNumber;

  /// amount
  @override
  @JsonKey(name: CustomerAccountEntryOrderDetailsDto.amountKey_)
  final double amount;

  /// date
  @override
  @JsonKey(name: CustomerAccountEntryOrderDetailsDto.dateKey_)
  final DateTime date;

  /// Create a copy of CustomerAccountEntryOrderDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerAccountEntryOrderDetailsDtoCopyWith<
          _CustomerAccountEntryOrderDetailsDto>
      get copyWith => __$CustomerAccountEntryOrderDetailsDtoCopyWithImpl<
          _CustomerAccountEntryOrderDetailsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerAccountEntryOrderDetailsDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerAccountEntryOrderDetailsDto &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, orderNumber, amount, date);

  @override
  String toString() {
    return 'CustomerAccountEntryOrderDetailsDto(orderId: $orderId, orderNumber: $orderNumber, amount: $amount, date: $date)';
  }
}

/// @nodoc
abstract mixin class _$CustomerAccountEntryOrderDetailsDtoCopyWith<$Res>
    implements $CustomerAccountEntryOrderDetailsDtoCopyWith<$Res> {
  factory _$CustomerAccountEntryOrderDetailsDtoCopyWith(
          _CustomerAccountEntryOrderDetailsDto value,
          $Res Function(_CustomerAccountEntryOrderDetailsDto) _then) =
      __$CustomerAccountEntryOrderDetailsDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderIdKey_)
      String orderId,
      @JsonKey(name: CustomerAccountEntryOrderDetailsDto.orderNumberKey_)
      int orderNumber,
      @JsonKey(name: CustomerAccountEntryOrderDetailsDto.amountKey_)
      double amount,
      @JsonKey(name: CustomerAccountEntryOrderDetailsDto.dateKey_)
      DateTime date});
}

/// @nodoc
class __$CustomerAccountEntryOrderDetailsDtoCopyWithImpl<$Res>
    implements _$CustomerAccountEntryOrderDetailsDtoCopyWith<$Res> {
  __$CustomerAccountEntryOrderDetailsDtoCopyWithImpl(this._self, this._then);

  final _CustomerAccountEntryOrderDetailsDto _self;
  final $Res Function(_CustomerAccountEntryOrderDetailsDto) _then;

  /// Create a copy of CustomerAccountEntryOrderDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? orderNumber = null,
    Object? amount = null,
    Object? date = null,
  }) {
    return _then(_CustomerAccountEntryOrderDetailsDto(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}
