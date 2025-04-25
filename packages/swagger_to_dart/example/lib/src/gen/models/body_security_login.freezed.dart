// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_security_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodySecurityLogin {
  String? get grantType;
  String get username;
  String get password;
  String get scope;
  String? get clientId;
  String? get clientSecret;

  /// Create a copy of BodySecurityLogin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodySecurityLoginCopyWith<BodySecurityLogin> get copyWith =>
      _$BodySecurityLoginCopyWithImpl<BodySecurityLogin>(
          this as BodySecurityLogin, _$identity);

  /// Serializes this BodySecurityLogin to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodySecurityLogin &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, grantType, username, password,
      scope, clientId, clientSecret);

  @override
  String toString() {
    return 'BodySecurityLogin(grantType: $grantType, username: $username, password: $password, scope: $scope, clientId: $clientId, clientSecret: $clientSecret)';
  }
}

/// @nodoc
abstract mixin class $BodySecurityLoginCopyWith<$Res> {
  factory $BodySecurityLoginCopyWith(
          BodySecurityLogin value, $Res Function(BodySecurityLogin) _then) =
      _$BodySecurityLoginCopyWithImpl;
  @useResult
  $Res call(
      {String? grantType,
      String username,
      String password,
      String scope,
      String? clientId,
      String? clientSecret});
}

/// @nodoc
class _$BodySecurityLoginCopyWithImpl<$Res>
    implements $BodySecurityLoginCopyWith<$Res> {
  _$BodySecurityLoginCopyWithImpl(this._self, this._then);

  final BodySecurityLogin _self;
  final $Res Function(BodySecurityLogin) _then;

  /// Create a copy of BodySecurityLogin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = freezed,
    Object? username = null,
    Object? password = null,
    Object? scope = null,
    Object? clientId = freezed,
    Object? clientSecret = freezed,
  }) {
    return _then(_self.copyWith(
      grantType: freezed == grantType
          ? _self.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _self.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: freezed == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientSecret: freezed == clientSecret
          ? _self.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: Convertors.convertors)
class _BodySecurityLogin implements BodySecurityLogin {
  const _BodySecurityLogin(
      {required this.grantType,
      required this.username,
      required this.password,
      required this.scope,
      required this.clientId,
      required this.clientSecret});
  factory _BodySecurityLogin.fromJson(Map<String, dynamic> json) =>
      _$BodySecurityLoginFromJson(json);

  @override
  final String? grantType;
  @override
  final String username;
  @override
  final String password;
  @override
  final String scope;
  @override
  final String? clientId;
  @override
  final String? clientSecret;

  /// Create a copy of BodySecurityLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodySecurityLoginCopyWith<_BodySecurityLogin> get copyWith =>
      __$BodySecurityLoginCopyWithImpl<_BodySecurityLogin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodySecurityLoginToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodySecurityLogin &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, grantType, username, password,
      scope, clientId, clientSecret);

  @override
  String toString() {
    return 'BodySecurityLogin(grantType: $grantType, username: $username, password: $password, scope: $scope, clientId: $clientId, clientSecret: $clientSecret)';
  }
}

/// @nodoc
abstract mixin class _$BodySecurityLoginCopyWith<$Res>
    implements $BodySecurityLoginCopyWith<$Res> {
  factory _$BodySecurityLoginCopyWith(
          _BodySecurityLogin value, $Res Function(_BodySecurityLogin) _then) =
      __$BodySecurityLoginCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? grantType,
      String username,
      String password,
      String scope,
      String? clientId,
      String? clientSecret});
}

/// @nodoc
class __$BodySecurityLoginCopyWithImpl<$Res>
    implements _$BodySecurityLoginCopyWith<$Res> {
  __$BodySecurityLoginCopyWithImpl(this._self, this._then);

  final _BodySecurityLogin _self;
  final $Res Function(_BodySecurityLogin) _then;

  /// Create a copy of BodySecurityLogin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? grantType = freezed,
    Object? username = null,
    Object? password = null,
    Object? scope = null,
    Object? clientId = freezed,
    Object? clientSecret = freezed,
  }) {
    return _then(_BodySecurityLogin(
      grantType: freezed == grantType
          ? _self.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _self.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: freezed == clientId
          ? _self.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientSecret: freezed == clientSecret
          ? _self.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
