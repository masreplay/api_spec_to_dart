// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_dog_parrot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CatDogParrot _$CatDogParrotFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'dog':
          return CatDogParrotDog.fromJson(
            json
          );
                case 'cat':
          return CatDogParrotCat.fromJson(
            json
          );
                case 'parrot':
          return CatDogParrotParrot.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'CatDogParrot',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$CatDogParrot {

/// name
@JsonKey(name: CatDogParrot.nameKey) String get name;/// type
@JsonKey(name: CatDogParrot.typeKey) String get type;
/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatDogParrotCopyWith<CatDogParrot> get copyWith => _$CatDogParrotCopyWithImpl<CatDogParrot>(this as CatDogParrot, _$identity);

  /// Serializes this CatDogParrot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatDogParrot&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type);

@override
String toString() {
  return 'CatDogParrot(name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class $CatDogParrotCopyWith<$Res>  {
  factory $CatDogParrotCopyWith(CatDogParrot value, $Res Function(CatDogParrot) _then) = _$CatDogParrotCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: CatDogParrot.nameKey) String name,@JsonKey(name: CatDogParrot.typeKey) String type
});




}
/// @nodoc
class _$CatDogParrotCopyWithImpl<$Res>
    implements $CatDogParrotCopyWith<$Res> {
  _$CatDogParrotCopyWithImpl(this._self, this._then);

  final CatDogParrot _self;
  final $Res Function(CatDogParrot) _then;

/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@generationJsonSerializable
class CatDogParrotDog extends CatDogParrot {
  const CatDogParrotDog({@JsonKey(name: CatDogParrot.nameKey) required this.name, @JsonKey(name: CatDogParrot.typeKey) this.type = "dog", @JsonKey(name: CatDogParrot.barkLoudnessKey) required this.barkLoudness, final  String? $type}): $type = $type ?? 'dog',super._();
  factory CatDogParrotDog.fromJson(Map<String, dynamic> json) => _$CatDogParrotDogFromJson(json);

/// name
@override@JsonKey(name: CatDogParrot.nameKey) final  String name;
/// type
@override@JsonKey(name: CatDogParrot.typeKey) final  String type;
/// barkLoudness
@JsonKey(name: CatDogParrot.barkLoudnessKey) final  int barkLoudness;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatDogParrotDogCopyWith<CatDogParrotDog> get copyWith => _$CatDogParrotDogCopyWithImpl<CatDogParrotDog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatDogParrotDogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatDogParrotDog&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.barkLoudness, barkLoudness) || other.barkLoudness == barkLoudness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,barkLoudness);

@override
String toString() {
  return 'CatDogParrot.dog(name: $name, type: $type, barkLoudness: $barkLoudness)';
}


}

