// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_feed_missing_payment_section_data_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeFeedMissingPaymentSectionDataPublic
    _$HomeFeedMissingPaymentSectionDataPublicFromJson(
        Map<String, dynamic> json) {
  return _HomeFeedMissingPaymentSectionDataPublic.fromJson(json);
}

/// @nodoc
mixin _$HomeFeedMissingPaymentSectionDataPublic {
  /// Price
  @JsonKey(name: 'price')
  num get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  PriceCurrency get currency => throw _privateConstructorUsedError;

  /// Price Formatted
  @JsonKey(name: 'price_formatted')
  String get priceFormatted => throw _privateConstructorUsedError;

  /// Serializes this HomeFeedMissingPaymentSectionDataPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeFeedMissingPaymentSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeFeedMissingPaymentSectionDataPublicCopyWith<
          HomeFeedMissingPaymentSectionDataPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFeedMissingPaymentSectionDataPublicCopyWith<$Res> {
  factory $HomeFeedMissingPaymentSectionDataPublicCopyWith(
          HomeFeedMissingPaymentSectionDataPublic value,
          $Res Function(HomeFeedMissingPaymentSectionDataPublic) then) =
      _$HomeFeedMissingPaymentSectionDataPublicCopyWithImpl<$Res,
          HomeFeedMissingPaymentSectionDataPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'price') num price,
      @JsonKey(name: 'currency') PriceCurrency currency,
      @JsonKey(name: 'price_formatted') String priceFormatted});
}

/// @nodoc
class _$HomeFeedMissingPaymentSectionDataPublicCopyWithImpl<$Res,
        $Val extends HomeFeedMissingPaymentSectionDataPublic>
    implements $HomeFeedMissingPaymentSectionDataPublicCopyWith<$Res> {
  _$HomeFeedMissingPaymentSectionDataPublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeFeedMissingPaymentSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? currency = null,
    Object? priceFormatted = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as PriceCurrency,
      priceFormatted: null == priceFormatted
          ? _value.priceFormatted
          : priceFormatted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeFeedMissingPaymentSectionDataPublicImplCopyWith<$Res>
    implements $HomeFeedMissingPaymentSectionDataPublicCopyWith<$Res> {
  factory _$$HomeFeedMissingPaymentSectionDataPublicImplCopyWith(
          _$HomeFeedMissingPaymentSectionDataPublicImpl value,
          $Res Function(_$HomeFeedMissingPaymentSectionDataPublicImpl) then) =
      __$$HomeFeedMissingPaymentSectionDataPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'price') num price,
      @JsonKey(name: 'currency') PriceCurrency currency,
      @JsonKey(name: 'price_formatted') String priceFormatted});
}

/// @nodoc
class __$$HomeFeedMissingPaymentSectionDataPublicImplCopyWithImpl<$Res>
    extends _$HomeFeedMissingPaymentSectionDataPublicCopyWithImpl<$Res,
        _$HomeFeedMissingPaymentSectionDataPublicImpl>
    implements _$$HomeFeedMissingPaymentSectionDataPublicImplCopyWith<$Res> {
  __$$HomeFeedMissingPaymentSectionDataPublicImplCopyWithImpl(
      _$HomeFeedMissingPaymentSectionDataPublicImpl _value,
      $Res Function(_$HomeFeedMissingPaymentSectionDataPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeFeedMissingPaymentSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? currency = null,
    Object? priceFormatted = null,
  }) {
    return _then(_$HomeFeedMissingPaymentSectionDataPublicImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as PriceCurrency,
      priceFormatted: null == priceFormatted
          ? _value.priceFormatted
          : priceFormatted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$HomeFeedMissingPaymentSectionDataPublicImpl
    extends _HomeFeedMissingPaymentSectionDataPublic {
  const _$HomeFeedMissingPaymentSectionDataPublicImpl(
      {@JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'currency') required this.currency,
      @JsonKey(name: 'price_formatted') required this.priceFormatted})
      : super._();

  factory _$HomeFeedMissingPaymentSectionDataPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HomeFeedMissingPaymentSectionDataPublicImplFromJson(json);

  /// Price
  @override
  @JsonKey(name: 'price')
  final num price;
  @override
  @JsonKey(name: 'currency')
  final PriceCurrency currency;

  /// Price Formatted
  @override
  @JsonKey(name: 'price_formatted')
  final String priceFormatted;

  @override
  String toString() {
    return 'HomeFeedMissingPaymentSectionDataPublic(price: $price, currency: $currency, priceFormatted: $priceFormatted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFeedMissingPaymentSectionDataPublicImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.priceFormatted, priceFormatted) ||
                other.priceFormatted == priceFormatted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, currency, priceFormatted);

  /// Create a copy of HomeFeedMissingPaymentSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeFeedMissingPaymentSectionDataPublicImplCopyWith<
          _$HomeFeedMissingPaymentSectionDataPublicImpl>
      get copyWith =>
          __$$HomeFeedMissingPaymentSectionDataPublicImplCopyWithImpl<
              _$HomeFeedMissingPaymentSectionDataPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeFeedMissingPaymentSectionDataPublicImplToJson(
      this,
    );
  }
}

abstract class _HomeFeedMissingPaymentSectionDataPublic
    extends HomeFeedMissingPaymentSectionDataPublic {
  const factory _HomeFeedMissingPaymentSectionDataPublic(
          {@JsonKey(name: 'price') required final num price,
          @JsonKey(name: 'currency') required final PriceCurrency currency,
          @JsonKey(name: 'price_formatted')
          required final String priceFormatted}) =
      _$HomeFeedMissingPaymentSectionDataPublicImpl;
  const _HomeFeedMissingPaymentSectionDataPublic._() : super._();

  factory _HomeFeedMissingPaymentSectionDataPublic.fromJson(
          Map<String, dynamic> json) =
      _$HomeFeedMissingPaymentSectionDataPublicImpl.fromJson;

  /// Price
  @override
  @JsonKey(name: 'price')
  num get price;
  @override
  @JsonKey(name: 'currency')
  PriceCurrency get currency;

  /// Price Formatted
  @override
  @JsonKey(name: 'price_formatted')
  String get priceFormatted;

  /// Create a copy of HomeFeedMissingPaymentSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeFeedMissingPaymentSectionDataPublicImplCopyWith<
          _$HomeFeedMissingPaymentSectionDataPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
