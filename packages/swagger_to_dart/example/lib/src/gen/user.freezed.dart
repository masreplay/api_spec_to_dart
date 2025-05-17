// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

/// username
@JsonKey(name: User.usernameKey) String get username;/// email
@JsonKey(name: User.emailKey) String get email;/// fullName
@JsonKey(name: User.fullNameKey) String? get fullName;/// id
@JsonKey(name: User.idKey) int get id;/// isActive
@JsonKey(name: User.isActiveKey) bool get isActive;/// createdAt
@JsonKey(name: User.createdAtKey) DateTime get createdAt;/// location
@JsonKey(name: User.locationKey) Location? get location;/// tags
@JsonKey(name: User.tagsKey) List<String> get tags;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.id, id) || other.id == id)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,email,fullName,id,isActive,createdAt,location,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'User(username: $username, email: $email, fullName: $fullName, id: $id, isActive: $isActive, createdAt: $createdAt, location: $location, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: User.usernameKey) String username,@JsonKey(name: User.emailKey) String email,@JsonKey(name: User.fullNameKey) String? fullName,@JsonKey(name: User.idKey) int id,@JsonKey(name: User.isActiveKey) bool isActive,@JsonKey(name: User.createdAtKey) DateTime createdAt,@JsonKey(name: User.locationKey) Location? location,@JsonKey(name: User.tagsKey) List<String> tags
});


$LocationCopyWith<$Res>? get location;

}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? email = null,Object? fullName = freezed,Object? id = null,Object? isActive = null,Object? createdAt = null,Object? location = freezed,Object? tags = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc

@generationJsonSerializable
class _User extends User {
  const _User({@JsonKey(name: User.usernameKey) required this.username, @JsonKey(name: User.emailKey) required this.email, @JsonKey(name: User.fullNameKey) required this.fullName, @JsonKey(name: User.idKey) required this.id, @JsonKey(name: User.isActiveKey) this.isActive = true, @JsonKey(name: User.createdAtKey) required this.createdAt, @JsonKey(name: User.locationKey) required this.location, @JsonKey(name: User.tagsKey) final  List<String> tags = const []}): _tags = tags,super._();
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

/// username
@override@JsonKey(name: User.usernameKey) final  String username;
/// email
@override@JsonKey(name: User.emailKey) final  String email;
/// fullName
@override@JsonKey(name: User.fullNameKey) final  String? fullName;
/// id
@override@JsonKey(name: User.idKey) final  int id;
/// isActive
@override@JsonKey(name: User.isActiveKey) final  bool isActive;
/// createdAt
@override@JsonKey(name: User.createdAtKey) final  DateTime createdAt;
/// location
@override@JsonKey(name: User.locationKey) final  Location? location;
/// tags
 final  List<String> _tags;
/// tags
@override@JsonKey(name: User.tagsKey) List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.id, id) || other.id == id)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,email,fullName,id,isActive,createdAt,location,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'User(username: $username, email: $email, fullName: $fullName, id: $id, isActive: $isActive, createdAt: $createdAt, location: $location, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: User.usernameKey) String username,@JsonKey(name: User.emailKey) String email,@JsonKey(name: User.fullNameKey) String? fullName,@JsonKey(name: User.idKey) int id,@JsonKey(name: User.isActiveKey) bool isActive,@JsonKey(name: User.createdAtKey) DateTime createdAt,@JsonKey(name: User.locationKey) Location? location,@JsonKey(name: User.tagsKey) List<String> tags
});


@override $LocationCopyWith<$Res>? get location;

}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? email = null,Object? fullName = freezed,Object? id = null,Object? isActive = null,Object? createdAt = null,Object? location = freezed,Object? tags = null,}) {
  return _then(_User(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

// dart format on
