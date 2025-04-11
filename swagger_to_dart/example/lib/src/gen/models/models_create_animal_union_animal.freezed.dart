// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models_create_animal_union_animal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ModelsCreateAnimalUnionAnimal _$ModelsCreateAnimalUnionAnimalFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'fallback':
          return ModelsCreateAnimalUnionAnimalFallback.fromJson(
            json
          );
                case 'dog':
          return ModelsCreateAnimalUnionAnimalDog.fromJson(
            json
          );
                case 'cat':
          return ModelsCreateAnimalUnionAnimalCat.fromJson(
            json
          );
                case 'parrot':
          return ModelsCreateAnimalUnionAnimalParrot.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ModelsCreateAnimalUnionAnimal',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ModelsCreateAnimalUnionAnimal {



  /// Serializes this ModelsCreateAnimalUnionAnimal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModelsCreateAnimalUnionAnimal);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ModelsCreateAnimalUnionAnimal()';
}


}

/// @nodoc
class $ModelsCreateAnimalUnionAnimalCopyWith<$Res>  {
$ModelsCreateAnimalUnionAnimalCopyWith(ModelsCreateAnimalUnionAnimal _, $Res Function(ModelsCreateAnimalUnionAnimal) __);
}


/// @nodoc
@JsonSerializable()

class ModelsCreateAnimalUnionAnimalFallback implements ModelsCreateAnimalUnionAnimal {
  const ModelsCreateAnimalUnionAnimalFallback({final  String? $type}): $type = $type ?? 'fallback';
  factory ModelsCreateAnimalUnionAnimalFallback.fromJson(Map<String, dynamic> json) => _$ModelsCreateAnimalUnionAnimalFallbackFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ModelsCreateAnimalUnionAnimalFallbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModelsCreateAnimalUnionAnimalFallback);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ModelsCreateAnimalUnionAnimal.fallback()';
}


}




/// @nodoc
@JsonSerializable()

class ModelsCreateAnimalUnionAnimalDog implements ModelsCreateAnimalUnionAnimal {
  const ModelsCreateAnimalUnionAnimalDog(this.value, {final  String? $type}): $type = $type ?? 'dog';
  factory ModelsCreateAnimalUnionAnimalDog.fromJson(Map<String, dynamic> json) => _$ModelsCreateAnimalUnionAnimalDogFromJson(json);

 final  Dog value;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ModelsCreateAnimalUnionAnimal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModelsCreateAnimalUnionAnimalDogCopyWith<ModelsCreateAnimalUnionAnimalDog> get copyWith => _$ModelsCreateAnimalUnionAnimalDogCopyWithImpl<ModelsCreateAnimalUnionAnimalDog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModelsCreateAnimalUnionAnimalDogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModelsCreateAnimalUnionAnimalDog&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ModelsCreateAnimalUnionAnimal.dog(value: $value)';
}


}

/// @nodoc
abstract mixin class $ModelsCreateAnimalUnionAnimalDogCopyWith<$Res> implements $ModelsCreateAnimalUnionAnimalCopyWith<$Res> {
  factory $ModelsCreateAnimalUnionAnimalDogCopyWith(ModelsCreateAnimalUnionAnimalDog value, $Res Function(ModelsCreateAnimalUnionAnimalDog) _then) = _$ModelsCreateAnimalUnionAnimalDogCopyWithImpl;
@useResult
$Res call({
 Dog value
});


$DogCopyWith<$Res> get value;

}
/// @nodoc
class _$ModelsCreateAnimalUnionAnimalDogCopyWithImpl<$Res>
    implements $ModelsCreateAnimalUnionAnimalDogCopyWith<$Res> {
  _$ModelsCreateAnimalUnionAnimalDogCopyWithImpl(this._self, this._then);

  final ModelsCreateAnimalUnionAnimalDog _self;
  final $Res Function(ModelsCreateAnimalUnionAnimalDog) _then;

/// Create a copy of ModelsCreateAnimalUnionAnimal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ModelsCreateAnimalUnionAnimalDog(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Dog,
  ));
}

