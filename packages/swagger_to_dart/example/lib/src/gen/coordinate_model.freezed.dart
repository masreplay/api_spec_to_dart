// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CoordinateModel _$CoordinateModelFromJson(
  Map<String, dynamic> json
) {
    return CoordinateModelFallback.fromJson(
      json
    );
}

/// @nodoc
mixin _$CoordinateModel {

 Map<String, dynamic> get value;
/// Create a copy of CoordinateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoordinateModelCopyWith<CoordinateModel> get copyWith => _$CoordinateModelCopyWithImpl<CoordinateModel>(this as CoordinateModel, _$identity);

  /// Serializes this CoordinateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoordinateModel&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'CoordinateModel(value: $value)';
}


}

/// @nodoc
abstract mixin class $CoordinateModelCopyWith<$Res>  {
  factory $CoordinateModelCopyWith(CoordinateModel value, $Res Function(CoordinateModel) _then) = _$CoordinateModelCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> value
});




}
/// @nodoc
class _$CoordinateModelCopyWithImpl<$Res>
    implements $CoordinateModelCopyWith<$Res> {
  _$CoordinateModelCopyWithImpl(this._self, this._then);

  final CoordinateModel _self;
  final $Res Function(CoordinateModel) _then;

/// Create a copy of CoordinateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class CoordinateModelFallback extends CoordinateModel {
  const CoordinateModelFallback(final  Map<String, dynamic> value): _value = value,super._();
  factory CoordinateModelFallback.fromJson(Map<String, dynamic> json) => _$CoordinateModelFallbackFromJson(json);

 final  Map<String, dynamic> _value;
@override Map<String, dynamic> get value {
  if (_value is EqualUnmodifiableMapView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_value);
}


/// Create a copy of CoordinateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoordinateModelFallbackCopyWith<CoordinateModelFallback> get copyWith => _$CoordinateModelFallbackCopyWithImpl<CoordinateModelFallback>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoordinateModelFallbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoordinateModelFallback&&const DeepCollectionEquality().equals(other._value, _value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_value));

@override
String toString() {
  return 'CoordinateModel.fallback(value: $value)';
}


}

/// @nodoc
abstract mixin class $CoordinateModelFallbackCopyWith<$Res> implements $CoordinateModelCopyWith<$Res> {
  factory $CoordinateModelFallbackCopyWith(CoordinateModelFallback value, $Res Function(CoordinateModelFallback) _then) = _$CoordinateModelFallbackCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic> value
});




}
/// @nodoc
class _$CoordinateModelFallbackCopyWithImpl<$Res>
    implements $CoordinateModelFallbackCopyWith<$Res> {
  _$CoordinateModelFallbackCopyWithImpl(this._self, this._then);

  final CoordinateModelFallback _self;
  final $Res Function(CoordinateModelFallback) _then;

/// Create a copy of CoordinateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(CoordinateModelFallback(
null == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
