// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_update_me.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserUpdateMe {

/// Full Name
@JsonKey(name: UserUpdateMe.fullNameKey) Stringdynamic? get fullName;/// Email
@JsonKey(name: UserUpdateMe.emailKey) Stringdynamic? get email;
/// Create a copy of UserUpdateMe
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserUpdateMeCopyWith<UserUpdateMe> get copyWith => _$UserUpdateMeCopyWithImpl<UserUpdateMe>(this as UserUpdateMe, _$identity);

  /// Serializes this UserUpdateMe to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserUpdateMe&&const DeepCollectionEquality().equals(other.fullName, fullName)&&const DeepCollectionEquality().equals(other.email, email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(fullName),const DeepCollectionEquality().hash(email));

@override
String toString() {
  return 'UserUpdateMe(fullName: $fullName, email: $email)';
}


}

/// @nodoc
abstract mixin class $UserUpdateMeCopyWith<$Res>  {
  factory $UserUpdateMeCopyWith(UserUpdateMe value, $Res Function(UserUpdateMe) _then) = _$UserUpdateMeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: UserUpdateMe.fullNameKey) Stringdynamic? fullName,@JsonKey(name: UserUpdateMe.emailKey) Stringdynamic? email
});




}
/// @nodoc
class _$UserUpdateMeCopyWithImpl<$Res>
    implements $UserUpdateMeCopyWith<$Res> {
  _$UserUpdateMeCopyWithImpl(this._self, this._then);

  final UserUpdateMe _self;
  final $Res Function(UserUpdateMe) _then;

/// Create a copy of UserUpdateMe
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as Stringdynamic?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Stringdynamic?,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _UserUpdateMe extends UserUpdateMe {
  const _UserUpdateMe({@JsonKey(name: UserUpdateMe.fullNameKey) required this.fullName, @JsonKey(name: UserUpdateMe.emailKey) required this.email}): super._();
  factory _UserUpdateMe.fromJson(Map<String, dynamic> json) => _$UserUpdateMeFromJson(json);

/// Full Name
@override@JsonKey(name: UserUpdateMe.fullNameKey) final  Stringdynamic? fullName;
/// Email
@override@JsonKey(name: UserUpdateMe.emailKey) final  Stringdynamic? email;

/// Create a copy of UserUpdateMe
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserUpdateMeCopyWith<_UserUpdateMe> get copyWith => __$UserUpdateMeCopyWithImpl<_UserUpdateMe>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserUpdateMeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserUpdateMe&&const DeepCollectionEquality().equals(other.fullName, fullName)&&const DeepCollectionEquality().equals(other.email, email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(fullName),const DeepCollectionEquality().hash(email));

@override
String toString() {
  return 'UserUpdateMe(fullName: $fullName, email: $email)';
}


}

/// @nodoc
abstract mixin class _$UserUpdateMeCopyWith<$Res> implements $UserUpdateMeCopyWith<$Res> {
  factory _$UserUpdateMeCopyWith(_UserUpdateMe value, $Res Function(_UserUpdateMe) _then) = __$UserUpdateMeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: UserUpdateMe.fullNameKey) Stringdynamic? fullName,@JsonKey(name: UserUpdateMe.emailKey) Stringdynamic? email
});




}
/// @nodoc
class __$UserUpdateMeCopyWithImpl<$Res>
    implements _$UserUpdateMeCopyWith<$Res> {
  __$UserUpdateMeCopyWithImpl(this._self, this._then);

  final _UserUpdateMe _self;
  final $Res Function(_UserUpdateMe) _then;

/// Create a copy of UserUpdateMe
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = freezed,Object? email = freezed,}) {
  return _then(_UserUpdateMe(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as Stringdynamic?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Stringdynamic?,
  ));
}


}

// dart format on
