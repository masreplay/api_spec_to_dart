// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_api_orders_get_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrdersApiOrdersGetQueryParameters {
  /// pageToken
  @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageTokenKey_)
  String? get pageToken;

  /// pageSize
  @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageSizeKey_)
  int get pageSize;

  /// salePointId
  @JsonKey(name: OrdersApiOrdersGetQueryParameters.salePointIdKey_)
  String? get salePointId;

  /// status
  @JsonKey(name: OrdersApiOrdersGetQueryParameters.statusKey_)
  OrderStatus? get status;

  /// customerId
  @JsonKey(name: OrdersApiOrdersGetQueryParameters.customerIdKey_)
  String? get customerId;

  /// dateRange
  @JsonKey(name: OrdersApiOrdersGetQueryParameters.dateRangeKey_)
  DateRange? get dateRange;

  /// Create a copy of OrdersApiOrdersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrdersApiOrdersGetQueryParametersCopyWith<OrdersApiOrdersGetQueryParameters>
      get copyWith => _$OrdersApiOrdersGetQueryParametersCopyWithImpl<
              OrdersApiOrdersGetQueryParameters>(
          this as OrdersApiOrdersGetQueryParameters, _$identity);

  /// Serializes this OrdersApiOrdersGetQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrdersApiOrdersGetQueryParameters &&
            (identical(other.pageToken, pageToken) ||
                other.pageToken == pageToken) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pageToken, pageSize, salePointId,
      status, customerId, dateRange);

  @override
  String toString() {
    return 'OrdersApiOrdersGetQueryParameters(pageToken: $pageToken, pageSize: $pageSize, salePointId: $salePointId, status: $status, customerId: $customerId, dateRange: $dateRange)';
  }
}

/// @nodoc
abstract mixin class $OrdersApiOrdersGetQueryParametersCopyWith<$Res> {
  factory $OrdersApiOrdersGetQueryParametersCopyWith(
          OrdersApiOrdersGetQueryParameters value,
          $Res Function(OrdersApiOrdersGetQueryParameters) _then) =
      _$OrdersApiOrdersGetQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: OrdersApiOrdersGetQueryParameters.pageTokenKey_)
      String? pageToken,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageSizeKey_)
      int pageSize,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.salePointIdKey_)
      String? salePointId,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.statusKey_)
      OrderStatus? status,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.customerIdKey_)
      String? customerId,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.dateRangeKey_)
      DateRange? dateRange});

  $DateRangeCopyWith<$Res>? get dateRange;
}

