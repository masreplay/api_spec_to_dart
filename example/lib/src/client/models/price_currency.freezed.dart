// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PriceCurrency _$PriceCurrencyFromJson(Map<String, dynamic> json) {
  return _PriceCurrency.fromJson(json);
}

/// @nodoc
mixin _$PriceCurrency {
  /// Serializes this PriceCurrency to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCurrencyCopyWith<$Res> {
  factory $PriceCurrencyCopyWith(
          PriceCurrency value, $Res Function(PriceCurrency) then) =
      _$PriceCurrencyCopyWithImpl<$Res, PriceCurrency>;
}

/// @nodoc
class _$PriceCurrencyCopyWithImpl<$Res, $Val extends PriceCurrency>
    implements $PriceCurrencyCopyWith<$Res> {
  _$PriceCurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceCurrency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PriceCurrencyImplCopyWith<$Res> {
  factory _$$PriceCurrencyImplCopyWith(
          _$PriceCurrencyImpl value, $Res Function(_$PriceCurrencyImpl) then) =
      __$$PriceCurrencyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PriceCurrencyImplCopyWithImpl<$Res>
    extends _$PriceCurrencyCopyWithImpl<$Res, _$PriceCurrencyImpl>
    implements _$$PriceCurrencyImplCopyWith<$Res> {
  __$$PriceCurrencyImplCopyWithImpl(
      _$PriceCurrencyImpl _value, $Res Function(_$PriceCurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriceCurrency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$PriceCurrencyImpl extends _PriceCurrency {
  const _$PriceCurrencyImpl() : super._();

  factory _$PriceCurrencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceCurrencyImplFromJson(json);

  @override
  String toString() {
    return 'PriceCurrency()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PriceCurrencyImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceCurrencyImplToJson(
      this,
    );
  }
}

abstract class _PriceCurrency extends PriceCurrency {
  const factory _PriceCurrency() = _$PriceCurrencyImpl;
  const _PriceCurrency._() : super._();

  factory _PriceCurrency.fromJson(Map<String, dynamic> json) =
      _$PriceCurrencyImpl.fromJson;
}
