// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adjust_stock_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdjustStockDto {
  /// salePointId
  @JsonKey(name: AdjustStockDto.salePointIdKey_)
  String get salePointId;

  /// variantId
  @JsonKey(name: AdjustStockDto.variantIdKey_)
  String? get variantId;

  /// presentationId
  @JsonKey(name: AdjustStockDto.presentationIdKey_)
  String get presentationId;

  /// expirationDate
  @JsonKey(name: AdjustStockDto.expirationDateKey_)
  DateTime? get expirationDate;

  /// quantity
  @JsonKey(name: AdjustStockDto.quantityKey_)
  int get quantity;

  /// reason
  @JsonKey(name: AdjustStockDto.reasonKey_)
  String? get reason;

  /// Create a copy of AdjustStockDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdjustStockDtoCopyWith<AdjustStockDto> get copyWith =>
      _$AdjustStockDtoCopyWithImpl<AdjustStockDto>(
          this as AdjustStockDto, _$identity);

  /// Serializes this AdjustStockDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdjustStockDto &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.presentationId, presentationId) ||
                other.presentationId == presentationId) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salePointId, variantId,
      presentationId, expirationDate, quantity, reason);

  @override
  String toString() {
    return 'AdjustStockDto(salePointId: $salePointId, variantId: $variantId, presentationId: $presentationId, expirationDate: $expirationDate, quantity: $quantity, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $AdjustStockDtoCopyWith<$Res> {
  factory $AdjustStockDtoCopyWith(
          AdjustStockDto value, $Res Function(AdjustStockDto) _then) =
      _$AdjustStockDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdjustStockDto.salePointIdKey_) String salePointId,
      @JsonKey(name: AdjustStockDto.variantIdKey_) String? variantId,
      @JsonKey(name: AdjustStockDto.presentationIdKey_) String presentationId,
      @JsonKey(name: AdjustStockDto.expirationDateKey_)
      DateTime? expirationDate,
      @JsonKey(name: AdjustStockDto.quantityKey_) int quantity,
      @JsonKey(name: AdjustStockDto.reasonKey_) String? reason});
}

