// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Dog {

/// name
@JsonKey(name: Dog.nameKey) String get name;/// type
@JsonKey(name: Dog.typeKey) String get type;/// barkLoudness
@JsonKey(name: Dog.barkLoudnessKey) int get barkLoudness;
/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DogCopyWith<Dog> get copyWith => _$DogCopyWithImpl<Dog>(this as Dog, _$identity);

  /// Serializes this Dog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dog&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.barkLoudness, barkLoudness) || other.barkLoudness == barkLoudness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,barkLoudness);

@override
String toString() {
  return 'Dog(name: $name, type: $type, barkLoudness: $barkLoudness)';
}


}

/// @nodoc
abstract mixin class $DogCopyWith<$Res>  {
  factory $DogCopyWith(Dog value, $Res Function(Dog) _then) = _$DogCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: Dog.nameKey) String name,@JsonKey(name: Dog.typeKey) String type,@JsonKey(name: Dog.barkLoudnessKey) int barkLoudness
});




}
/// @nodoc
class _$DogCopyWithImpl<$Res>
    implements $DogCopyWith<$Res> {
  _$DogCopyWithImpl(this._self, this._then);

  final Dog _self;
  final $Res Function(Dog) _then;

/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,Object? barkLoudness = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,barkLoudness: null == barkLoudness ? _self.barkLoudness : barkLoudness // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@generationJsonSerializable
class _Dog extends Dog {
  const _Dog({@JsonKey(name: Dog.nameKey) required this.name, @JsonKey(name: Dog.typeKey) this.type = "dog", @JsonKey(name: Dog.barkLoudnessKey) required this.barkLoudness}): super._();
  factory _Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);

/// name
@override@JsonKey(name: Dog.nameKey) final  String name;
/// type
@override@JsonKey(name: Dog.typeKey) final  String type;
/// barkLoudness
@override@JsonKey(name: Dog.barkLoudnessKey) final  int barkLoudness;

/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DogCopyWith<_Dog> get copyWith => __$DogCopyWithImpl<_Dog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dog&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.barkLoudness, barkLoudness) || other.barkLoudness == barkLoudness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,barkLoudness);

@override
String toString() {
  return 'Dog(name: $name, type: $type, barkLoudness: $barkLoudness)';
}


}

/// @nodoc
abstract mixin class _$DogCopyWith<$Res> implements $DogCopyWith<$Res> {
  factory _$DogCopyWith(_Dog value, $Res Function(_Dog) _then) = __$DogCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: Dog.nameKey) String name,@JsonKey(name: Dog.typeKey) String type,@JsonKey(name: Dog.barkLoudnessKey) int barkLoudness
});




}
/// @nodoc
class __$DogCopyWithImpl<$Res>
    implements _$DogCopyWith<$Res> {
  __$DogCopyWithImpl(this._self, this._then);

  final _Dog _self;
  final $Res Function(_Dog) _then;

/// Create a copy of Dog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? barkLoudness = null,}) {
  return _then(_Dog(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,barkLoudness: null == barkLoudness ? _self.barkLoudness : barkLoudness // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