/// Create a copy of ModelsCreateAnimalUnionAnimal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DogCopyWith<$Res> get value {
  
  return $DogCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class ModelsCreateAnimalUnionAnimalCat implements ModelsCreateAnimalUnionAnimal {
  const ModelsCreateAnimalUnionAnimalCat(this.value, {final  String? $type}): $type = $type ?? 'cat';
  factory ModelsCreateAnimalUnionAnimalCat.fromJson(Map<String, dynamic> json) => _$ModelsCreateAnimalUnionAnimalCatFromJson(json);

 final  Cat value;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ModelsCreateAnimalUnionAnimal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModelsCreateAnimalUnionAnimalCatCopyWith<ModelsCreateAnimalUnionAnimalCat> get copyWith => _$ModelsCreateAnimalUnionAnimalCatCopyWithImpl<ModelsCreateAnimalUnionAnimalCat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModelsCreateAnimalUnionAnimalCatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModelsCreateAnimalUnionAnimalCat&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ModelsCreateAnimalUnionAnimal.cat(value: $value)';
}


}

/// @nodoc
abstract mixin class $ModelsCreateAnimalUnionAnimalCatCopyWith<$Res> implements $ModelsCreateAnimalUnionAnimalCopyWith<$Res> {
  factory $ModelsCreateAnimalUnionAnimalCatCopyWith(ModelsCreateAnimalUnionAnimalCat value, $Res Function(ModelsCreateAnimalUnionAnimalCat) _then) = _$ModelsCreateAnimalUnionAnimalCatCopyWithImpl;
@useResult
$Res call({
 Cat value
});


$CatCopyWith<$Res> get value;

}
/// @nodoc
class _$ModelsCreateAnimalUnionAnimalCatCopyWithImpl<$Res>
    implements $ModelsCreateAnimalUnionAnimalCatCopyWith<$Res> {
  _$ModelsCreateAnimalUnionAnimalCatCopyWithImpl(this._self, this._then);

  final ModelsCreateAnimalUnionAnimalCat _self;
  final $Res Function(ModelsCreateAnimalUnionAnimalCat) _then;

/// Create a copy of ModelsCreateAnimalUnionAnimal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ModelsCreateAnimalUnionAnimalCat(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Cat,
  ));
}

/// Create a copy of ModelsCreateAnimalUnionAnimal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatCopyWith<$Res> get value {
  
  return $CatCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class ModelsCreateAnimalUnionAnimalParrot implements ModelsCreateAnimalUnionAnimal {
  const ModelsCreateAnimalUnionAnimalParrot(this.value, {final  String? $type}): $type = $type ?? 'parrot';
  factory ModelsCreateAnimalUnionAnimalParrot.fromJson(Map<String, dynamic> json) => _$ModelsCreateAnimalUnionAnimalParrotFromJson(json);

 final  Parrot value;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ModelsCreateAnimalUnionAnimal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModelsCreateAnimalUnionAnimalParrotCopyWith<ModelsCreateAnimalUnionAnimalParrot> get copyWith => _$ModelsCreateAnimalUnionAnimalParrotCopyWithImpl<ModelsCreateAnimalUnionAnimalParrot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModelsCreateAnimalUnionAnimalParrotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModelsCreateAnimalUnionAnimalParrot&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'ModelsCreateAnimalUnionAnimal.parrot(value: $value)';
}


}

/// @nodoc
abstract mixin class $ModelsCreateAnimalUnionAnimalParrotCopyWith<$Res> implements $ModelsCreateAnimalUnionAnimalCopyWith<$Res> {
  factory $ModelsCreateAnimalUnionAnimalParrotCopyWith(ModelsCreateAnimalUnionAnimalParrot value, $Res Function(ModelsCreateAnimalUnionAnimalParrot) _then) = _$ModelsCreateAnimalUnionAnimalParrotCopyWithImpl;
@useResult
$Res call({
 Parrot value
});


$ParrotCopyWith<$Res> get value;

}
/// @nodoc
class _$ModelsCreateAnimalUnionAnimalParrotCopyWithImpl<$Res>
    implements $ModelsCreateAnimalUnionAnimalParrotCopyWith<$Res> {
  _$ModelsCreateAnimalUnionAnimalParrotCopyWithImpl(this._self, this._then);

  final ModelsCreateAnimalUnionAnimalParrot _self;
  final $Res Function(ModelsCreateAnimalUnionAnimalParrot) _then;

/// Create a copy of ModelsCreateAnimalUnionAnimal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(ModelsCreateAnimalUnionAnimalParrot(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Parrot,
  ));
}

/// Create a copy of ModelsCreateAnimalUnionAnimal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParrotCopyWith<$Res> get value {
  
  return $ParrotCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

// dart format on
