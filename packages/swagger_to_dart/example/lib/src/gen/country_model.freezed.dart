// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountryModel {

/// alpha2
@JsonKey(name: alpha2Key) String? get alpha2;/// alpha3
@JsonKey(name: alpha3Key) String? get alpha3;/// numeric
@JsonKey(name: numericKey) String? get numeric;/// shortName
@JsonKey(name: shortNameKey) String? get shortName;
/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryModelCopyWith<CountryModel> get copyWith => _$CountryModelCopyWithImpl<CountryModel>(this as CountryModel, _$identity);

  /// Serializes this CountryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryModel&&(identical(other.alpha2, alpha2) || other.alpha2 == alpha2)&&(identical(other.alpha3, alpha3) || other.alpha3 == alpha3)&&(identical(other.numeric, numeric) || other.numeric == numeric)&&(identical(other.shortName, shortName) || other.shortName == shortName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,alpha2,alpha3,numeric,shortName);

@override
String toString() {
  return 'CountryModel(alpha2: $alpha2, alpha3: $alpha3, numeric: $numeric, shortName: $shortName)';
}


}

/// @nodoc
abstract mixin class $CountryModelCopyWith<$Res>  {
  factory $CountryModelCopyWith(CountryModel value, $Res Function(CountryModel) _then) = _$CountryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: alpha2Key) String? alpha2,@JsonKey(name: alpha3Key) String? alpha3,@JsonKey(name: numericKey) String? numeric,@JsonKey(name: shortNameKey) String? shortName
});




}
/// @nodoc
class _$CountryModelCopyWithImpl<$Res>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._self, this._then);

  final CountryModel _self;
  final $Res Function(CountryModel) _then;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? alpha2 = freezed,Object? alpha3 = freezed,Object? numeric = freezed,Object? shortName = freezed,}) {
  return _then(_self.copyWith(
alpha2: freezed == alpha2 ? _self.alpha2 : alpha2 // ignore: cast_nullable_to_non_nullable
as String?,alpha3: freezed == alpha3 ? _self.alpha3 : alpha3 // ignore: cast_nullable_to_non_nullable
as String?,numeric: freezed == numeric ? _self.numeric : numeric // ignore: cast_nullable_to_non_nullable
as String?,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CountryModel extends CountryModel {
  const _CountryModel({@JsonKey(name: alpha2Key) this.alpha2, @JsonKey(name: alpha3Key) this.alpha3, @JsonKey(name: numericKey) this.numeric, @JsonKey(name: shortNameKey) this.shortName}): super._();
  factory _CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);

/// alpha2
@override@JsonKey(name: alpha2Key) final  String? alpha2;
/// alpha3
@override@JsonKey(name: alpha3Key) final  String? alpha3;
/// numeric
@override@JsonKey(name: numericKey) final  String? numeric;
/// shortName
@override@JsonKey(name: shortNameKey) final  String? shortName;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryModelCopyWith<_CountryModel> get copyWith => __$CountryModelCopyWithImpl<_CountryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryModel&&(identical(other.alpha2, alpha2) || other.alpha2 == alpha2)&&(identical(other.alpha3, alpha3) || other.alpha3 == alpha3)&&(identical(other.numeric, numeric) || other.numeric == numeric)&&(identical(other.shortName, shortName) || other.shortName == shortName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,alpha2,alpha3,numeric,shortName);

@override
String toString() {
  return 'CountryModel(alpha2: $alpha2, alpha3: $alpha3, numeric: $numeric, shortName: $shortName)';
}


}

/// @nodoc
abstract mixin class _$CountryModelCopyWith<$Res> implements $CountryModelCopyWith<$Res> {
  factory _$CountryModelCopyWith(_CountryModel value, $Res Function(_CountryModel) _then) = __$CountryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: alpha2Key) String? alpha2,@JsonKey(name: alpha3Key) String? alpha3,@JsonKey(name: numericKey) String? numeric,@JsonKey(name: shortNameKey) String? shortName
});




}
/// @nodoc
class __$CountryModelCopyWithImpl<$Res>
    implements _$CountryModelCopyWith<$Res> {
  __$CountryModelCopyWithImpl(this._self, this._then);

  final _CountryModel _self;
  final $Res Function(_CountryModel) _then;

/// Create a copy of CountryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? alpha2 = freezed,Object? alpha3 = freezed,Object? numeric = freezed,Object? shortName = freezed,}) {
  return _then(_CountryModel(
alpha2: freezed == alpha2 ? _self.alpha2 : alpha2 // ignore: cast_nullable_to_non_nullable
as String?,alpha3: freezed == alpha3 ? _self.alpha3 : alpha3 // ignore: cast_nullable_to_non_nullable
as String?,numeric: freezed == numeric ? _self.numeric : numeric // ignore: cast_nullable_to_non_nullable
as String?,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
