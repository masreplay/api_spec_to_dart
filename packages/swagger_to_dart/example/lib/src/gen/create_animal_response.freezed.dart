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
CreateAnimalResponse _$CreateAnimalResponseFromJson(
  Map<String, dynamic> json
) {
    return CreateAnimalResponseFallback.fromJson(
      json
    );
}

/// @nodoc
mixin _$CreateAnimalResponse {

 Map<String, dynamic> get value;
/// Create a copy of CreateAnimalResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAnimalResponseCopyWith<CreateAnimalResponse> get copyWith => _$CreateAnimalResponseCopyWithImpl<CreateAnimalResponse>(this as CreateAnimalResponse, _$identity);

  /// Serializes this CreateAnimalResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAnimalResponse&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'CreateAnimalResponse(value: $value)';
}


}

/// @nodoc
abstract mixin class $CreateAnimalResponseCopyWith<$Res>  {
  factory $CreateAnimalResponseCopyWith(CreateAnimalResponse value, $Res Function(CreateAnimalResponse) _then) = _$CreateAnimalResponseCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> value
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
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class CreateAnimalResponseFallback extends CreateAnimalResponse {
  const CreateAnimalResponseFallback(final  Map<String, dynamic> value): _value = value,super._();
  factory CreateAnimalResponseFallback.fromJson(Map<String, dynamic> json) => _$CreateAnimalResponseFallbackFromJson(json);

 final  Map<String, dynamic> _value;
@override Map<String, dynamic> get value {
  if (_value is EqualUnmodifiableMapView) return _value;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_value);
}


/// Create a copy of CreateAnimalResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAnimalResponseFallbackCopyWith<CreateAnimalResponseFallback> get copyWith => _$CreateAnimalResponseFallbackCopyWithImpl<CreateAnimalResponseFallback>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateAnimalResponseFallbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAnimalResponseFallback&&const DeepCollectionEquality().equals(other._value, _value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_value));

@override
String toString() {
  return 'CreateAnimalResponse.fallback(value: $value)';
}


}

/// @nodoc
abstract mixin class $CreateAnimalResponseFallbackCopyWith<$Res> implements $CreateAnimalResponseCopyWith<$Res> {
  factory $CreateAnimalResponseFallbackCopyWith(CreateAnimalResponseFallback value, $Res Function(CreateAnimalResponseFallback) _then) = _$CreateAnimalResponseFallbackCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic> value
});




}
/// @nodoc
class _$CreateAnimalResponseFallbackCopyWithImpl<$Res>
    implements $CreateAnimalResponseFallbackCopyWith<$Res> {
  _$CreateAnimalResponseFallbackCopyWithImpl(this._self, this._then);

  final CreateAnimalResponseFallback _self;
  final $Res Function(CreateAnimalResponseFallback) _then;

/// Create a copy of CreateAnimalResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(CreateAnimalResponseFallback(
null == value ? _self._value : value // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
