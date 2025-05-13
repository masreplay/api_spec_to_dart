// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ColorModel {

/// color
@JsonKey(name: ColorModel.colorKey) String get color;
/// Create a copy of ColorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColorModelCopyWith<ColorModel> get copyWith => _$ColorModelCopyWithImpl<ColorModel>(this as ColorModel, _$identity);

  /// Serializes this ColorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColorModel&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color);

@override
String toString() {
  return 'ColorModel(color: $color)';
}


}

/// @nodoc
abstract mixin class $ColorModelCopyWith<$Res>  {
  factory $ColorModelCopyWith(ColorModel value, $Res Function(ColorModel) _then) = _$ColorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: ColorModel.colorKey) String color
});




}
/// @nodoc
class _$ColorModelCopyWithImpl<$Res>
    implements $ColorModelCopyWith<$Res> {
  _$ColorModelCopyWithImpl(this._self, this._then);

  final ColorModel _self;
  final $Res Function(ColorModel) _then;

/// Create a copy of ColorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? color = null,}) {
  return _then(_self.copyWith(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ColorModel extends ColorModel {
  const _ColorModel({@JsonKey(name: ColorModel.colorKey) required this.color}): super._();
  factory _ColorModel.fromJson(Map<String, dynamic> json) => _$ColorModelFromJson(json);

/// color
@override@JsonKey(name: ColorModel.colorKey) final  String color;

/// Create a copy of ColorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColorModelCopyWith<_ColorModel> get copyWith => __$ColorModelCopyWithImpl<_ColorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ColorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ColorModel&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,color);

@override
String toString() {
  return 'ColorModel(color: $color)';
}


}

/// @nodoc
abstract mixin class _$ColorModelCopyWith<$Res> implements $ColorModelCopyWith<$Res> {
  factory _$ColorModelCopyWith(_ColorModel value, $Res Function(_ColorModel) _then) = __$ColorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: ColorModel.colorKey) String color
});




}
/// @nodoc
class __$ColorModelCopyWithImpl<$Res>
    implements _$ColorModelCopyWith<$Res> {
  __$ColorModelCopyWithImpl(this._self, this._then);

  final _ColorModel _self;
  final $Res Function(_ColorModel) _then;

/// Create a copy of ColorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? color = null,}) {
  return _then(_ColorModel(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
