// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_login_login_access_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodyLoginLoginAccessToken {

/// Grant Type
@JsonKey(name: BodyLoginLoginAccessToken.grantTypeKey) String? get grantType;/// username
@JsonKey(name: BodyLoginLoginAccessToken.usernameKey) String get username;/// password
@JsonKey(name: BodyLoginLoginAccessToken.passwordKey) String get password;/// scope
@JsonKey(name: BodyLoginLoginAccessToken.scopeKey) String get scope;/// Client Id
@JsonKey(name: BodyLoginLoginAccessToken.clientIdKey) String? get clientId;/// Client Secret
@JsonKey(name: BodyLoginLoginAccessToken.clientSecretKey) String? get clientSecret;
/// Create a copy of BodyLoginLoginAccessToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BodyLoginLoginAccessTokenCopyWith<BodyLoginLoginAccessToken> get copyWith => _$BodyLoginLoginAccessTokenCopyWithImpl<BodyLoginLoginAccessToken>(this as BodyLoginLoginAccessToken, _$identity);

  /// Serializes this BodyLoginLoginAccessToken to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BodyLoginLoginAccessToken&&(identical(other.grantType, grantType) || other.grantType == grantType)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.scope, scope) || other.scope == scope)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.clientSecret, clientSecret) || other.clientSecret == clientSecret));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,grantType,username,password,scope,clientId,clientSecret);

@override
String toString() {
  return 'BodyLoginLoginAccessToken(grantType: $grantType, username: $username, password: $password, scope: $scope, clientId: $clientId, clientSecret: $clientSecret)';
}


}

/// @nodoc
abstract mixin class $BodyLoginLoginAccessTokenCopyWith<$Res>  {
  factory $BodyLoginLoginAccessTokenCopyWith(BodyLoginLoginAccessToken value, $Res Function(BodyLoginLoginAccessToken) _then) = _$BodyLoginLoginAccessTokenCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: BodyLoginLoginAccessToken.grantTypeKey) String? grantType,@JsonKey(name: BodyLoginLoginAccessToken.usernameKey) String username,@JsonKey(name: BodyLoginLoginAccessToken.passwordKey) String password,@JsonKey(name: BodyLoginLoginAccessToken.scopeKey) String scope,@JsonKey(name: BodyLoginLoginAccessToken.clientIdKey) String? clientId,@JsonKey(name: BodyLoginLoginAccessToken.clientSecretKey) String? clientSecret
});




}
/// @nodoc
class _$BodyLoginLoginAccessTokenCopyWithImpl<$Res>
    implements $BodyLoginLoginAccessTokenCopyWith<$Res> {
  _$BodyLoginLoginAccessTokenCopyWithImpl(this._self, this._then);

  final BodyLoginLoginAccessToken _self;
  final $Res Function(BodyLoginLoginAccessToken) _then;

/// Create a copy of BodyLoginLoginAccessToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? grantType = freezed,Object? username = null,Object? password = null,Object? scope = null,Object? clientId = freezed,Object? clientSecret = freezed,}) {
  return _then(_self.copyWith(
grantType: freezed == grantType ? _self.grantType : grantType // ignore: cast_nullable_to_non_nullable
as String?,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,scope: null == scope ? _self.scope : scope // ignore: cast_nullable_to_non_nullable
as String,clientId: freezed == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String?,clientSecret: freezed == clientSecret ? _self.clientSecret : clientSecret // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _BodyLoginLoginAccessToken extends BodyLoginLoginAccessToken {
  const _BodyLoginLoginAccessToken({@JsonKey(name: BodyLoginLoginAccessToken.grantTypeKey) required this.grantType, @JsonKey(name: BodyLoginLoginAccessToken.usernameKey) required this.username, @JsonKey(name: BodyLoginLoginAccessToken.passwordKey) required this.password, @JsonKey(name: BodyLoginLoginAccessToken.scopeKey) this.scope = '', @JsonKey(name: BodyLoginLoginAccessToken.clientIdKey) required this.clientId, @JsonKey(name: BodyLoginLoginAccessToken.clientSecretKey) required this.clientSecret}): super._();
  factory _BodyLoginLoginAccessToken.fromJson(Map<String, dynamic> json) => _$BodyLoginLoginAccessTokenFromJson(json);

/// Grant Type
@override@JsonKey(name: BodyLoginLoginAccessToken.grantTypeKey) final  String? grantType;
/// username
@override@JsonKey(name: BodyLoginLoginAccessToken.usernameKey) final  String username;
/// password
@override@JsonKey(name: BodyLoginLoginAccessToken.passwordKey) final  String password;
/// scope
@override@JsonKey(name: BodyLoginLoginAccessToken.scopeKey) final  String scope;
/// Client Id
@override@JsonKey(name: BodyLoginLoginAccessToken.clientIdKey) final  String? clientId;
/// Client Secret
@override@JsonKey(name: BodyLoginLoginAccessToken.clientSecretKey) final  String? clientSecret;

/// Create a copy of BodyLoginLoginAccessToken
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BodyLoginLoginAccessTokenCopyWith<_BodyLoginLoginAccessToken> get copyWith => __$BodyLoginLoginAccessTokenCopyWithImpl<_BodyLoginLoginAccessToken>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BodyLoginLoginAccessTokenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BodyLoginLoginAccessToken&&(identical(other.grantType, grantType) || other.grantType == grantType)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.scope, scope) || other.scope == scope)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.clientSecret, clientSecret) || other.clientSecret == clientSecret));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,grantType,username,password,scope,clientId,clientSecret);

@override
String toString() {
  return 'BodyLoginLoginAccessToken(grantType: $grantType, username: $username, password: $password, scope: $scope, clientId: $clientId, clientSecret: $clientSecret)';
}


}

/// @nodoc
abstract mixin class _$BodyLoginLoginAccessTokenCopyWith<$Res> implements $BodyLoginLoginAccessTokenCopyWith<$Res> {
  factory _$BodyLoginLoginAccessTokenCopyWith(_BodyLoginLoginAccessToken value, $Res Function(_BodyLoginLoginAccessToken) _then) = __$BodyLoginLoginAccessTokenCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: BodyLoginLoginAccessToken.grantTypeKey) String? grantType,@JsonKey(name: BodyLoginLoginAccessToken.usernameKey) String username,@JsonKey(name: BodyLoginLoginAccessToken.passwordKey) String password,@JsonKey(name: BodyLoginLoginAccessToken.scopeKey) String scope,@JsonKey(name: BodyLoginLoginAccessToken.clientIdKey) String? clientId,@JsonKey(name: BodyLoginLoginAccessToken.clientSecretKey) String? clientSecret
});




}
/// @nodoc
class __$BodyLoginLoginAccessTokenCopyWithImpl<$Res>
    implements _$BodyLoginLoginAccessTokenCopyWith<$Res> {
  __$BodyLoginLoginAccessTokenCopyWithImpl(this._self, this._then);

  final _BodyLoginLoginAccessToken _self;
  final $Res Function(_BodyLoginLoginAccessToken) _then;

/// Create a copy of BodyLoginLoginAccessToken
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? grantType = freezed,Object? username = null,Object? password = null,Object? scope = null,Object? clientId = freezed,Object? clientSecret = freezed,}) {
  return _then(_BodyLoginLoginAccessToken(
grantType: freezed == grantType ? _self.grantType : grantType // ignore: cast_nullable_to_non_nullable
as String?,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,scope: null == scope ? _self.scope : scope // ignore: cast_nullable_to_non_nullable
as String,clientId: freezed == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String?,clientSecret: freezed == clientSecret ? _self.clientSecret : clientSecret // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
