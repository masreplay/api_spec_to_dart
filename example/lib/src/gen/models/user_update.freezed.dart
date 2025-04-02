// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
UserUpdate _$UserUpdateFromJson(
  Map<String, dynamic> json
) {
    return UserUpdateFallback.fromJson(
      json
    );
}

/// @nodoc
mixin _$UserUpdate {



  /// Serializes this UserUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserUpdate);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserUpdate()';
}


}

/// @nodoc
class $UserUpdateCopyWith<$Res>  {
$UserUpdateCopyWith(UserUpdate _, $Res Function(UserUpdate) __);
}


/// @nodoc
@JsonSerializable()

class UserUpdateFallback implements UserUpdate {
  const UserUpdateFallback();
  factory UserUpdateFallback.fromJson(Map<String, dynamic> json) => _$UserUpdateFallbackFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$UserUpdateFallbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserUpdateFallback);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserUpdate.fallback()';
}


}

/// @nodoc
class $UserUpdateFallbackCopyWith<$Res> implements $UserUpdateCopyWith<$Res> {
$UserUpdateFallbackCopyWith(UserUpdateFallback _, $Res Function(UserUpdateFallback) __);
}
/// @nodoc
class _$UserUpdateFallbackCopyWithImpl<$Res>
    implements $UserUpdateFallbackCopyWith<$Res> {
  _$UserUpdateFallbackCopyWithImpl(this._self, this._then);

  final UserUpdateFallback _self;
  final $Res Function(UserUpdateFallback) _then;




}

// dart format on
