// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdatePassword {

/// current_password
@JsonKey(name: UpdatePassword.currentPasswordKey) String get currentPassword;/// new_password
@JsonKey(name: UpdatePassword.newPasswordKey) String get newPassword;
/// Create a copy of UpdatePassword
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePasswordCopyWith<UpdatePassword> get copyWith => _$UpdatePasswordCopyWithImpl<UpdatePassword>(this as UpdatePassword, _$identity);

  /// Serializes this UpdatePassword to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePassword&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPassword,newPassword);

@override
String toString() {
  return 'UpdatePassword(currentPassword: $currentPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $UpdatePasswordCopyWith<$Res>  {
  factory $UpdatePasswordCopyWith(UpdatePassword value, $Res Function(UpdatePassword) _then) = _$UpdatePasswordCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: UpdatePassword.currentPasswordKey) String currentPassword,@JsonKey(name: UpdatePassword.newPasswordKey) String newPassword
});




}
/// @nodoc
class _$UpdatePasswordCopyWithImpl<$Res>
    implements $UpdatePasswordCopyWith<$Res> {
  _$UpdatePasswordCopyWithImpl(this._self, this._then);

  final UpdatePassword _self;
  final $Res Function(UpdatePassword) _then;

/// Create a copy of UpdatePassword
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPassword = null,Object? newPassword = null,}) {
  return _then(_self.copyWith(
currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _UpdatePassword extends UpdatePassword {
  const _UpdatePassword({@JsonKey(name: UpdatePassword.currentPasswordKey) required this.currentPassword, @JsonKey(name: UpdatePassword.newPasswordKey) required this.newPassword}): super._();
  factory _UpdatePassword.fromJson(Map<String, dynamic> json) => _$UpdatePasswordFromJson(json);

/// current_password
@override@JsonKey(name: UpdatePassword.currentPasswordKey) final  String currentPassword;
/// new_password
@override@JsonKey(name: UpdatePassword.newPasswordKey) final  String newPassword;

/// Create a copy of UpdatePassword
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePasswordCopyWith<_UpdatePassword> get copyWith => __$UpdatePasswordCopyWithImpl<_UpdatePassword>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatePasswordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePassword&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPassword,newPassword);

@override
String toString() {
  return 'UpdatePassword(currentPassword: $currentPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$UpdatePasswordCopyWith<$Res> implements $UpdatePasswordCopyWith<$Res> {
  factory _$UpdatePasswordCopyWith(_UpdatePassword value, $Res Function(_UpdatePassword) _then) = __$UpdatePasswordCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: UpdatePassword.currentPasswordKey) String currentPassword,@JsonKey(name: UpdatePassword.newPasswordKey) String newPassword
});




}
/// @nodoc
class __$UpdatePasswordCopyWithImpl<$Res>
    implements _$UpdatePasswordCopyWith<$Res> {
  __$UpdatePasswordCopyWithImpl(this._self, this._then);

  final _UpdatePassword _self;
  final $Res Function(_UpdatePassword) _then;

/// Create a copy of UpdatePassword
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPassword = null,Object? newPassword = null,}) {
  return _then(_UpdatePassword(
currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
