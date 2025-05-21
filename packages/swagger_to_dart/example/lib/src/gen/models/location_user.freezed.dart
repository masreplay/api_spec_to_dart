// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
LocationUser _$LocationUserFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'user':
          return LocationUserUser.fromJson(
            json
          );
                case 'location':
          return LocationUserLocation.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'LocationUser',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$LocationUser {

 Object get value;

  /// Serializes this LocationUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationUser&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'LocationUser(value: $value)';
}


}

/// @nodoc
class $LocationUserCopyWith<$Res>  {
$LocationUserCopyWith(LocationUser _, $Res Function(LocationUser) __);
}


/// @nodoc

@jsonSerializable
class LocationUserUser extends LocationUser {
  const LocationUserUser(this.value, {final  String? $type}): $type = $type ?? 'user',super._();
  factory LocationUserUser.fromJson(Map<String, dynamic> json) => _$LocationUserUserFromJson(json);

@override final  User value;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of LocationUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationUserUserCopyWith<LocationUserUser> get copyWith => _$LocationUserUserCopyWithImpl<LocationUserUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationUserUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationUserUser&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'LocationUser.user(value: $value)';
}


}

/// @nodoc
abstract mixin class $LocationUserUserCopyWith<$Res> implements $LocationUserCopyWith<$Res> {
  factory $LocationUserUserCopyWith(LocationUserUser value, $Res Function(LocationUserUser) _then) = _$LocationUserUserCopyWithImpl;
@useResult
$Res call({
 User value
});


$UserCopyWith<$Res> get value;

}
/// @nodoc
class _$LocationUserUserCopyWithImpl<$Res>
    implements $LocationUserUserCopyWith<$Res> {
  _$LocationUserUserCopyWithImpl(this._self, this._then);

  final LocationUserUser _self;
  final $Res Function(LocationUserUser) _then;

/// Create a copy of LocationUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(LocationUserUser(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of LocationUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get value {
  
  return $UserCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

/// @nodoc

@jsonSerializable
class LocationUserLocation extends LocationUser {
  const LocationUserLocation(this.value, {final  String? $type}): $type = $type ?? 'location',super._();
  factory LocationUserLocation.fromJson(Map<String, dynamic> json) => _$LocationUserLocationFromJson(json);

@override final  Location value;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of LocationUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationUserLocationCopyWith<LocationUserLocation> get copyWith => _$LocationUserLocationCopyWithImpl<LocationUserLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationUserLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationUserLocation&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'LocationUser.location(value: $value)';
}


}

/// @nodoc
abstract mixin class $LocationUserLocationCopyWith<$Res> implements $LocationUserCopyWith<$Res> {
  factory $LocationUserLocationCopyWith(LocationUserLocation value, $Res Function(LocationUserLocation) _then) = _$LocationUserLocationCopyWithImpl;
@useResult
$Res call({
 Location value
});


$LocationCopyWith<$Res> get value;

}
/// @nodoc
class _$LocationUserLocationCopyWithImpl<$Res>
    implements $LocationUserLocationCopyWith<$Res> {
  _$LocationUserLocationCopyWithImpl(this._self, this._then);

  final LocationUserLocation _self;
  final $Res Function(LocationUserLocation) _then;

/// Create a copy of LocationUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(LocationUserLocation(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as Location,
  ));
}

/// Create a copy of LocationUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res> get value {
  
  return $LocationCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

// dart format on