/// @nodoc
abstract mixin class $CatDogParrotDogCopyWith<$Res> implements $CatDogParrotCopyWith<$Res> {
  factory $CatDogParrotDogCopyWith(CatDogParrotDog value, $Res Function(CatDogParrotDog) _then) = _$CatDogParrotDogCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: CatDogParrot.nameKey) String name,@JsonKey(name: CatDogParrot.typeKey) String type,@JsonKey(name: CatDogParrot.barkLoudnessKey) int barkLoudness
});




}
/// @nodoc
class _$CatDogParrotDogCopyWithImpl<$Res>
    implements $CatDogParrotDogCopyWith<$Res> {
  _$CatDogParrotDogCopyWithImpl(this._self, this._then);

  final CatDogParrotDog _self;
  final $Res Function(CatDogParrotDog) _then;

/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? barkLoudness = null,}) {
  return _then(CatDogParrotDog(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,barkLoudness: null == barkLoudness ? _self.barkLoudness : barkLoudness // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc

@generationJsonSerializable
class CatDogParrotCat extends CatDogParrot {
  const CatDogParrotCat({@JsonKey(name: CatDogParrot.nameKey) required this.name, @JsonKey(name: CatDogParrot.typeKey) this.type = "cat", @JsonKey(name: CatDogParrot.meowCutenessKey) required this.meowCuteness, final  String? $type}): $type = $type ?? 'cat',super._();
  factory CatDogParrotCat.fromJson(Map<String, dynamic> json) => _$CatDogParrotCatFromJson(json);

/// name
@override@JsonKey(name: CatDogParrot.nameKey) final  String name;
/// type
@override@JsonKey(name: CatDogParrot.typeKey) final  String type;
/// meowCuteness
@JsonKey(name: CatDogParrot.meowCutenessKey) final  int meowCuteness;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatDogParrotCatCopyWith<CatDogParrotCat> get copyWith => _$CatDogParrotCatCopyWithImpl<CatDogParrotCat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatDogParrotCatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatDogParrotCat&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.meowCuteness, meowCuteness) || other.meowCuteness == meowCuteness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,meowCuteness);

@override
String toString() {
  return 'CatDogParrot.cat(name: $name, type: $type, meowCuteness: $meowCuteness)';
}


}

/// @nodoc
abstract mixin class $CatDogParrotCatCopyWith<$Res> implements $CatDogParrotCopyWith<$Res> {
  factory $CatDogParrotCatCopyWith(CatDogParrotCat value, $Res Function(CatDogParrotCat) _then) = _$CatDogParrotCatCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: CatDogParrot.nameKey) String name,@JsonKey(name: CatDogParrot.typeKey) String type,@JsonKey(name: CatDogParrot.meowCutenessKey) int meowCuteness
});




}
/// @nodoc
class _$CatDogParrotCatCopyWithImpl<$Res>
    implements $CatDogParrotCatCopyWith<$Res> {
  _$CatDogParrotCatCopyWithImpl(this._self, this._then);

  final CatDogParrotCat _self;
  final $Res Function(CatDogParrotCat) _then;

/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? meowCuteness = null,}) {
  return _then(CatDogParrotCat(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,meowCuteness: null == meowCuteness ? _self.meowCuteness : meowCuteness // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc

@generationJsonSerializable
class CatDogParrotParrot extends CatDogParrot {
  const CatDogParrotParrot({@JsonKey(name: CatDogParrot.nameKey) required this.name, @JsonKey(name: CatDogParrot.typeKey) this.type = "parrot", @JsonKey(name: CatDogParrot.phrasesKey) required final  List<String> phrases, final  String? $type}): _phrases = phrases,$type = $type ?? 'parrot',super._();
  factory CatDogParrotParrot.fromJson(Map<String, dynamic> json) => _$CatDogParrotParrotFromJson(json);

/// name
@override@JsonKey(name: CatDogParrot.nameKey) final  String name;
/// type
@override@JsonKey(name: CatDogParrot.typeKey) final  String type;
/// phrases
 final  List<String> _phrases;
/// phrases
@JsonKey(name: CatDogParrot.phrasesKey) List<String> get phrases {
  if (_phrases is EqualUnmodifiableListView) return _phrases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_phrases);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatDogParrotParrotCopyWith<CatDogParrotParrot> get copyWith => _$CatDogParrotParrotCopyWithImpl<CatDogParrotParrot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatDogParrotParrotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatDogParrotParrot&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._phrases, _phrases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,const DeepCollectionEquality().hash(_phrases));

@override
String toString() {
  return 'CatDogParrot.parrot(name: $name, type: $type, phrases: $phrases)';
}


}

/// @nodoc
abstract mixin class $CatDogParrotParrotCopyWith<$Res> implements $CatDogParrotCopyWith<$Res> {
  factory $CatDogParrotParrotCopyWith(CatDogParrotParrot value, $Res Function(CatDogParrotParrot) _then) = _$CatDogParrotParrotCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: CatDogParrot.nameKey) String name,@JsonKey(name: CatDogParrot.typeKey) String type,@JsonKey(name: CatDogParrot.phrasesKey) List<String> phrases
});




}
/// @nodoc
class _$CatDogParrotParrotCopyWithImpl<$Res>
    implements $CatDogParrotParrotCopyWith<$Res> {
  _$CatDogParrotParrotCopyWithImpl(this._self, this._then);

  final CatDogParrotParrot _self;
  final $Res Function(CatDogParrotParrot) _then;

/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? phrases = null,}) {
  return _then(CatDogParrotParrot(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,phrases: null == phrases ? _self._phrases : phrases // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
