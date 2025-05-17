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
          return Dog.fromJson(
            json
          );
                case 'cat':
          return Cat.fromJson(
            json
          );
                case 'parrot':
          return Parrot.fromJson(
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
@JsonKey(name: CreateAnimalResponse.nameKey) String get name;/// type
@JsonKey(name: CreateAnimalResponse.typeKey) String get type;
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
@JsonKey(name: CreateAnimalResponse.nameKey) String name,@JsonKey(name: CreateAnimalResponse.typeKey) String type
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
class Dog extends CatDogParrot {
  const Dog({@JsonKey(name: CreateAnimalResponse.nameKey) required this.name, @JsonKey(name: CreateAnimalResponse.typeKey) this.type = "dog", @JsonKey(name: CreateAnimalResponse.barkLoudnessKey) required this.barkLoudness, final  String? $type}): $type = $type ?? 'dog',super._();
  factory Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);

/// name
@override@JsonKey(name: CreateAnimalResponse.nameKey) final  String name;
/// type
@override@JsonKey(name: CreateAnimalResponse.typeKey) final  String type;
/// barkLoudness
@JsonKey(name: CreateAnimalResponse.barkLoudnessKey) final  int barkLoudness;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DogCopyWith<Dog> get copyWith => _$DogCopyWithImpl<Dog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dog&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.barkLoudness, barkLoudness) || other.barkLoudness == barkLoudness));
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
abstract mixin class $DogCopyWith<$Res> implements $CatDogParrotCopyWith<$Res> {
  factory $DogCopyWith(Dog value, $Res Function(Dog) _then) = _$DogCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: CreateAnimalResponse.nameKey) String name,@JsonKey(name: CreateAnimalResponse.typeKey) String type,@JsonKey(name: CreateAnimalResponse.barkLoudnessKey) int barkLoudness
});




}
/// @nodoc
class _$DogCopyWithImpl<$Res>
    implements $DogCopyWith<$Res> {
  _$DogCopyWithImpl(this._self, this._then);

  final Dog _self;
  final $Res Function(Dog) _then;

/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? barkLoudness = null,}) {
  return _then(Dog(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,barkLoudness: null == barkLoudness ? _self.barkLoudness : barkLoudness // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc

@generationJsonSerializable
class Cat extends CatDogParrot {
  const Cat({@JsonKey(name: CreateAnimalResponse.nameKey) required this.name, @JsonKey(name: CreateAnimalResponse.typeKey) this.type = "cat", @JsonKey(name: CreateAnimalResponse.meowCutenessKey) required this.meowCuteness, final  String? $type}): $type = $type ?? 'cat',super._();
  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

/// name
@override@JsonKey(name: CreateAnimalResponse.nameKey) final  String name;
/// type
@override@JsonKey(name: CreateAnimalResponse.typeKey) final  String type;
/// meowCuteness
@JsonKey(name: CreateAnimalResponse.meowCutenessKey) final  int meowCuteness;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatCopyWith<Cat> get copyWith => _$CatCopyWithImpl<Cat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cat&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.meowCuteness, meowCuteness) || other.meowCuteness == meowCuteness));
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
abstract mixin class $CatCopyWith<$Res> implements $CatDogParrotCopyWith<$Res> {
  factory $CatCopyWith(Cat value, $Res Function(Cat) _then) = _$CatCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: CreateAnimalResponse.nameKey) String name,@JsonKey(name: CreateAnimalResponse.typeKey) String type,@JsonKey(name: CreateAnimalResponse.meowCutenessKey) int meowCuteness
});




}
/// @nodoc
class _$CatCopyWithImpl<$Res>
    implements $CatCopyWith<$Res> {
  _$CatCopyWithImpl(this._self, this._then);

  final Cat _self;
  final $Res Function(Cat) _then;

/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? meowCuteness = null,}) {
  return _then(Cat(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,meowCuteness: null == meowCuteness ? _self.meowCuteness : meowCuteness // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc

@generationJsonSerializable
class Parrot extends CatDogParrot {
  const Parrot({@JsonKey(name: CreateAnimalResponse.nameKey) required this.name, @JsonKey(name: CreateAnimalResponse.typeKey) this.type = "parrot", @JsonKey(name: CreateAnimalResponse.phrasesKey) required final  List<String> phrases, final  String? $type}): _phrases = phrases,$type = $type ?? 'parrot',super._();
  factory Parrot.fromJson(Map<String, dynamic> json) => _$ParrotFromJson(json);

/// name
@override@JsonKey(name: CreateAnimalResponse.nameKey) final  String name;
/// type
@override@JsonKey(name: CreateAnimalResponse.typeKey) final  String type;
/// phrases
 final  List<String> _phrases;
/// phrases
@JsonKey(name: CreateAnimalResponse.phrasesKey) List<String> get phrases {
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
$ParrotCopyWith<Parrot> get copyWith => _$ParrotCopyWithImpl<Parrot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParrotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Parrot&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._phrases, _phrases));
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
abstract mixin class $ParrotCopyWith<$Res> implements $CatDogParrotCopyWith<$Res> {
  factory $ParrotCopyWith(Parrot value, $Res Function(Parrot) _then) = _$ParrotCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: CreateAnimalResponse.nameKey) String name,@JsonKey(name: CreateAnimalResponse.typeKey) String type,@JsonKey(name: CreateAnimalResponse.phrasesKey) List<String> phrases
});




}
/// @nodoc
class _$ParrotCopyWithImpl<$Res>
    implements $ParrotCopyWith<$Res> {
  _$ParrotCopyWithImpl(this._self, this._then);

  final Parrot _self;
  final $Res Function(Parrot) _then;

/// Create a copy of CatDogParrot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? phrases = null,}) {
  return _then(Parrot(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,phrases: null == phrases ? _self._phrases : phrases // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
