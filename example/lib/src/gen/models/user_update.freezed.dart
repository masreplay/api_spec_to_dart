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

/// @nodoc
mixin _$UserUpdate {

/// Email
@JsonKey(name: UserUpdate.emailKey) String? get email;/// is_active
@JsonKey(name: UserUpdate.isActiveKey) bool get isActive;/// is_superuser
@JsonKey(name: UserUpdate.isSuperuserKey) bool get isSuperuser;/// Full Name
@JsonKey(name: UserUpdate.fullNameKey) String? get fullName;/// Password
@JsonKey(name: UserUpdate.passwordKey) String? get password;
/// Create a copy of UserUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserUpdateCopyWith<UserUpdate> get copyWith => _$UserUpdateCopyWithImpl<UserUpdate>(this as UserUpdate, _$identity);

  /// Serializes this UserUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserUpdate&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isSuperuser, isSuperuser) || other.isSuperuser == isSuperuser)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,isActive,isSuperuser,fullName,password);

@override
String toString() {
  return 'UserUpdate(email: $email, isActive: $isActive, isSuperuser: $isSuperuser, fullName: $fullName, password: $password)';
}


}

/// @nodoc
abstract mixin class $UserUpdateCopyWith<$Res>  {
  factory $UserUpdateCopyWith(UserUpdate value, $Res Function(UserUpdate) _then) = _$UserUpdateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: UserUpdate.emailKey) String? email,@JsonKey(name: UserUpdate.isActiveKey) bool isActive,@JsonKey(name: UserUpdate.isSuperuserKey) bool isSuperuser,@JsonKey(name: UserUpdate.fullNameKey) String? fullName,@JsonKey(name: UserUpdate.passwordKey) String? password
});




}
/// @nodoc
class _$UserUpdateCopyWithImpl<$Res>
    implements $UserUpdateCopyWith<$Res> {
  _$UserUpdateCopyWithImpl(this._self, this._then);

  final UserUpdate _self;
  final $Res Function(UserUpdate) _then;

/// Create a copy of UserUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? isActive = null,Object? isSuperuser = null,Object? fullName = freezed,Object? password = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,isSuperuser: null == isSuperuser ? _self.isSuperuser : isSuperuser // ignore: cast_nullable_to_non_nullable
as bool,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _UserUpdate extends UserUpdate {
  const _UserUpdate({@JsonKey(name: UserUpdate.emailKey) required this.email, @JsonKey(name: UserUpdate.isActiveKey) this.isActive = true, @JsonKey(name: UserUpdate.isSuperuserKey) this.isSuperuser = false, @JsonKey(name: UserUpdate.fullNameKey) required this.fullName, @JsonKey(name: UserUpdate.passwordKey) required this.password}): super._();
  factory _UserUpdate.fromJson(Map<String, dynamic> json) => _$UserUpdateFromJson(json);

/// Email
@override@JsonKey(name: UserUpdate.emailKey) final  String? email;
/// is_active
@override@JsonKey(name: UserUpdate.isActiveKey) final  bool isActive;
/// is_superuser
@override@JsonKey(name: UserUpdate.isSuperuserKey) final  bool isSuperuser;
/// Full Name
@override@JsonKey(name: UserUpdate.fullNameKey) final  String? fullName;
/// Password
@override@JsonKey(name: UserUpdate.passwordKey) final  String? password;

/// Create a copy of UserUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserUpdateCopyWith<_UserUpdate> get copyWith => __$UserUpdateCopyWithImpl<_UserUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserUpdate&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isSuperuser, isSuperuser) || other.isSuperuser == isSuperuser)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,isActive,isSuperuser,fullName,password);

@override
String toString() {
  return 'UserUpdate(email: $email, isActive: $isActive, isSuperuser: $isSuperuser, fullName: $fullName, password: $password)';
}


}

/// @nodoc
abstract mixin class _$UserUpdateCopyWith<$Res> implements $UserUpdateCopyWith<$Res> {
  factory _$UserUpdateCopyWith(_UserUpdate value, $Res Function(_UserUpdate) _then) = __$UserUpdateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: UserUpdate.emailKey) String? email,@JsonKey(name: UserUpdate.isActiveKey) bool isActive,@JsonKey(name: UserUpdate.isSuperuserKey) bool isSuperuser,@JsonKey(name: UserUpdate.fullNameKey) String? fullName,@JsonKey(name: UserUpdate.passwordKey) String? password
});




}
/// @nodoc
class __$UserUpdateCopyWithImpl<$Res>
    implements _$UserUpdateCopyWith<$Res> {
  __$UserUpdateCopyWithImpl(this._self, this._then);

  final _UserUpdate _self;
  final $Res Function(_UserUpdate) _then;

/// Create a copy of UserUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? isActive = null,Object? isSuperuser = null,Object? fullName = freezed,Object? password = freezed,}) {
  return _then(_UserUpdate(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,isSuperuser: null == isSuperuser ? _self.isSuperuser : isSuperuser // ignore: cast_nullable_to_non_nullable
as bool,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
