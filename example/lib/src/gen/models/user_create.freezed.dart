// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
UserCreate _$UserCreateFromJson(
  Map<String, dynamic> json
) {
    return UserCreateFallback.fromJson(
      json
    );
}

/// @nodoc
mixin _$UserCreate {



  /// Serializes this UserCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCreate);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserCreate()';
}


}

/// @nodoc
class $UserCreateCopyWith<$Res>  {
$UserCreateCopyWith(UserCreate _, $Res Function(UserCreate) __);
}


/// @nodoc
@JsonSerializable()

class UserCreateFallback implements UserCreate {
  const UserCreateFallback();
  factory UserCreateFallback.fromJson(Map<String, dynamic> json) => _$UserCreateFallbackFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$UserCreateFallbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCreateFallback);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserCreate.fallback()';
}


}

/// @nodoc
class $UserCreateFallbackCopyWith<$Res> implements $UserCreateCopyWith<$Res> {
$UserCreateFallbackCopyWith(UserCreateFallback _, $Res Function(UserCreateFallback) __);
}
/// @nodoc
class _$UserCreateFallbackCopyWithImpl<$Res>
    implements $UserCreateFallbackCopyWith<$Res> {
  _$UserCreateFallbackCopyWithImpl(this._self, this._then);

  final UserCreateFallback _self;
  final $Res Function(UserCreateFallback) _then;




}

// dart format on
