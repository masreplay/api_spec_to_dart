// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentCardModel {
  /// cardNumber
  @JsonKey(name: PaymentCardModel.cardNumberKey)
  String get cardNumber;

  /// cardBrand
  @JsonKey(name: PaymentCardModel.cardBrandKey)
  PaymentCardBrand? get cardBrand;

  /// Create a copy of PaymentCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentCardModelCopyWith<PaymentCardModel> get copyWith =>
      _$PaymentCardModelCopyWithImpl<PaymentCardModel>(
          this as PaymentCardModel, _$identity);

  /// Serializes this PaymentCardModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentCardModel &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardBrand, cardBrand) ||
                other.cardBrand == cardBrand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cardNumber, cardBrand);

  @override
  String toString() {
    return 'PaymentCardModel(cardNumber: $cardNumber, cardBrand: $cardBrand)';
  }
}

/// @nodoc
abstract mixin class $PaymentCardModelCopyWith<$Res> {
  factory $PaymentCardModelCopyWith(
          PaymentCardModel value, $Res Function(PaymentCardModel) _then) =
      _$PaymentCardModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PaymentCardModel.cardNumberKey) String cardNumber,
      @JsonKey(name: PaymentCardModel.cardBrandKey)
      PaymentCardBrand? cardBrand});
}

/// @nodoc
class _$PaymentCardModelCopyWithImpl<$Res>
    implements $PaymentCardModelCopyWith<$Res> {
  _$PaymentCardModelCopyWithImpl(this._self, this._then);

  final PaymentCardModel _self;
  final $Res Function(PaymentCardModel) _then;

  /// Create a copy of PaymentCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? cardBrand = freezed,
  }) {
    return _then(_self.copyWith(
      cardNumber: null == cardNumber
          ? _self.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardBrand: freezed == cardBrand
          ? _self.cardBrand
          : cardBrand // ignore: cast_nullable_to_non_nullable
              as PaymentCardBrand?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PaymentCardModel].
extension PaymentCardModelPatterns on PaymentCardModel {
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
    TResult Function(_PaymentCardModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaymentCardModel() when $default != null:
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
    TResult Function(_PaymentCardModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentCardModel():
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
    TResult? Function(_PaymentCardModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentCardModel() when $default != null:
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
            @JsonKey(name: PaymentCardModel.cardNumberKey) String cardNumber,
            @JsonKey(name: PaymentCardModel.cardBrandKey)
            PaymentCardBrand? cardBrand)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaymentCardModel() when $default != null:
        return $default(_that.cardNumber, _that.cardBrand);
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
            @JsonKey(name: PaymentCardModel.cardNumberKey) String cardNumber,
            @JsonKey(name: PaymentCardModel.cardBrandKey)
            PaymentCardBrand? cardBrand)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentCardModel():
        return $default(_that.cardNumber, _that.cardBrand);
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
            @JsonKey(name: PaymentCardModel.cardNumberKey) String cardNumber,
            @JsonKey(name: PaymentCardModel.cardBrandKey)
            PaymentCardBrand? cardBrand)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaymentCardModel() when $default != null:
        return $default(_that.cardNumber, _that.cardBrand);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PaymentCardModel extends PaymentCardModel {
  const _PaymentCardModel(
      {@JsonKey(name: PaymentCardModel.cardNumberKey) required this.cardNumber,
      @JsonKey(name: PaymentCardModel.cardBrandKey) required this.cardBrand})
      : super._();
  factory _PaymentCardModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardModelFromJson(json);

  /// cardNumber
  @override
  @JsonKey(name: PaymentCardModel.cardNumberKey)
  final String cardNumber;

  /// cardBrand
  @override
  @JsonKey(name: PaymentCardModel.cardBrandKey)
  final PaymentCardBrand? cardBrand;

  /// Create a copy of PaymentCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentCardModelCopyWith<_PaymentCardModel> get copyWith =>
      __$PaymentCardModelCopyWithImpl<_PaymentCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentCardModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentCardModel &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardBrand, cardBrand) ||
                other.cardBrand == cardBrand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cardNumber, cardBrand);

  @override
  String toString() {
    return 'PaymentCardModel(cardNumber: $cardNumber, cardBrand: $cardBrand)';
  }
}

/// @nodoc
abstract mixin class _$PaymentCardModelCopyWith<$Res>
    implements $PaymentCardModelCopyWith<$Res> {
  factory _$PaymentCardModelCopyWith(
          _PaymentCardModel value, $Res Function(_PaymentCardModel) _then) =
      __$PaymentCardModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PaymentCardModel.cardNumberKey) String cardNumber,
      @JsonKey(name: PaymentCardModel.cardBrandKey)
      PaymentCardBrand? cardBrand});
}

/// @nodoc
class __$PaymentCardModelCopyWithImpl<$Res>
    implements _$PaymentCardModelCopyWith<$Res> {
  __$PaymentCardModelCopyWithImpl(this._self, this._then);

  final _PaymentCardModel _self;
  final $Res Function(_PaymentCardModel) _then;

  /// Create a copy of PaymentCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cardNumber = null,
    Object? cardBrand = freezed,
  }) {
    return _then(_PaymentCardModel(
      cardNumber: null == cardNumber
          ? _self.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardBrand: freezed == cardBrand
          ? _self.cardBrand
          : cardBrand // ignore: cast_nullable_to_non_nullable
              as PaymentCardBrand?,
    ));
  }
}
