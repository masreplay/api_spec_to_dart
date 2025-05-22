// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrencyModel {

/// currency
@JsonKey(name: CurrencyModel.currencyKey) CurrencyEnum? get currency;/// iso4217
@JsonKey(name: CurrencyModel.iso4217Key) Iso4217Enum? get iso4217;
/// Create a copy of CurrencyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyModelCopyWith<CurrencyModel> get copyWith => _$CurrencyModelCopyWithImpl<CurrencyModel>(this as CurrencyModel, _$identity);

  /// Serializes this CurrencyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrencyModel&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.iso4217, iso4217) || other.iso4217 == iso4217));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currency,iso4217);

@override
String toString() {
  return 'CurrencyModel(currency: $currency, iso4217: $iso4217)';
}


}

/// @nodoc
abstract mixin class $CurrencyModelCopyWith<$Res>  {
  factory $CurrencyModelCopyWith(CurrencyModel value, $Res Function(CurrencyModel) _then) = _$CurrencyModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: CurrencyModel.currencyKey) CurrencyEnum? currency,@JsonKey(name: CurrencyModel.iso4217Key) Iso4217Enum? iso4217
});




}
/// @nodoc
class _$CurrencyModelCopyWithImpl<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  _$CurrencyModelCopyWithImpl(this._self, this._then);

  final CurrencyModel _self;
  final $Res Function(CurrencyModel) _then;

/// Create a copy of CurrencyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currency = freezed,Object? iso4217 = freezed,}) {
  return _then(_self.copyWith(
currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyEnum?,iso4217: freezed == iso4217 ? _self.iso4217 : iso4217 // ignore: cast_nullable_to_non_nullable
as Iso4217Enum?,
  ));
}

}


/// @nodoc

@jsonSerializable
class _CurrencyModel extends CurrencyModel {
  const _CurrencyModel({@JsonKey(name: CurrencyModel.currencyKey) required this.currency, @JsonKey(name: CurrencyModel.iso4217Key) required this.iso4217}): super._();
  factory _CurrencyModel.fromJson(Map<String, dynamic> json) => _$CurrencyModelFromJson(json);

/// currency
@override@JsonKey(name: CurrencyModel.currencyKey) final  CurrencyEnum? currency;
/// iso4217
@override@JsonKey(name: CurrencyModel.iso4217Key) final  Iso4217Enum? iso4217;

/// Create a copy of CurrencyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyModelCopyWith<_CurrencyModel> get copyWith => __$CurrencyModelCopyWithImpl<_CurrencyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrencyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrencyModel&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.iso4217, iso4217) || other.iso4217 == iso4217));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currency,iso4217);

@override
String toString() {
  return 'CurrencyModel(currency: $currency, iso4217: $iso4217)';
}


}

/// @nodoc
abstract mixin class _$CurrencyModelCopyWith<$Res> implements $CurrencyModelCopyWith<$Res> {
  factory _$CurrencyModelCopyWith(_CurrencyModel value, $Res Function(_CurrencyModel) _then) = __$CurrencyModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: CurrencyModel.currencyKey) CurrencyEnum? currency,@JsonKey(name: CurrencyModel.iso4217Key) Iso4217Enum? iso4217
});




}
/// @nodoc
class __$CurrencyModelCopyWithImpl<$Res>
    implements _$CurrencyModelCopyWith<$Res> {
  __$CurrencyModelCopyWithImpl(this._self, this._then);

  final _CurrencyModel _self;
  final $Res Function(_CurrencyModel) _then;

/// Create a copy of CurrencyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currency = freezed,Object? iso4217 = freezed,}) {
  return _then(_CurrencyModel(
currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyEnum?,iso4217: freezed == iso4217 ? _self.iso4217 : iso4217 // ignore: cast_nullable_to_non_nullable
as Iso4217Enum?,
  ));
}


}

// dart format on
