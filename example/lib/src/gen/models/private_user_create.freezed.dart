// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_user_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrivateUserCreate {

/// email
@JsonKey(name: PrivateUserCreate.emailKey) String get email;/// password
@JsonKey(name: PrivateUserCreate.passwordKey) String get password;/// full_name
@JsonKey(name: PrivateUserCreate.fullNameKey) String get fullName;/// is_verified
@JsonKey(name: PrivateUserCreate.isVerifiedKey) bool get isVerified;
/// Create a copy of PrivateUserCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrivateUserCreateCopyWith<PrivateUserCreate> get copyWith => _$PrivateUserCreateCopyWithImpl<PrivateUserCreate>(this as PrivateUserCreate, _$identity);

  /// Serializes this PrivateUserCreate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrivateUserCreate&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,fullName,isVerified);

@override
String toString() {
  return 'PrivateUserCreate(email: $email, password: $password, fullName: $fullName, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class $PrivateUserCreateCopyWith<$Res>  {
  factory $PrivateUserCreateCopyWith(PrivateUserCreate value, $Res Function(PrivateUserCreate) _then) = _$PrivateUserCreateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: PrivateUserCreate.emailKey) String email,@JsonKey(name: PrivateUserCreate.passwordKey) String password,@JsonKey(name: PrivateUserCreate.fullNameKey) String fullName,@JsonKey(name: PrivateUserCreate.isVerifiedKey) bool isVerified
});




}
/// @nodoc
class _$PrivateUserCreateCopyWithImpl<$Res>
    implements $PrivateUserCreateCopyWith<$Res> {
  _$PrivateUserCreateCopyWithImpl(this._self, this._then);

  final PrivateUserCreate _self;
  final $Res Function(PrivateUserCreate) _then;

/// Create a copy of PrivateUserCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? fullName = null,Object? isVerified = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _PrivateUserCreate extends PrivateUserCreate {
  const _PrivateUserCreate({@JsonKey(name: PrivateUserCreate.emailKey) required this.email, @JsonKey(name: PrivateUserCreate.passwordKey) required this.password, @JsonKey(name: PrivateUserCreate.fullNameKey) required this.fullName, @JsonKey(name: PrivateUserCreate.isVerifiedKey) this.isVerified = false}): super._();
  factory _PrivateUserCreate.fromJson(Map<String, dynamic> json) => _$PrivateUserCreateFromJson(json);

/// email
@override@JsonKey(name: PrivateUserCreate.emailKey) final  String email;
/// password
@override@JsonKey(name: PrivateUserCreate.passwordKey) final  String password;
/// full_name
@override@JsonKey(name: PrivateUserCreate.fullNameKey) final  String fullName;
/// is_verified
@override@JsonKey(name: PrivateUserCreate.isVerifiedKey) final  bool isVerified;

/// Create a copy of PrivateUserCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrivateUserCreateCopyWith<_PrivateUserCreate> get copyWith => __$PrivateUserCreateCopyWithImpl<_PrivateUserCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrivateUserCreateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrivateUserCreate&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,fullName,isVerified);

@override
String toString() {
  return 'PrivateUserCreate(email: $email, password: $password, fullName: $fullName, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class _$PrivateUserCreateCopyWith<$Res> implements $PrivateUserCreateCopyWith<$Res> {
  factory _$PrivateUserCreateCopyWith(_PrivateUserCreate value, $Res Function(_PrivateUserCreate) _then) = __$PrivateUserCreateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: PrivateUserCreate.emailKey) String email,@JsonKey(name: PrivateUserCreate.passwordKey) String password,@JsonKey(name: PrivateUserCreate.fullNameKey) String fullName,@JsonKey(name: PrivateUserCreate.isVerifiedKey) bool isVerified
});




}
/// @nodoc
class __$PrivateUserCreateCopyWithImpl<$Res>
    implements _$PrivateUserCreateCopyWith<$Res> {
  __$PrivateUserCreateCopyWithImpl(this._self, this._then);

  final _PrivateUserCreate _self;
  final $Res Function(_PrivateUserCreate) _then;

/// Create a copy of PrivateUserCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? fullName = null,Object? isVerified = null,}) {
  return _then(_PrivateUserCreate(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
