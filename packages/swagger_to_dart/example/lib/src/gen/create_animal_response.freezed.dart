// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_animal_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateAnimalResponse {

/// animal
@JsonKey(name: CreateAnimalResponse.animalKey) DogOrCatOrParrot get animal;/// message
@JsonKey(name: CreateAnimalResponse.messageKey) String get message;
/// Create a copy of CreateAnimalResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAnimalResponseCopyWith<CreateAnimalResponse> get copyWith => _$CreateAnimalResponseCopyWithImpl<CreateAnimalResponse>(this as CreateAnimalResponse, _$identity);

  /// Serializes this CreateAnimalResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAnimalResponse&&const DeepCollectionEquality().equals(other.animal, animal)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(animal),message);

@override
String toString() {
  return 'CreateAnimalResponse(animal: $animal, message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateAnimalResponseCopyWith<$Res>  {
  factory $CreateAnimalResponseCopyWith(CreateAnimalResponse value, $Res Function(CreateAnimalResponse) _then) = _$CreateAnimalResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: CreateAnimalResponse.animalKey) DogOrCatOrParrot animal,@JsonKey(name: CreateAnimalResponse.messageKey) String message
});




}
/// @nodoc
class _$CreateAnimalResponseCopyWithImpl<$Res>
    implements $CreateAnimalResponseCopyWith<$Res> {
  _$CreateAnimalResponseCopyWithImpl(this._self, this._then);

  final CreateAnimalResponse _self;
  final $Res Function(CreateAnimalResponse) _then;

/// Create a copy of CreateAnimalResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? animal = freezed,Object? message = null,}) {
  return _then(_self.copyWith(
animal: freezed == animal ? _self.animal : animal // ignore: cast_nullable_to_non_nullable
as DogOrCatOrParrot,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@generationJsonSerializable
class _CreateAnimalResponse extends CreateAnimalResponse {
  const _CreateAnimalResponse({@JsonKey(name: CreateAnimalResponse.animalKey) required this.animal, @JsonKey(name: CreateAnimalResponse.messageKey) required this.message}): super._();
  factory _CreateAnimalResponse.fromJson(Map<String, dynamic> json) => _$CreateAnimalResponseFromJson(json);

/// animal
@override@JsonKey(name: CreateAnimalResponse.animalKey) final  DogOrCatOrParrot animal;
/// message
@override@JsonKey(name: CreateAnimalResponse.messageKey) final  String message;

/// Create a copy of CreateAnimalResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAnimalResponseCopyWith<_CreateAnimalResponse> get copyWith => __$CreateAnimalResponseCopyWithImpl<_CreateAnimalResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateAnimalResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAnimalResponse&&const DeepCollectionEquality().equals(other.animal, animal)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(animal),message);

@override
String toString() {
  return 'CreateAnimalResponse(animal: $animal, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CreateAnimalResponseCopyWith<$Res> implements $CreateAnimalResponseCopyWith<$Res> {
  factory _$CreateAnimalResponseCopyWith(_CreateAnimalResponse value, $Res Function(_CreateAnimalResponse) _then) = __$CreateAnimalResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: CreateAnimalResponse.animalKey) DogOrCatOrParrot animal,@JsonKey(name: CreateAnimalResponse.messageKey) String message
});




}
/// @nodoc
class __$CreateAnimalResponseCopyWithImpl<$Res>
    implements _$CreateAnimalResponseCopyWith<$Res> {
  __$CreateAnimalResponseCopyWithImpl(this._self, this._then);

  final _CreateAnimalResponse _self;
  final $Res Function(_CreateAnimalResponse) _then;

/// Create a copy of CreateAnimalResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? animal = freezed,Object? message = null,}) {
  return _then(_CreateAnimalResponse(
animal: freezed == animal ? _self.animal : animal // ignore: cast_nullable_to_non_nullable
as DogOrCatOrParrot,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