/// @nodoc
class _$OrdersApiOrdersGetQueryParametersCopyWithImpl<$Res>
    implements $OrdersApiOrdersGetQueryParametersCopyWith<$Res> {
  _$OrdersApiOrdersGetQueryParametersCopyWithImpl(this._self, this._then);

  final OrdersApiOrdersGetQueryParameters _self;
  final $Res Function(OrdersApiOrdersGetQueryParameters) _then;

  /// Create a copy of OrdersApiOrdersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageToken = freezed,
    Object? pageSize = null,
    Object? salePointId = freezed,
    Object? status = freezed,
    Object? customerId = freezed,
    Object? dateRange = freezed,
  }) {
    return _then(_self.copyWith(
      pageToken: freezed == pageToken
          ? _self.pageToken
          : pageToken // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      salePointId: freezed == salePointId
          ? _self.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateRange: freezed == dateRange
          ? _self.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateRange?,
    ));
  }

  /// Create a copy of OrdersApiOrdersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateRangeCopyWith<$Res>? get dateRange {
    if (_self.dateRange == null) {
      return null;
    }

    return $DateRangeCopyWith<$Res>(_self.dateRange!, (value) {
      return _then(_self.copyWith(dateRange: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OrdersApiOrdersGetQueryParameters].
extension OrdersApiOrdersGetQueryParametersPatterns
    on OrdersApiOrdersGetQueryParameters {
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
    TResult Function(_OrdersApiOrdersGetQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrdersApiOrdersGetQueryParameters() when $default != null:
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
    TResult Function(_OrdersApiOrdersGetQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrdersApiOrdersGetQueryParameters():
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
    TResult? Function(_OrdersApiOrdersGetQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrdersApiOrdersGetQueryParameters() when $default != null:
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
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageTokenKey_)
            String? pageToken,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageSizeKey_)
            int pageSize,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.salePointIdKey_)
            String? salePointId,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.statusKey_)
            OrderStatus? status,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.customerIdKey_)
            String? customerId,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.dateRangeKey_)
            DateRange? dateRange)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrdersApiOrdersGetQueryParameters() when $default != null:
        return $default(_that.pageToken, _that.pageSize, _that.salePointId,
            _that.status, _that.customerId, _that.dateRange);
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
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageTokenKey_)
            String? pageToken,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageSizeKey_)
            int pageSize,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.salePointIdKey_)
            String? salePointId,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.statusKey_)
            OrderStatus? status,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.customerIdKey_)
            String? customerId,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.dateRangeKey_)
            DateRange? dateRange)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrdersApiOrdersGetQueryParameters():
        return $default(_that.pageToken, _that.pageSize, _that.salePointId,
            _that.status, _that.customerId, _that.dateRange);
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
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageTokenKey_)
            String? pageToken,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageSizeKey_)
            int pageSize,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.salePointIdKey_)
            String? salePointId,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.statusKey_)
            OrderStatus? status,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.customerIdKey_)
            String? customerId,
            @JsonKey(name: OrdersApiOrdersGetQueryParameters.dateRangeKey_)
            DateRange? dateRange)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrdersApiOrdersGetQueryParameters() when $default != null:
        return $default(_that.pageToken, _that.pageSize, _that.salePointId,
            _that.status, _that.customerId, _that.dateRange);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _OrdersApiOrdersGetQueryParameters
    extends OrdersApiOrdersGetQueryParameters {
  const _OrdersApiOrdersGetQueryParameters(
      {@JsonKey(name: OrdersApiOrdersGetQueryParameters.pageTokenKey_)
      this.pageToken,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageSizeKey_)
      this.pageSize = 100,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.salePointIdKey_)
      this.salePointId,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.statusKey_) this.status,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.customerIdKey_)
      this.customerId,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.dateRangeKey_)
      this.dateRange})
      : super._();
  factory _OrdersApiOrdersGetQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$OrdersApiOrdersGetQueryParametersFromJson(json);

  /// pageToken
  @override
  @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageTokenKey_)
  final String? pageToken;

  /// pageSize
  @override
  @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageSizeKey_)
  final int pageSize;

  /// salePointId
  @override
  @JsonKey(name: OrdersApiOrdersGetQueryParameters.salePointIdKey_)
  final String? salePointId;

  /// status
  @override
  @JsonKey(name: OrdersApiOrdersGetQueryParameters.statusKey_)
  final OrderStatus? status;

  /// customerId
  @override
  @JsonKey(name: OrdersApiOrdersGetQueryParameters.customerIdKey_)
  final String? customerId;

  /// dateRange
  @override
  @JsonKey(name: OrdersApiOrdersGetQueryParameters.dateRangeKey_)
  final DateRange? dateRange;

  /// Create a copy of OrdersApiOrdersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrdersApiOrdersGetQueryParametersCopyWith<
          _OrdersApiOrdersGetQueryParameters>
      get copyWith => __$OrdersApiOrdersGetQueryParametersCopyWithImpl<
          _OrdersApiOrdersGetQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrdersApiOrdersGetQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrdersApiOrdersGetQueryParameters &&
            (identical(other.pageToken, pageToken) ||
                other.pageToken == pageToken) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pageToken, pageSize, salePointId,
      status, customerId, dateRange);

  @override
  String toString() {
    return 'OrdersApiOrdersGetQueryParameters(pageToken: $pageToken, pageSize: $pageSize, salePointId: $salePointId, status: $status, customerId: $customerId, dateRange: $dateRange)';
  }
}

/// @nodoc
abstract mixin class _$OrdersApiOrdersGetQueryParametersCopyWith<$Res>
    implements $OrdersApiOrdersGetQueryParametersCopyWith<$Res> {
  factory _$OrdersApiOrdersGetQueryParametersCopyWith(
          _OrdersApiOrdersGetQueryParameters value,
          $Res Function(_OrdersApiOrdersGetQueryParameters) _then) =
      __$OrdersApiOrdersGetQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: OrdersApiOrdersGetQueryParameters.pageTokenKey_)
      String? pageToken,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageSizeKey_)
      int pageSize,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.salePointIdKey_)
      String? salePointId,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.statusKey_)
      OrderStatus? status,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.customerIdKey_)
      String? customerId,
      @JsonKey(name: OrdersApiOrdersGetQueryParameters.dateRangeKey_)
      DateRange? dateRange});

  @override
  $DateRangeCopyWith<$Res>? get dateRange;
}

/// @nodoc
class __$OrdersApiOrdersGetQueryParametersCopyWithImpl<$Res>
    implements _$OrdersApiOrdersGetQueryParametersCopyWith<$Res> {
  __$OrdersApiOrdersGetQueryParametersCopyWithImpl(this._self, this._then);

  final _OrdersApiOrdersGetQueryParameters _self;
  final $Res Function(_OrdersApiOrdersGetQueryParameters) _then;

  /// Create a copy of OrdersApiOrdersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pageToken = freezed,
    Object? pageSize = null,
    Object? salePointId = freezed,
    Object? status = freezed,
    Object? customerId = freezed,
    Object? dateRange = freezed,
  }) {
    return _then(_OrdersApiOrdersGetQueryParameters(
      pageToken: freezed == pageToken
          ? _self.pageToken
          : pageToken // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      salePointId: freezed == salePointId
          ? _self.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      customerId: freezed == customerId
          ? _self.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateRange: freezed == dateRange
          ? _self.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateRange?,
    ));
  }

  /// Create a copy of OrdersApiOrdersGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DateRangeCopyWith<$Res>? get dateRange {
    if (_self.dateRange == null) {
      return null;
    }

    return $DateRangeCopyWith<$Res>(_self.dateRange!, (value) {
      return _then(_self.copyWith(dateRange: value));
    });
  }
}
