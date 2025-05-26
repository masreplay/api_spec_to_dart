// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserCreate {
  /// username
  @JsonKey(name: UserCreate.usernameKey)
  String get username;

  /// email
  @JsonKey(name: UserCreate.emailKey)
  String get email;

  /// fullName
  @JsonKey(name: UserCreate.fullNameKey)
  String? get fullName;

  /// password
  @JsonKey(name: UserCreate.passwordKey)
  String get password;

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCreateCopyWith<UserCreate> get copyWith =>
      _$UserCreateCopyWithImpl<UserCreate>(this as UserCreate, _$identity);

  /// Serializes this UserCreate to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserCreate &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, fullName, password);

  @override
  String toString() {
    return 'UserCreate(username: $username, email: $email, fullName: $fullName, password: $password)';
  }
}

/// @nodoc
abstract mixin class $UserCreateCopyWith<$Res> {
  factory $UserCreateCopyWith(
    UserCreate value,
    $Res Function(UserCreate) _then,
  ) = _$UserCreateCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: UserCreate.usernameKey) String username,
    @JsonKey(name: UserCreate.emailKey) String email,
    @JsonKey(name: UserCreate.fullNameKey) String? fullName,
    @JsonKey(name: UserCreate.passwordKey) String password,
  });
}

/// @nodoc
class _$UserCreateCopyWithImpl<$Res> implements $UserCreateCopyWith<$Res> {
  _$UserCreateCopyWithImpl(this._self, this._then);

  final UserCreate _self;
  final $Res Function(UserCreate) _then;

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? fullName = freezed,
    Object? password = null,
  }) {
    return _then(
      _self.copyWith(
        username:
            null == username
                ? _self.username
                : username // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _self.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        fullName:
            freezed == fullName
                ? _self.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                    as String?,
        password:
            null == password
                ? _self.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _UserCreate extends UserCreate {
  const _UserCreate({
    @JsonKey(name: UserCreate.usernameKey) required this.username,
    @JsonKey(name: UserCreate.emailKey) required this.email,
    @JsonKey(name: UserCreate.fullNameKey) required this.fullName,
    @JsonKey(name: UserCreate.passwordKey) required this.password,
  }) : super._();
  factory _UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);

  /// username
  @override
  @JsonKey(name: UserCreate.usernameKey)
  final String username;

  /// email
  @override
  @JsonKey(name: UserCreate.emailKey)
  final String email;

  /// fullName
  @override
  @JsonKey(name: UserCreate.fullNameKey)
  final String? fullName;

  /// password
  @override
  @JsonKey(name: UserCreate.passwordKey)
  final String password;

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCreateCopyWith<_UserCreate> get copyWith =>
      __$UserCreateCopyWithImpl<_UserCreate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserCreateToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserCreate &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, fullName, password);

  @override
  String toString() {
    return 'UserCreate(username: $username, email: $email, fullName: $fullName, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$UserCreateCopyWith<$Res>
    implements $UserCreateCopyWith<$Res> {
  factory _$UserCreateCopyWith(
    _UserCreate value,
    $Res Function(_UserCreate) _then,
  ) = __$UserCreateCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: UserCreate.usernameKey) String username,
    @JsonKey(name: UserCreate.emailKey) String email,
    @JsonKey(name: UserCreate.fullNameKey) String? fullName,
    @JsonKey(name: UserCreate.passwordKey) String password,
  });
}

/// @nodoc
class __$UserCreateCopyWithImpl<$Res> implements _$UserCreateCopyWith<$Res> {
  __$UserCreateCopyWithImpl(this._self, this._then);

  final _UserCreate _self;
  final $Res Function(_UserCreate) _then;

  /// Create a copy of UserCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? fullName = freezed,
    Object? password = null,
  }) {
    return _then(
      _UserCreate(
        username:
            null == username
                ? _self.username
                : username // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _self.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        fullName:
            freezed == fullName
                ? _self.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                    as String?,
        password:
            null == password
                ? _self.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}
