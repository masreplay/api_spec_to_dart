// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_order_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateOrderLine {
  /// id
  @JsonKey(name: UpdateOrderLine.idKey_)
  String get id;

  /// quantity
  @JsonKey(name: UpdateOrderLine.quantityKey_)
  int? get quantity;

  /// salePrice
  @JsonKey(name: UpdateOrderLine.salePriceKey_)
  double? get salePrice;

  /// type
  @JsonKey(name: UpdateOrderLine.typeKey_)
  String get type;

  /// Create a copy of UpdateOrderLine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateOrderLineCopyWith<UpdateOrderLine> get copyWith =>
      _$UpdateOrderLineCopyWithImpl<UpdateOrderLine>(
          this as UpdateOrderLine, _$identity);

  /// Serializes this UpdateOrderLine to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateOrderLine &&
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
    return 'UpdateOrderLine(id: $id, quantity: $quantity, salePrice: $salePrice, type: $type)';
  }
}

/// @nodoc
abstract mixin class $UpdateOrderLineCopyWith<$Res> {
  factory $UpdateOrderLineCopyWith(
          UpdateOrderLine value, $Res Function(UpdateOrderLine) _then) =
      _$UpdateOrderLineCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UpdateOrderLine.idKey_) String id,
      @JsonKey(name: UpdateOrderLine.quantityKey_) int? quantity,
      @JsonKey(name: UpdateOrderLine.salePriceKey_) double? salePrice,
      @JsonKey(name: UpdateOrderLine.typeKey_) String type});
}

/// @nodoc
class _$UpdateOrderLineCopyWithImpl<$Res>
    implements $UpdateOrderLineCopyWith<$Res> {
  _$UpdateOrderLineCopyWithImpl(this._self, this._then);

  final UpdateOrderLine _self;
  final $Res Function(UpdateOrderLine) _then;

  /// Create a copy of UpdateOrderLine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = freezed,
    Object? salePrice = freezed,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
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

/// Adds pattern-matching-related methods to [UpdateOrderLine].
extension UpdateOrderLinePatterns on UpdateOrderLine {
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
    TResult Function(_UpdateOrderLine value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateOrderLine() when $default != null:
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
    TResult Function(_UpdateOrderLine value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateOrderLine():
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
    TResult? Function(_UpdateOrderLine value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateOrderLine() when $default != null:
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
            @JsonKey(name: UpdateOrderLine.idKey_) String id,
            @JsonKey(name: UpdateOrderLine.quantityKey_) int? quantity,
            @JsonKey(name: UpdateOrderLine.salePriceKey_) double? salePrice,
            @JsonKey(name: UpdateOrderLine.typeKey_) String type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UpdateOrderLine() when $default != null:
        return $default(_that.id, _that.quantity, _that.salePrice, _that.type);
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
            @JsonKey(name: UpdateOrderLine.idKey_) String id,
            @JsonKey(name: UpdateOrderLine.quantityKey_) int? quantity,
            @JsonKey(name: UpdateOrderLine.salePriceKey_) double? salePrice,
            @JsonKey(name: UpdateOrderLine.typeKey_) String type)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateOrderLine():
        return $default(_that.id, _that.quantity, _that.salePrice, _that.type);
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
            @JsonKey(name: UpdateOrderLine.idKey_) String id,
            @JsonKey(name: UpdateOrderLine.quantityKey_) int? quantity,
            @JsonKey(name: UpdateOrderLine.salePriceKey_) double? salePrice,
            @JsonKey(name: UpdateOrderLine.typeKey_) String type)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UpdateOrderLine() when $default != null:
        return $default(_that.id, _that.quantity, _that.salePrice, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _UpdateOrderLine extends UpdateOrderLine {
  const _UpdateOrderLine(
      {@JsonKey(name: UpdateOrderLine.idKey_) required this.id,
      @JsonKey(name: UpdateOrderLine.quantityKey_) this.quantity,
      @JsonKey(name: UpdateOrderLine.salePriceKey_) this.salePrice,
      @JsonKey(name: UpdateOrderLine.typeKey_) this.type = 'update'})
      : super._();
  factory _UpdateOrderLine.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderLineFromJson(json);

  /// id
  @override
  @JsonKey(name: UpdateOrderLine.idKey_)
  final String id;

  /// quantity
  @override
  @JsonKey(name: UpdateOrderLine.quantityKey_)
  final int? quantity;

  /// salePrice
  @override
  @JsonKey(name: UpdateOrderLine.salePriceKey_)
  final double? salePrice;

  /// type
  @override
  @JsonKey(name: UpdateOrderLine.typeKey_)
  final String type;

  /// Create a copy of UpdateOrderLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateOrderLineCopyWith<_UpdateOrderLine> get copyWith =>
      __$UpdateOrderLineCopyWithImpl<_UpdateOrderLine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateOrderLineToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateOrderLine &&
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
    return 'UpdateOrderLine(id: $id, quantity: $quantity, salePrice: $salePrice, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$UpdateOrderLineCopyWith<$Res>
    implements $UpdateOrderLineCopyWith<$Res> {
  factory _$UpdateOrderLineCopyWith(
          _UpdateOrderLine value, $Res Function(_UpdateOrderLine) _then) =
      __$UpdateOrderLineCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UpdateOrderLine.idKey_) String id,
      @JsonKey(name: UpdateOrderLine.quantityKey_) int? quantity,
      @JsonKey(name: UpdateOrderLine.salePriceKey_) double? salePrice,
      @JsonKey(name: UpdateOrderLine.typeKey_) String type});
}

/// @nodoc
class __$UpdateOrderLineCopyWithImpl<$Res>
    implements _$UpdateOrderLineCopyWith<$Res> {
  __$UpdateOrderLineCopyWithImpl(this._self, this._then);

  final _UpdateOrderLine _self;
  final $Res Function(_UpdateOrderLine) _then;

  /// Create a copy of UpdateOrderLine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? quantity = freezed,
    Object? salePrice = freezed,
    Object? type = null,
  }) {
    return _then(_UpdateOrderLine(
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
