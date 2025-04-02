// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
UserPublic _$UserPublicFromJson(
  Map<String, dynamic> json
) {
    return UserPublicFallback.fromJson(
      json
    );
}

/// @nodoc
mixin _$UserPublic {



  /// Serializes this UserPublic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPublic);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPublic()';
}


}

/// @nodoc
class $UserPublicCopyWith<$Res>  {
$UserPublicCopyWith(UserPublic _, $Res Function(UserPublic) __);
}


/// @nodoc
@JsonSerializable()

class UserPublicFallback implements UserPublic {
  const UserPublicFallback();
  factory UserPublicFallback.fromJson(Map<String, dynamic> json) => _$UserPublicFallbackFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$UserPublicFallbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPublicFallback);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPublic.fallback()';
}


}

/// @nodoc
class $UserPublicFallbackCopyWith<$Res> implements $UserPublicCopyWith<$Res> {
$UserPublicFallbackCopyWith(UserPublicFallback _, $Res Function(UserPublicFallback) __);
}
/// @nodoc
class _$UserPublicFallbackCopyWithImpl<$Res>
    implements $UserPublicFallbackCopyWith<$Res> {
  _$UserPublicFallbackCopyWithImpl(this._self, this._then);

  final UserPublicFallback _self;
  final $Res Function(UserPublicFallback) _then;




}

// dart format on
