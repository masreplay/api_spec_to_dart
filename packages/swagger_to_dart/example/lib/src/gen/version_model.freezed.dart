// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VersionModel {

/// version
@JsonKey(name: VersionModel.versionKey) String get version;
/// Create a copy of VersionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VersionModelCopyWith<VersionModel> get copyWith => _$VersionModelCopyWithImpl<VersionModel>(this as VersionModel, _$identity);

  /// Serializes this VersionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VersionModel&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version);

@override
String toString() {
  return 'VersionModel(version: $version)';
}


}

/// @nodoc
abstract mixin class $VersionModelCopyWith<$Res>  {
  factory $VersionModelCopyWith(VersionModel value, $Res Function(VersionModel) _then) = _$VersionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: VersionModel.versionKey) String version
});




}
/// @nodoc
class _$VersionModelCopyWithImpl<$Res>
    implements $VersionModelCopyWith<$Res> {
  _$VersionModelCopyWithImpl(this._self, this._then);

  final VersionModel _self;
  final $Res Function(VersionModel) _then;

/// Create a copy of VersionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@generationJsonSerializable
class _VersionModel extends VersionModel {
  const _VersionModel({@JsonKey(name: VersionModel.versionKey) required this.version}): super._();
  factory _VersionModel.fromJson(Map<String, dynamic> json) => _$VersionModelFromJson(json);

/// version
@override@JsonKey(name: VersionModel.versionKey) final  String version;

/// Create a copy of VersionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VersionModelCopyWith<_VersionModel> get copyWith => __$VersionModelCopyWithImpl<_VersionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VersionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VersionModel&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version);

@override
String toString() {
  return 'VersionModel(version: $version)';
}


}

/// @nodoc
abstract mixin class _$VersionModelCopyWith<$Res> implements $VersionModelCopyWith<$Res> {
  factory _$VersionModelCopyWith(_VersionModel value, $Res Function(_VersionModel) _then) = __$VersionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: VersionModel.versionKey) String version
});




}
/// @nodoc
class __$VersionModelCopyWithImpl<$Res>
    implements _$VersionModelCopyWith<$Res> {
  __$VersionModelCopyWithImpl(this._self, this._then);

  final _VersionModel _self;
  final $Res Function(_VersionModel) _then;

/// Create a copy of VersionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,}) {
  return _then(_VersionModel(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
