// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cat {

/// name
@JsonKey(name: Cat.nameKey) String get name;/// type
@JsonKey(name: Cat.typeKey) String get type;/// meowCuteness
@JsonKey(name: Cat.meowCutenessKey) int get meowCuteness;
/// Create a copy of Cat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatCopyWith<Cat> get copyWith => _$CatCopyWithImpl<Cat>(this as Cat, _$identity);

  /// Serializes this Cat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cat&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.meowCuteness, meowCuteness) || other.meowCuteness == meowCuteness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,meowCuteness);

@override
String toString() {
  return 'Cat(name: $name, type: $type, meowCuteness: $meowCuteness)';
}


}

/// @nodoc
abstract mixin class $CatCopyWith<$Res>  {
  factory $CatCopyWith(Cat value, $Res Function(Cat) _then) = _$CatCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: Cat.nameKey) String name,@JsonKey(name: Cat.typeKey) String type,@JsonKey(name: Cat.meowCutenessKey) int meowCuteness
});




}
/// @nodoc
class _$CatCopyWithImpl<$Res>
    implements $CatCopyWith<$Res> {
  _$CatCopyWithImpl(this._self, this._then);

  final Cat _self;
  final $Res Function(Cat) _then;

/// Create a copy of Cat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,Object? meowCuteness = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,meowCuteness: null == meowCuteness ? _self.meowCuteness : meowCuteness // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@jsonSerializable
class _Cat extends Cat {
  const _Cat({@JsonKey(name: Cat.nameKey) required this.name, @JsonKey(name: Cat.typeKey) this.type = 'cat', @JsonKey(name: Cat.meowCutenessKey) required this.meowCuteness}): super._();
  factory _Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

/// name
@override@JsonKey(name: Cat.nameKey) final  String name;
/// type
@override@JsonKey(name: Cat.typeKey) final  String type;
/// meowCuteness
@override@JsonKey(name: Cat.meowCutenessKey) final  int meowCuteness;

/// Create a copy of Cat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatCopyWith<_Cat> get copyWith => __$CatCopyWithImpl<_Cat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cat&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.meowCuteness, meowCuteness) || other.meowCuteness == meowCuteness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,meowCuteness);

@override
String toString() {
  return 'Cat(name: $name, type: $type, meowCuteness: $meowCuteness)';
}


}

/// @nodoc
abstract mixin class _$CatCopyWith<$Res> implements $CatCopyWith<$Res> {
  factory _$CatCopyWith(_Cat value, $Res Function(_Cat) _then) = __$CatCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: Cat.nameKey) String name,@JsonKey(name: Cat.typeKey) String type,@JsonKey(name: Cat.meowCutenessKey) int meowCuteness
});




}
/// @nodoc
class __$CatCopyWithImpl<$Res>
    implements _$CatCopyWith<$Res> {
  __$CatCopyWithImpl(this._self, this._then);

  final _Cat _self;
  final $Res Function(_Cat) _then;

/// Create a copy of Cat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? meowCuteness = null,}) {
  return _then(_Cat(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,meowCuteness: null == meowCuteness ? _self.meowCuteness : meowCuteness // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
