// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRegister {

/// email
@JsonKey(name: UserRegister.emailKey) String get email;/// password
@JsonKey(name: UserRegister.passwordKey) String get password;/// Full Name
@JsonKey(name: UserRegister.fullNameKey) String? get fullName;
/// Create a copy of UserRegister
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRegisterCopyWith<UserRegister> get copyWith => _$UserRegisterCopyWithImpl<UserRegister>(this as UserRegister, _$identity);

  /// Serializes this UserRegister to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRegister&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.fullName, fullName) || other.fullName == fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,fullName);

@override
String toString() {
  return 'UserRegister(email: $email, password: $password, fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class $UserRegisterCopyWith<$Res>  {
  factory $UserRegisterCopyWith(UserRegister value, $Res Function(UserRegister) _then) = _$UserRegisterCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: UserRegister.emailKey) String email,@JsonKey(name: UserRegister.passwordKey) String password,@JsonKey(name: UserRegister.fullNameKey) String? fullName
});




}
/// @nodoc
class _$UserRegisterCopyWithImpl<$Res>
    implements $UserRegisterCopyWith<$Res> {
  _$UserRegisterCopyWithImpl(this._self, this._then);

  final UserRegister _self;
  final $Res Function(UserRegister) _then;

/// Create a copy of UserRegister
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? fullName = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _UserRegister extends UserRegister {
  const _UserRegister({@JsonKey(name: UserRegister.emailKey) required this.email, @JsonKey(name: UserRegister.passwordKey) required this.password, @JsonKey(name: UserRegister.fullNameKey) required this.fullName}): super._();
  factory _UserRegister.fromJson(Map<String, dynamic> json) => _$UserRegisterFromJson(json);

/// email
@override@JsonKey(name: UserRegister.emailKey) final  String email;
/// password
@override@JsonKey(name: UserRegister.passwordKey) final  String password;
/// Full Name
@override@JsonKey(name: UserRegister.fullNameKey) final  String? fullName;

/// Create a copy of UserRegister
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRegisterCopyWith<_UserRegister> get copyWith => __$UserRegisterCopyWithImpl<_UserRegister>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserRegisterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRegister&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.fullName, fullName) || other.fullName == fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,fullName);

@override
String toString() {
  return 'UserRegister(email: $email, password: $password, fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class _$UserRegisterCopyWith<$Res> implements $UserRegisterCopyWith<$Res> {
  factory _$UserRegisterCopyWith(_UserRegister value, $Res Function(_UserRegister) _then) = __$UserRegisterCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: UserRegister.emailKey) String email,@JsonKey(name: UserRegister.passwordKey) String password,@JsonKey(name: UserRegister.fullNameKey) String? fullName
});




}
/// @nodoc
class __$UserRegisterCopyWithImpl<$Res>
    implements _$UserRegisterCopyWith<$Res> {
  __$UserRegisterCopyWithImpl(this._self, this._then);

  final _UserRegister _self;
  final $Res Function(_UserRegister) _then;

/// Create a copy of UserRegister
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? fullName = freezed,}) {
  return _then(_UserRegister(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
