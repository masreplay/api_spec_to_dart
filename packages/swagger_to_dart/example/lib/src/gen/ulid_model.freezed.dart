// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ulid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
UlidModel _$UlidModelFromJson(
  Map<String, dynamic> json
) {
    return UlidModelFallback.fromJson(
      json
    );
}

/// @nodoc
mixin _$UlidModel {

 Map<String, dynamic> get value;
/// Create a copy of UlidModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UlidModelCopyWith<UlidModel> get copyWith => _$UlidModelCopyWithImpl<UlidModel>(this as UlidModel, _$identity);

  /// Serializes this UlidModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UlidModel&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'UlidModel(value: $value)';
}


}

/// @nodoc
abstract mixin class $UlidModelCopyWith<$Res>  {
  factory $UlidModelCopyWith(UlidModel value, $Res Function(UlidModel) _then) = _$UlidModelCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> value
});




}
/// @nodoc
class _$UlidModelCopyWithImpl<$Res>
    implements $UlidModelCopyWith<$Res> {
  _$UlidModelCopyWithImpl(this._self, this._then);

  final UlidModel _self;
  final $Res Function(UlidModel) _then;

/// Create a copy of UlidModel
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

class UlidModelFallback extends UlidModel {
  const UlidModelFallback(final  Map<String, dynamic> value): _value = value,super._();
  factory UlidModelFallback.fromJson(Map<String, dynamic> json) => _$UlidModelFallbackFromJson(json);

 final  Map<String, dynamic> _value;
@override Map<String, dynamic> get value {
  if (_value is EqualUnmodifiableMapView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_value);
}


/// Create a copy of UlidModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UlidModelFallbackCopyWith<UlidModelFallback> get copyWith => _$UlidModelFallbackCopyWithImpl<UlidModelFallback>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UlidModelFallbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UlidModelFallback&&const DeepCollectionEquality().equals(other._value, _value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_value));

@override
String toString() {
  return 'UlidModel.fallback(value: $value)';
}


}

/// @nodoc
abstract mixin class $UlidModelFallbackCopyWith<$Res> implements $UlidModelCopyWith<$Res> {
  factory $UlidModelFallbackCopyWith(UlidModelFallback value, $Res Function(UlidModelFallback) _then) = _$UlidModelFallbackCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic> value
});




}
/// @nodoc
class _$UlidModelFallbackCopyWithImpl<$Res>
    implements $UlidModelFallbackCopyWith<$Res> {
  _$UlidModelFallbackCopyWithImpl(this._self, this._then);

  final UlidModelFallback _self;
  final $Res Function(UlidModelFallback) _then;

/// Create a copy of UlidModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(UlidModelFallback(
null == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
