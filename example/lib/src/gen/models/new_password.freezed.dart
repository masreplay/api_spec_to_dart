// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewPassword {

/// token
@JsonKey(name: NewPassword.tokenKey) String get token;/// new_password
@JsonKey(name: NewPassword.newPasswordKey) String get newPassword;
/// Create a copy of NewPassword
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewPasswordCopyWith<NewPassword> get copyWith => _$NewPasswordCopyWithImpl<NewPassword>(this as NewPassword, _$identity);

  /// Serializes this NewPassword to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewPassword&&(identical(other.token, token) || other.token == token)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,newPassword);

@override
String toString() {
  return 'NewPassword(token: $token, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $NewPasswordCopyWith<$Res>  {
  factory $NewPasswordCopyWith(NewPassword value, $Res Function(NewPassword) _then) = _$NewPasswordCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: NewPassword.tokenKey) String token,@JsonKey(name: NewPassword.newPasswordKey) String newPassword
});




}
/// @nodoc
class _$NewPasswordCopyWithImpl<$Res>
    implements $NewPasswordCopyWith<$Res> {
  _$NewPasswordCopyWithImpl(this._self, this._then);

  final NewPassword _self;
  final $Res Function(NewPassword) _then;

/// Create a copy of NewPassword
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? newPassword = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _NewPassword extends NewPassword {
  const _NewPassword({@JsonKey(name: NewPassword.tokenKey) required this.token, @JsonKey(name: NewPassword.newPasswordKey) required this.newPassword}): super._();
  factory _NewPassword.fromJson(Map<String, dynamic> json) => _$NewPasswordFromJson(json);

/// token
@override@JsonKey(name: NewPassword.tokenKey) final  String token;
/// new_password
@override@JsonKey(name: NewPassword.newPasswordKey) final  String newPassword;

/// Create a copy of NewPassword
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewPasswordCopyWith<_NewPassword> get copyWith => __$NewPasswordCopyWithImpl<_NewPassword>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewPasswordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewPassword&&(identical(other.token, token) || other.token == token)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,newPassword);

@override
String toString() {
  return 'NewPassword(token: $token, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$NewPasswordCopyWith<$Res> implements $NewPasswordCopyWith<$Res> {
  factory _$NewPasswordCopyWith(_NewPassword value, $Res Function(_NewPassword) _then) = __$NewPasswordCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: NewPassword.tokenKey) String token,@JsonKey(name: NewPassword.newPasswordKey) String newPassword
});




}
/// @nodoc
class __$NewPasswordCopyWithImpl<$Res>
    implements _$NewPasswordCopyWith<$Res> {
  __$NewPasswordCopyWithImpl(this._self, this._then);

  final _NewPassword _self;
  final $Res Function(_NewPassword) _then;

/// Create a copy of NewPassword
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? newPassword = null,}) {
  return _then(_NewPassword(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
