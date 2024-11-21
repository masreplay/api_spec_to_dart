// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LecturerAuthResponse _$LecturerAuthResponseFromJson(Map<String, dynamic> json) {
  return _LecturerAuthResponse.fromJson(json);
}

/// @nodoc
mixin _$LecturerAuthResponse {
  /// Access Token
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;

  /// Expires In
  @JsonKey(name: 'expires_in')
  int get expiresIn => throw _privateConstructorUsedError;

  /// Refresh Token
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Refresh Expires In
  @JsonKey(name: 'refresh_expires_in')
  int get refreshExpiresIn => throw _privateConstructorUsedError;

  /// User Id
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_role')
  UserRole get userRole => throw _privateConstructorUsedError;

  /// Serializes this LecturerAuthResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LecturerAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LecturerAuthResponseCopyWith<LecturerAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerAuthResponseCopyWith<$Res> {
  factory $LecturerAuthResponseCopyWith(LecturerAuthResponse value,
          $Res Function(LecturerAuthResponse) then) =
      _$LecturerAuthResponseCopyWithImpl<$Res, LecturerAuthResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'refresh_expires_in') int refreshExpiresIn,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'user_role') UserRole userRole});

  $UserRoleCopyWith<$Res> get userRole;
}

/// @nodoc
class _$LecturerAuthResponseCopyWithImpl<$Res,
        $Val extends LecturerAuthResponse>
    implements $LecturerAuthResponseCopyWith<$Res> {
  _$LecturerAuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LecturerAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? expiresIn = null,
    Object? refreshToken = null,
    Object? refreshExpiresIn = null,
    Object? userId = null,
    Object? userRole = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshExpiresIn: null == refreshExpiresIn
          ? _value.refreshExpiresIn
          : refreshExpiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ) as $Val);
  }

  /// Create a copy of LecturerAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRoleCopyWith<$Res> get userRole {
    return $UserRoleCopyWith<$Res>(_value.userRole, (value) {
      return _then(_value.copyWith(userRole: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LecturerAuthResponseImplCopyWith<$Res>
    implements $LecturerAuthResponseCopyWith<$Res> {
  factory _$$LecturerAuthResponseImplCopyWith(_$LecturerAuthResponseImpl value,
          $Res Function(_$LecturerAuthResponseImpl) then) =
      __$$LecturerAuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'refresh_expires_in') int refreshExpiresIn,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'user_role') UserRole userRole});

  @override
  $UserRoleCopyWith<$Res> get userRole;
}

/// @nodoc
class __$$LecturerAuthResponseImplCopyWithImpl<$Res>
    extends _$LecturerAuthResponseCopyWithImpl<$Res, _$LecturerAuthResponseImpl>
    implements _$$LecturerAuthResponseImplCopyWith<$Res> {
  __$$LecturerAuthResponseImplCopyWithImpl(_$LecturerAuthResponseImpl _value,
      $Res Function(_$LecturerAuthResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LecturerAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? expiresIn = null,
    Object? refreshToken = null,
    Object? refreshExpiresIn = null,
    Object? userId = null,
    Object? userRole = null,
  }) {
    return _then(_$LecturerAuthResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshExpiresIn: null == refreshExpiresIn
          ? _value.refreshExpiresIn
          : refreshExpiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$LecturerAuthResponseImpl extends _LecturerAuthResponse {
  const _$LecturerAuthResponseImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'expires_in') required this.expiresIn,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'refresh_expires_in') required this.refreshExpiresIn,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'user_role') required this.userRole = 1})
      : super._();

  factory _$LecturerAuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LecturerAuthResponseImplFromJson(json);

  /// Access Token
  @override
  @JsonKey(name: 'access_token')
  final String accessToken;

  /// Expires In
  @override
  @JsonKey(name: 'expires_in')
  final int expiresIn;

  /// Refresh Token
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  /// Refresh Expires In
  @override
  @JsonKey(name: 'refresh_expires_in')
  final int refreshExpiresIn;

  /// User Id
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'user_role')
  final UserRole userRole;

  @override
  String toString() {
    return 'LecturerAuthResponse(accessToken: $accessToken, expiresIn: $expiresIn, refreshToken: $refreshToken, refreshExpiresIn: $refreshExpiresIn, userId: $userId, userRole: $userRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerAuthResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.refreshExpiresIn, refreshExpiresIn) ||
                other.refreshExpiresIn == refreshExpiresIn) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, expiresIn,
      refreshToken, refreshExpiresIn, userId, userRole);

  /// Create a copy of LecturerAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerAuthResponseImplCopyWith<_$LecturerAuthResponseImpl>
      get copyWith =>
          __$$LecturerAuthResponseImplCopyWithImpl<_$LecturerAuthResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerAuthResponseImplToJson(
      this,
    );
  }
}

abstract class _LecturerAuthResponse extends LecturerAuthResponse {
  const factory _LecturerAuthResponse(
      {@JsonKey(name: 'access_token') required final String accessToken,
      @JsonKey(name: 'expires_in') required final int expiresIn,
      @JsonKey(name: 'refresh_token') required final String refreshToken,
      @JsonKey(name: 'refresh_expires_in') required final int refreshExpiresIn,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'user_role')
      required final UserRole userRole}) = _$LecturerAuthResponseImpl;
  const _LecturerAuthResponse._() : super._();

  factory _LecturerAuthResponse.fromJson(Map<String, dynamic> json) =
      _$LecturerAuthResponseImpl.fromJson;

  /// Access Token
  @override
  @JsonKey(name: 'access_token')
  String get accessToken;

  /// Expires In
  @override
  @JsonKey(name: 'expires_in')
  int get expiresIn;

  /// Refresh Token
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  /// Refresh Expires In
  @override
  @JsonKey(name: 'refresh_expires_in')
  int get refreshExpiresIn;

  /// User Id
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'user_role')
  UserRole get userRole;

  /// Create a copy of LecturerAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LecturerAuthResponseImplCopyWith<_$LecturerAuthResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