/// @nodoc
class _$AdjustStockDtoCopyWithImpl<$Res>
    implements $AdjustStockDtoCopyWith<$Res> {
  _$AdjustStockDtoCopyWithImpl(this._self, this._then);

  final AdjustStockDto _self;
  final $Res Function(AdjustStockDto) _then;

  /// Create a copy of AdjustStockDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salePointId = null,
    Object? variantId = freezed,
    Object? presentationId = null,
    Object? expirationDate = freezed,
    Object? quantity = null,
    Object? reason = freezed,
  }) {
    return _then(_self.copyWith(
      salePointId: null == salePointId
          ? _self.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as String,
      variantId: freezed == variantId
          ? _self.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      presentationId: null == presentationId
          ? _self.presentationId
          : presentationId // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: freezed == expirationDate
          ? _self.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AdjustStockDto].
extension AdjustStockDtoPatterns on AdjustStockDto {
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
    TResult Function(_AdjustStockDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdjustStockDto() when $default != null:
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
    TResult Function(_AdjustStockDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdjustStockDto():
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
    TResult? Function(_AdjustStockDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdjustStockDto() when $default != null:
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
            @JsonKey(name: AdjustStockDto.salePointIdKey_) String salePointId,
            @JsonKey(name: AdjustStockDto.variantIdKey_) String? variantId,
            @JsonKey(name: AdjustStockDto.presentationIdKey_)
            String presentationId,
            @JsonKey(name: AdjustStockDto.expirationDateKey_)
            DateTime? expirationDate,
            @JsonKey(name: AdjustStockDto.quantityKey_) int quantity,
            @JsonKey(name: AdjustStockDto.reasonKey_) String? reason)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AdjustStockDto() when $default != null:
        return $default(
            _that.salePointId,
            _that.variantId,
            _that.presentationId,
            _that.expirationDate,
            _that.quantity,
            _that.reason);
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
            @JsonKey(name: AdjustStockDto.salePointIdKey_) String salePointId,
            @JsonKey(name: AdjustStockDto.variantIdKey_) String? variantId,
            @JsonKey(name: AdjustStockDto.presentationIdKey_)
            String presentationId,
            @JsonKey(name: AdjustStockDto.expirationDateKey_)
            DateTime? expirationDate,
            @JsonKey(name: AdjustStockDto.quantityKey_) int quantity,
            @JsonKey(name: AdjustStockDto.reasonKey_) String? reason)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdjustStockDto():
        return $default(
            _that.salePointId,
            _that.variantId,
            _that.presentationId,
            _that.expirationDate,
            _that.quantity,
            _that.reason);
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
            @JsonKey(name: AdjustStockDto.salePointIdKey_) String salePointId,
            @JsonKey(name: AdjustStockDto.variantIdKey_) String? variantId,
            @JsonKey(name: AdjustStockDto.presentationIdKey_)
            String presentationId,
            @JsonKey(name: AdjustStockDto.expirationDateKey_)
            DateTime? expirationDate,
            @JsonKey(name: AdjustStockDto.quantityKey_) int quantity,
            @JsonKey(name: AdjustStockDto.reasonKey_) String? reason)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AdjustStockDto() when $default != null:
        return $default(
            _that.salePointId,
            _that.variantId,
            _that.presentationId,
            _that.expirationDate,
            _that.quantity,
            _that.reason);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _AdjustStockDto extends AdjustStockDto {
  const _AdjustStockDto(
      {@JsonKey(name: AdjustStockDto.salePointIdKey_) required this.salePointId,
      @JsonKey(name: AdjustStockDto.variantIdKey_) this.variantId,
      @JsonKey(name: AdjustStockDto.presentationIdKey_)
      required this.presentationId,
      @JsonKey(name: AdjustStockDto.expirationDateKey_) this.expirationDate,
      @JsonKey(name: AdjustStockDto.quantityKey_) required this.quantity,
      @JsonKey(name: AdjustStockDto.reasonKey_) this.reason})
      : super._();
  factory _AdjustStockDto.fromJson(Map<String, dynamic> json) =>
      _$AdjustStockDtoFromJson(json);

  /// salePointId
  @override
  @JsonKey(name: AdjustStockDto.salePointIdKey_)
  final String salePointId;

  /// variantId
  @override
  @JsonKey(name: AdjustStockDto.variantIdKey_)
  final String? variantId;

  /// presentationId
  @override
  @JsonKey(name: AdjustStockDto.presentationIdKey_)
  final String presentationId;

  /// expirationDate
  @override
  @JsonKey(name: AdjustStockDto.expirationDateKey_)
  final DateTime? expirationDate;

  /// quantity
  @override
  @JsonKey(name: AdjustStockDto.quantityKey_)
  final int quantity;

  /// reason
  @override
  @JsonKey(name: AdjustStockDto.reasonKey_)
  final String? reason;

  /// Create a copy of AdjustStockDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdjustStockDtoCopyWith<_AdjustStockDto> get copyWith =>
      __$AdjustStockDtoCopyWithImpl<_AdjustStockDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdjustStockDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdjustStockDto &&
            (identical(other.salePointId, salePointId) ||
                other.salePointId == salePointId) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.presentationId, presentationId) ||
                other.presentationId == presentationId) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, salePointId, variantId,
      presentationId, expirationDate, quantity, reason);

  @override
  String toString() {
    return 'AdjustStockDto(salePointId: $salePointId, variantId: $variantId, presentationId: $presentationId, expirationDate: $expirationDate, quantity: $quantity, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class _$AdjustStockDtoCopyWith<$Res>
    implements $AdjustStockDtoCopyWith<$Res> {
  factory _$AdjustStockDtoCopyWith(
          _AdjustStockDto value, $Res Function(_AdjustStockDto) _then) =
      __$AdjustStockDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdjustStockDto.salePointIdKey_) String salePointId,
      @JsonKey(name: AdjustStockDto.variantIdKey_) String? variantId,
      @JsonKey(name: AdjustStockDto.presentationIdKey_) String presentationId,
      @JsonKey(name: AdjustStockDto.expirationDateKey_)
      DateTime? expirationDate,
      @JsonKey(name: AdjustStockDto.quantityKey_) int quantity,
      @JsonKey(name: AdjustStockDto.reasonKey_) String? reason});
}

/// @nodoc
class __$AdjustStockDtoCopyWithImpl<$Res>
    implements _$AdjustStockDtoCopyWith<$Res> {
  __$AdjustStockDtoCopyWithImpl(this._self, this._then);

  final _AdjustStockDto _self;
  final $Res Function(_AdjustStockDto) _then;

  /// Create a copy of AdjustStockDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? salePointId = null,
    Object? variantId = freezed,
    Object? presentationId = null,
    Object? expirationDate = freezed,
    Object? quantity = null,
    Object? reason = freezed,
  }) {
    return _then(_AdjustStockDto(
      salePointId: null == salePointId
          ? _self.salePointId
          : salePointId // ignore: cast_nullable_to_non_nullable
              as String,
      variantId: freezed == variantId
          ? _self.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as String?,
      presentationId: null == presentationId
          ? _self.presentationId
          : presentationId // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDate: freezed == expirationDate
          ? _self.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
