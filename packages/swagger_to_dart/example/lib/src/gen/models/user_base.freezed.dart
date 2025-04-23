// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserBase {
  /// username, Username between 3-50 characters, alphanumeric with _ and -
  @JsonKey(name: UserBase.usernameKey)
  String get username;

  /// email, Valid email address
  @JsonKey(name: UserBase.emailKey)
  String get email;

  /// Full Name, User's full name
  @JsonKey(name: UserBase.fullNameKey)
  String? get fullName;

  /// Create a copy of UserBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserBaseCopyWith<UserBase> get copyWith =>
      _$UserBaseCopyWithImpl<UserBase>(this as UserBase, _$identity);

  /// Serializes this UserBase to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserBase &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, email, fullName);

  @override
  String toString() {
    return 'UserBase(username: $username, email: $email, fullName: $fullName)';
  }
}

/// @nodoc
abstract mixin class $UserBaseCopyWith<$Res> {
  factory $UserBaseCopyWith(UserBase value, $Res Function(UserBase) _then) =
      _$UserBaseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: UserBase.usernameKey) String username,
      @JsonKey(name: UserBase.emailKey) String email,
      @JsonKey(name: UserBase.fullNameKey) String? fullName});
}

/// @nodoc
class _$UserBaseCopyWithImpl<$Res> implements $UserBaseCopyWith<$Res> {
  _$UserBaseCopyWithImpl(this._self, this._then);

  final UserBase _self;
  final $Res Function(UserBase) _then;

  /// Create a copy of UserBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? fullName = freezed,
  }) {
    return _then(_self.copyWith(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _UserBase extends UserBase {
  const _UserBase(
      {@JsonKey(name: UserBase.usernameKey) required this.username,
      @JsonKey(name: UserBase.emailKey) required this.email,
      @JsonKey(name: UserBase.fullNameKey) required this.fullName})
      : super._();
  factory _UserBase.fromJson(Map<String, dynamic> json) =>
      _$UserBaseFromJson(json);

  /// username, Username between 3-50 characters, alphanumeric with _ and -
  @override
  @JsonKey(name: UserBase.usernameKey)
  final String username;

  /// email, Valid email address
  @override
  @JsonKey(name: UserBase.emailKey)
  final String email;

  /// Full Name, User's full name
  @override
  @JsonKey(name: UserBase.fullNameKey)
  final String? fullName;

  /// Create a copy of UserBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserBaseCopyWith<_UserBase> get copyWith =>
      __$UserBaseCopyWithImpl<_UserBase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserBaseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserBase &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, email, fullName);

  @override
  String toString() {
    return 'UserBase(username: $username, email: $email, fullName: $fullName)';
  }
}

/// @nodoc
abstract mixin class _$UserBaseCopyWith<$Res>
    implements $UserBaseCopyWith<$Res> {
  factory _$UserBaseCopyWith(_UserBase value, $Res Function(_UserBase) _then) =
      __$UserBaseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserBase.usernameKey) String username,
      @JsonKey(name: UserBase.emailKey) String email,
      @JsonKey(name: UserBase.fullNameKey) String? fullName});
}

/// @nodoc
class __$UserBaseCopyWithImpl<$Res> implements _$UserBaseCopyWith<$Res> {
  __$UserBaseCopyWithImpl(this._self, this._then);

  final _UserBase _self;
  final $Res Function(_UserBase) _then;

  /// Create a copy of UserBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? fullName = freezed,
  }) {
    return _then(_UserBase(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
