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

/// @nodoc
mixin _$UserPublic {

/// email
@JsonKey(name: UserPublic.emailKey) String get email;/// is_active
@JsonKey(name: UserPublic.isActiveKey) bool get isActive;/// is_superuser
@JsonKey(name: UserPublic.isSuperuserKey) bool get isSuperuser;/// Full Name
@JsonKey(name: UserPublic.fullNameKey) Stringdynamic? get fullName;/// id
@JsonKey(name: UserPublic.idKey) String get id;
/// Create a copy of UserPublic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPublicCopyWith<UserPublic> get copyWith => _$UserPublicCopyWithImpl<UserPublic>(this as UserPublic, _$identity);

  /// Serializes this UserPublic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPublic&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isSuperuser, isSuperuser) || other.isSuperuser == isSuperuser)&&const DeepCollectionEquality().equals(other.fullName, fullName)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,isActive,isSuperuser,const DeepCollectionEquality().hash(fullName),id);

@override
String toString() {
  return 'UserPublic(email: $email, isActive: $isActive, isSuperuser: $isSuperuser, fullName: $fullName, id: $id)';
}


}

/// @nodoc
abstract mixin class $UserPublicCopyWith<$Res>  {
  factory $UserPublicCopyWith(UserPublic value, $Res Function(UserPublic) _then) = _$UserPublicCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: UserPublic.emailKey) String email,@JsonKey(name: UserPublic.isActiveKey) bool isActive,@JsonKey(name: UserPublic.isSuperuserKey) bool isSuperuser,@JsonKey(name: UserPublic.fullNameKey) Stringdynamic? fullName,@JsonKey(name: UserPublic.idKey) String id
});




}
/// @nodoc
class _$UserPublicCopyWithImpl<$Res>
    implements $UserPublicCopyWith<$Res> {
  _$UserPublicCopyWithImpl(this._self, this._then);

  final UserPublic _self;
  final $Res Function(UserPublic) _then;

/// Create a copy of UserPublic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? isActive = null,Object? isSuperuser = null,Object? fullName = freezed,Object? id = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,isSuperuser: null == isSuperuser ? _self.isSuperuser : isSuperuser // ignore: cast_nullable_to_non_nullable
as bool,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as Stringdynamic?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _UserPublic extends UserPublic {
  const _UserPublic({@JsonKey(name: UserPublic.emailKey) required this.email, @JsonKey(name: UserPublic.isActiveKey) this.isActive = true, @JsonKey(name: UserPublic.isSuperuserKey) this.isSuperuser = false, @JsonKey(name: UserPublic.fullNameKey) required this.fullName, @JsonKey(name: UserPublic.idKey) required this.id}): super._();
  factory _UserPublic.fromJson(Map<String, dynamic> json) => _$UserPublicFromJson(json);

/// email
@override@JsonKey(name: UserPublic.emailKey) final  String email;
/// is_active
@override@JsonKey(name: UserPublic.isActiveKey) final  bool isActive;
/// is_superuser
@override@JsonKey(name: UserPublic.isSuperuserKey) final  bool isSuperuser;
/// Full Name
@override@JsonKey(name: UserPublic.fullNameKey) final  Stringdynamic? fullName;
/// id
@override@JsonKey(name: UserPublic.idKey) final  String id;

/// Create a copy of UserPublic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPublicCopyWith<_UserPublic> get copyWith => __$UserPublicCopyWithImpl<_UserPublic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPublicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPublic&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isSuperuser, isSuperuser) || other.isSuperuser == isSuperuser)&&const DeepCollectionEquality().equals(other.fullName, fullName)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,isActive,isSuperuser,const DeepCollectionEquality().hash(fullName),id);

@override
String toString() {
  return 'UserPublic(email: $email, isActive: $isActive, isSuperuser: $isSuperuser, fullName: $fullName, id: $id)';
}


}

/// @nodoc
abstract mixin class _$UserPublicCopyWith<$Res> implements $UserPublicCopyWith<$Res> {
  factory _$UserPublicCopyWith(_UserPublic value, $Res Function(_UserPublic) _then) = __$UserPublicCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: UserPublic.emailKey) String email,@JsonKey(name: UserPublic.isActiveKey) bool isActive,@JsonKey(name: UserPublic.isSuperuserKey) bool isSuperuser,@JsonKey(name: UserPublic.fullNameKey) Stringdynamic? fullName,@JsonKey(name: UserPublic.idKey) String id
});




}
/// @nodoc
class __$UserPublicCopyWithImpl<$Res>
    implements _$UserPublicCopyWith<$Res> {
  __$UserPublicCopyWithImpl(this._self, this._then);

  final _UserPublic _self;
  final $Res Function(_UserPublic) _then;

/// Create a copy of UserPublic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? isActive = null,Object? isSuperuser = null,Object? fullName = freezed,Object? id = null,}) {
  return _then(_UserPublic(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,isSuperuser: null == isSuperuser ? _self.isSuperuser : isSuperuser // ignore: cast_nullable_to_non_nullable
as bool,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as Stringdynamic?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
