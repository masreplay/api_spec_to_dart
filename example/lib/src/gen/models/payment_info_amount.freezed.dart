// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_info_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentInfoAmount _$PaymentInfoAmountFromJson(Map<String, dynamic> json) {
  return _PaymentInfoAmount.fromJson(json);
}

/// @nodoc
mixin _$PaymentInfoAmount {
  /// Total
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;

  /// Tax
  @JsonKey(name: 'tax')
  int get tax => throw _privateConstructorUsedError;

  /// Cost
  @JsonKey(name: 'cost')
  int get cost => throw _privateConstructorUsedError;

  /// Serializes this PaymentInfoAmount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentInfoAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentInfoAmountCopyWith<PaymentInfoAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInfoAmountCopyWith<$Res> {
  factory $PaymentInfoAmountCopyWith(
          PaymentInfoAmount value, $Res Function(PaymentInfoAmount) then) =
      _$PaymentInfoAmountCopyWithImpl<$Res, PaymentInfoAmount>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total,
      @JsonKey(name: 'tax') int tax,
      @JsonKey(name: 'cost') int cost});
}

/// @nodoc
class _$PaymentInfoAmountCopyWithImpl<$Res, $Val extends PaymentInfoAmount>
    implements $PaymentInfoAmountCopyWith<$Res> {
  _$PaymentInfoAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentInfoAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? tax = null,
    Object? cost = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentInfoAmountImplCopyWith<$Res>
    implements $PaymentInfoAmountCopyWith<$Res> {
  factory _$$PaymentInfoAmountImplCopyWith(_$PaymentInfoAmountImpl value,
          $Res Function(_$PaymentInfoAmountImpl) then) =
      __$$PaymentInfoAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total,
      @JsonKey(name: 'tax') int tax,
      @JsonKey(name: 'cost') int cost});
}

/// @nodoc
class __$$PaymentInfoAmountImplCopyWithImpl<$Res>
    extends _$PaymentInfoAmountCopyWithImpl<$Res, _$PaymentInfoAmountImpl>
    implements _$$PaymentInfoAmountImplCopyWith<$Res> {
  __$$PaymentInfoAmountImplCopyWithImpl(_$PaymentInfoAmountImpl _value,
      $Res Function(_$PaymentInfoAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentInfoAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? tax = null,
    Object? cost = null,
  }) {
    return _then(_$PaymentInfoAmountImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$PaymentInfoAmountImpl extends _PaymentInfoAmount {
  const _$PaymentInfoAmountImpl(
      {@JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'tax') required this.tax,
      @JsonKey(name: 'cost') required this.cost})
      : super._();

  factory _$PaymentInfoAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentInfoAmountImplFromJson(json);

  /// Total
  @override
  @JsonKey(name: 'total')
  final int total;

  /// Tax
  @override
  @JsonKey(name: 'tax')
  final int tax;

  /// Cost
  @override
  @JsonKey(name: 'cost')
  final int cost;

  @override
  String toString() {
    return 'PaymentInfoAmount(total: $total, tax: $tax, cost: $cost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInfoAmountImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, tax, cost);

  /// Create a copy of PaymentInfoAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentInfoAmountImplCopyWith<_$PaymentInfoAmountImpl> get copyWith =>
      __$$PaymentInfoAmountImplCopyWithImpl<_$PaymentInfoAmountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentInfoAmountImplToJson(
      this,
    );
  }
}

abstract class _PaymentInfoAmount extends PaymentInfoAmount {
  const factory _PaymentInfoAmount(
          {@JsonKey(name: 'total') required final int total,
          @JsonKey(name: 'tax') required final int tax,
          @JsonKey(name: 'cost') required final int cost}) =
      _$PaymentInfoAmountImpl;
  const _PaymentInfoAmount._() : super._();

  factory _PaymentInfoAmount.fromJson(Map<String, dynamic> json) =
      _$PaymentInfoAmountImpl.fromJson;

  /// Total
  @override
  @JsonKey(name: 'total')
  int get total;

  /// Tax
  @override
  @JsonKey(name: 'tax')
  int get tax;

  /// Cost
  @override
  @JsonKey(name: 'cost')
  int get cost;

  /// Create a copy of PaymentInfoAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentInfoAmountImplCopyWith<_$PaymentInfoAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
