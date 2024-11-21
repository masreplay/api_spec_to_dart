// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentAuthResponse _$StudentAuthResponseFromJson(Map<String, dynamic> json) {
  return _StudentAuthResponse.fromJson(json);
}

/// @nodoc
mixin _$StudentAuthResponse {
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
  @JsonKey(name: 'status')
  AuthenticationStatusResponse get status => throw _privateConstructorUsedError;

  /// Serializes this StudentAuthResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentAuthResponseCopyWith<StudentAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentAuthResponseCopyWith<$Res> {
  factory $StudentAuthResponseCopyWith(
          StudentAuthResponse value, $Res Function(StudentAuthResponse) then) =
      _$StudentAuthResponseCopyWithImpl<$Res, StudentAuthResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'refresh_expires_in') int refreshExpiresIn,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'user_role') UserRole userRole,
      @JsonKey(name: 'status') AuthenticationStatusResponse status});

  $AuthenticationStatusResponseCopyWith<$Res> get status;
}

/// @nodoc
class _$StudentAuthResponseCopyWithImpl<$Res, $Val extends StudentAuthResponse>
    implements $StudentAuthResponseCopyWith<$Res> {
  _$StudentAuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentAuthResponse
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
    Object? status = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatusResponse,
    ) as $Val);
  }

  /// Create a copy of StudentAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthenticationStatusResponseCopyWith<$Res> get status {
    return $AuthenticationStatusResponseCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentAuthResponseImplCopyWith<$Res>
    implements $StudentAuthResponseCopyWith<$Res> {
  factory _$$StudentAuthResponseImplCopyWith(_$StudentAuthResponseImpl value,
          $Res Function(_$StudentAuthResponseImpl) then) =
      __$$StudentAuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'refresh_expires_in') int refreshExpiresIn,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'user_role') UserRole userRole,
      @JsonKey(name: 'status') AuthenticationStatusResponse status});

  @override
  $AuthenticationStatusResponseCopyWith<$Res> get status;
}

/// @nodoc
class __$$StudentAuthResponseImplCopyWithImpl<$Res>
    extends _$StudentAuthResponseCopyWithImpl<$Res, _$StudentAuthResponseImpl>
    implements _$$StudentAuthResponseImplCopyWith<$Res> {
  __$$StudentAuthResponseImplCopyWithImpl(_$StudentAuthResponseImpl _value,
      $Res Function(_$StudentAuthResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentAuthResponse
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
    Object? status = null,
  }) {
    return _then(_$StudentAuthResponseImpl(
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatusResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentAuthResponseImpl extends _StudentAuthResponse {
  const _$StudentAuthResponseImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'expires_in') required this.expiresIn,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'refresh_expires_in') required this.refreshExpiresIn,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'user_role') this.userRole = UserRole.value0,
      @JsonKey(name: 'status') required this.status})
      : super._();

  factory _$StudentAuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentAuthResponseImplFromJson(json);

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
  @JsonKey(name: 'status')
  final AuthenticationStatusResponse status;

  @override
  String toString() {
    return 'StudentAuthResponse(accessToken: $accessToken, expiresIn: $expiresIn, refreshToken: $refreshToken, refreshExpiresIn: $refreshExpiresIn, userId: $userId, userRole: $userRole, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentAuthResponseImpl &&
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
                other.userRole == userRole) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, expiresIn,
      refreshToken, refreshExpiresIn, userId, userRole, status);

  /// Create a copy of StudentAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentAuthResponseImplCopyWith<_$StudentAuthResponseImpl> get copyWith =>
      __$$StudentAuthResponseImplCopyWithImpl<_$StudentAuthResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentAuthResponseImplToJson(
      this,
    );
  }
}

abstract class _StudentAuthResponse extends StudentAuthResponse {
  const factory _StudentAuthResponse(
      {@JsonKey(name: 'access_token') required final String accessToken,
      @JsonKey(name: 'expires_in') required final int expiresIn,
      @JsonKey(name: 'refresh_token') required final String refreshToken,
      @JsonKey(name: 'refresh_expires_in') required final int refreshExpiresIn,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'user_role') final UserRole userRole,
      @JsonKey(name: 'status')
      required final AuthenticationStatusResponse
          status}) = _$StudentAuthResponseImpl;
  const _StudentAuthResponse._() : super._();

  factory _StudentAuthResponse.fromJson(Map<String, dynamic> json) =
      _$StudentAuthResponseImpl.fromJson;

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
  @override
  @JsonKey(name: 'status')
  AuthenticationStatusResponse get status;

  /// Create a copy of StudentAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentAuthResponseImplCopyWith<_$StudentAuthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
