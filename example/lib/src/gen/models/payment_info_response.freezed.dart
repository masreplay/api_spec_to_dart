// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentInfoResponse _$PaymentInfoResponseFromJson(Map<String, dynamic> json) {
  return _PaymentInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentInfoResponse {
  @JsonKey(name: 'amount')
  PaymentInfoAmount get amount => throw _privateConstructorUsedError;

  /// Payment Methods
  @JsonKey(name: 'payment_methods')
  List<PaymentMethodPublic> get paymentMethods =>
      throw _privateConstructorUsedError;

  /// Serializes this PaymentInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentInfoResponseCopyWith<PaymentInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInfoResponseCopyWith<$Res> {
  factory $PaymentInfoResponseCopyWith(
          PaymentInfoResponse value, $Res Function(PaymentInfoResponse) then) =
      _$PaymentInfoResponseCopyWithImpl<$Res, PaymentInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'amount') PaymentInfoAmount amount,
      @JsonKey(name: 'payment_methods')
      List<PaymentMethodPublic> paymentMethods});

  $PaymentInfoAmountCopyWith<$Res> get amount;
}

/// @nodoc
class _$PaymentInfoResponseCopyWithImpl<$Res, $Val extends PaymentInfoResponse>
    implements $PaymentInfoResponseCopyWith<$Res> {
  _$PaymentInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? paymentMethods = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as PaymentInfoAmount,
      paymentMethods: null == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodPublic>,
    ) as $Val);
  }

  /// Create a copy of PaymentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentInfoAmountCopyWith<$Res> get amount {
    return $PaymentInfoAmountCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentInfoResponseImplCopyWith<$Res>
    implements $PaymentInfoResponseCopyWith<$Res> {
  factory _$$PaymentInfoResponseImplCopyWith(_$PaymentInfoResponseImpl value,
          $Res Function(_$PaymentInfoResponseImpl) then) =
      __$$PaymentInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'amount') PaymentInfoAmount amount,
      @JsonKey(name: 'payment_methods')
      List<PaymentMethodPublic> paymentMethods});

  @override
  $PaymentInfoAmountCopyWith<$Res> get amount;
}

/// @nodoc
class __$$PaymentInfoResponseImplCopyWithImpl<$Res>
    extends _$PaymentInfoResponseCopyWithImpl<$Res, _$PaymentInfoResponseImpl>
    implements _$$PaymentInfoResponseImplCopyWith<$Res> {
  __$$PaymentInfoResponseImplCopyWithImpl(_$PaymentInfoResponseImpl _value,
      $Res Function(_$PaymentInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? paymentMethods = null,
  }) {
    return _then(_$PaymentInfoResponseImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as PaymentInfoAmount,
      paymentMethods: null == paymentMethods
          ? _value._paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodPublic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$PaymentInfoResponseImpl extends _PaymentInfoResponse {
  const _$PaymentInfoResponseImpl(
      {@JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'payment_methods')
      required final List<PaymentMethodPublic> paymentMethods})
      : _paymentMethods = paymentMethods,
        super._();

  factory _$PaymentInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'amount')
  final PaymentInfoAmount amount;

  /// Payment Methods
  final List<PaymentMethodPublic> _paymentMethods;

  /// Payment Methods
  @override
  @JsonKey(name: 'payment_methods')
  List<PaymentMethodPublic> get paymentMethods {
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethods);
  }

  @override
  String toString() {
    return 'PaymentInfoResponse(amount: $amount, paymentMethods: $paymentMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInfoResponseImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._paymentMethods, _paymentMethods));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount,
      const DeepCollectionEquality().hash(_paymentMethods));

  /// Create a copy of PaymentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentInfoResponseImplCopyWith<_$PaymentInfoResponseImpl> get copyWith =>
      __$$PaymentInfoResponseImplCopyWithImpl<_$PaymentInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentInfoResponse extends PaymentInfoResponse {
  const factory _PaymentInfoResponse(
          {@JsonKey(name: 'amount') required final PaymentInfoAmount amount,
          @JsonKey(name: 'payment_methods')
          required final List<PaymentMethodPublic> paymentMethods}) =
      _$PaymentInfoResponseImpl;
  const _PaymentInfoResponse._() : super._();

  factory _PaymentInfoResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'amount')
  PaymentInfoAmount get amount;

  /// Payment Methods
  @override
  @JsonKey(name: 'payment_methods')
  List<PaymentMethodPublic> get paymentMethods;

  /// Create a copy of PaymentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentInfoResponseImplCopyWith<_$PaymentInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
