// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationStatusResponse _$AuthenticationStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationStatusResponse {
  @JsonKey(name: 'settings')
  AuthenticationStatusOptionsResponse get settings =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_temporary_password_changed')
  bool get isTemporaryPasswordChanged => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_account_verified')
  bool get isAccountVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_ekyc_verified')
  bool get isEkycVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_enrollment_payment_verified')
  bool get isEnrollmentPaymentVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration_request_status')
  RegistrationRequestStatusResponse get registrationRequestStatus =>
      throw _privateConstructorUsedError;

  /// Serializes this AuthenticationStatusResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticationStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticationStatusResponseCopyWith<AuthenticationStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStatusResponseCopyWith<$Res> {
  factory $AuthenticationStatusResponseCopyWith(
          AuthenticationStatusResponse value,
          $Res Function(AuthenticationStatusResponse) then) =
      _$AuthenticationStatusResponseCopyWithImpl<$Res,
          AuthenticationStatusResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'settings') AuthenticationStatusOptionsResponse settings,
      @JsonKey(name: 'is_temporary_password_changed')
      bool isTemporaryPasswordChanged,
      @JsonKey(name: 'is_account_verified') bool isAccountVerified,
      @JsonKey(name: 'is_ekyc_verified') bool isEkycVerified,
      @JsonKey(name: 'is_enrollment_payment_verified')
      bool isEnrollmentPaymentVerified,
      @JsonKey(name: 'registration_request_status')
      RegistrationRequestStatusResponse registrationRequestStatus});

  $AuthenticationStatusOptionsResponseCopyWith<$Res> get settings;
  $RegistrationRequestStatusResponseCopyWith<$Res>
      get registrationRequestStatus;
}

/// @nodoc
class _$AuthenticationStatusResponseCopyWithImpl<$Res,
        $Val extends AuthenticationStatusResponse>
    implements $AuthenticationStatusResponseCopyWith<$Res> {
  _$AuthenticationStatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? isTemporaryPasswordChanged = null,
    Object? isAccountVerified = null,
    Object? isEkycVerified = null,
    Object? isEnrollmentPaymentVerified = null,
    Object? registrationRequestStatus = null,
  }) {
    return _then(_value.copyWith(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatusOptionsResponse,
      isTemporaryPasswordChanged: null == isTemporaryPasswordChanged
          ? _value.isTemporaryPasswordChanged
          : isTemporaryPasswordChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccountVerified: null == isAccountVerified
          ? _value.isAccountVerified
          : isAccountVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isEkycVerified: null == isEkycVerified
          ? _value.isEkycVerified
          : isEkycVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnrollmentPaymentVerified: null == isEnrollmentPaymentVerified
          ? _value.isEnrollmentPaymentVerified
          : isEnrollmentPaymentVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      registrationRequestStatus: null == registrationRequestStatus
          ? _value.registrationRequestStatus
          : registrationRequestStatus // ignore: cast_nullable_to_non_nullable
              as RegistrationRequestStatusResponse,
    ) as $Val);
  }

  /// Create a copy of AuthenticationStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthenticationStatusOptionsResponseCopyWith<$Res> get settings {
    return $AuthenticationStatusOptionsResponseCopyWith<$Res>(_value.settings,
        (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }

  /// Create a copy of AuthenticationStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegistrationRequestStatusResponseCopyWith<$Res>
      get registrationRequestStatus {
    return $RegistrationRequestStatusResponseCopyWith<$Res>(
        _value.registrationRequestStatus, (value) {
      return _then(_value.copyWith(registrationRequestStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthenticationStatusResponseImplCopyWith<$Res>
    implements $AuthenticationStatusResponseCopyWith<$Res> {
  factory _$$AuthenticationStatusResponseImplCopyWith(
          _$AuthenticationStatusResponseImpl value,
          $Res Function(_$AuthenticationStatusResponseImpl) then) =
      __$$AuthenticationStatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'settings') AuthenticationStatusOptionsResponse settings,
      @JsonKey(name: 'is_temporary_password_changed')
      bool isTemporaryPasswordChanged,
      @JsonKey(name: 'is_account_verified') bool isAccountVerified,
      @JsonKey(name: 'is_ekyc_verified') bool isEkycVerified,
      @JsonKey(name: 'is_enrollment_payment_verified')
      bool isEnrollmentPaymentVerified,
      @JsonKey(name: 'registration_request_status')
      RegistrationRequestStatusResponse registrationRequestStatus});

  @override
  $AuthenticationStatusOptionsResponseCopyWith<$Res> get settings;
  @override
  $RegistrationRequestStatusResponseCopyWith<$Res>
      get registrationRequestStatus;
}

/// @nodoc
class __$$AuthenticationStatusResponseImplCopyWithImpl<$Res>
    extends _$AuthenticationStatusResponseCopyWithImpl<$Res,
        _$AuthenticationStatusResponseImpl>
    implements _$$AuthenticationStatusResponseImplCopyWith<$Res> {
  __$$AuthenticationStatusResponseImplCopyWithImpl(
      _$AuthenticationStatusResponseImpl _value,
      $Res Function(_$AuthenticationStatusResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? isTemporaryPasswordChanged = null,
    Object? isAccountVerified = null,
    Object? isEkycVerified = null,
    Object? isEnrollmentPaymentVerified = null,
    Object? registrationRequestStatus = null,
  }) {
    return _then(_$AuthenticationStatusResponseImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatusOptionsResponse,
      isTemporaryPasswordChanged: null == isTemporaryPasswordChanged
          ? _value.isTemporaryPasswordChanged
          : isTemporaryPasswordChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccountVerified: null == isAccountVerified
          ? _value.isAccountVerified
          : isAccountVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isEkycVerified: null == isEkycVerified
          ? _value.isEkycVerified
          : isEkycVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnrollmentPaymentVerified: null == isEnrollmentPaymentVerified
          ? _value.isEnrollmentPaymentVerified
          : isEnrollmentPaymentVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      registrationRequestStatus: null == registrationRequestStatus
          ? _value.registrationRequestStatus
          : registrationRequestStatus // ignore: cast_nullable_to_non_nullable
              as RegistrationRequestStatusResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationStatusResponseImpl
    implements _AuthenticationStatusResponse {
  const _$AuthenticationStatusResponseImpl(
      {@JsonKey(name: 'settings') required this.settings,
      @JsonKey(name: 'is_temporary_password_changed')
      required this.isTemporaryPasswordChanged,
      @JsonKey(name: 'is_account_verified') required this.isAccountVerified,
      @JsonKey(name: 'is_ekyc_verified') required this.isEkycVerified,
      @JsonKey(name: 'is_enrollment_payment_verified')
      required this.isEnrollmentPaymentVerified,
      @JsonKey(name: 'registration_request_status')
      required this.registrationRequestStatus});

  factory _$AuthenticationStatusResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AuthenticationStatusResponseImplFromJson(json);

  @override
  @JsonKey(name: 'settings')
  final AuthenticationStatusOptionsResponse settings;
  @override
  @JsonKey(name: 'is_temporary_password_changed')
  final bool isTemporaryPasswordChanged;
  @override
  @JsonKey(name: 'is_account_verified')
  final bool isAccountVerified;
  @override
  @JsonKey(name: 'is_ekyc_verified')
  final bool isEkycVerified;
  @override
  @JsonKey(name: 'is_enrollment_payment_verified')
  final bool isEnrollmentPaymentVerified;
  @override
  @JsonKey(name: 'registration_request_status')
  final RegistrationRequestStatusResponse registrationRequestStatus;

  @override
  String toString() {
    return 'AuthenticationStatusResponse(settings: $settings, isTemporaryPasswordChanged: $isTemporaryPasswordChanged, isAccountVerified: $isAccountVerified, isEkycVerified: $isEkycVerified, isEnrollmentPaymentVerified: $isEnrollmentPaymentVerified, registrationRequestStatus: $registrationRequestStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStatusResponseImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.isTemporaryPasswordChanged,
                    isTemporaryPasswordChanged) ||
                other.isTemporaryPasswordChanged ==
                    isTemporaryPasswordChanged) &&
            (identical(other.isAccountVerified, isAccountVerified) ||
                other.isAccountVerified == isAccountVerified) &&
            (identical(other.isEkycVerified, isEkycVerified) ||
                other.isEkycVerified == isEkycVerified) &&
            (identical(other.isEnrollmentPaymentVerified,
                    isEnrollmentPaymentVerified) ||
                other.isEnrollmentPaymentVerified ==
                    isEnrollmentPaymentVerified) &&
            (identical(other.registrationRequestStatus,
                    registrationRequestStatus) ||
                other.registrationRequestStatus == registrationRequestStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      settings,
      isTemporaryPasswordChanged,
      isAccountVerified,
      isEkycVerified,
      isEnrollmentPaymentVerified,
      registrationRequestStatus);

  /// Create a copy of AuthenticationStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStatusResponseImplCopyWith<
          _$AuthenticationStatusResponseImpl>
      get copyWith => __$$AuthenticationStatusResponseImplCopyWithImpl<
          _$AuthenticationStatusResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationStatusResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationStatusResponse
    implements AuthenticationStatusResponse {
  const factory _AuthenticationStatusResponse(
      {@JsonKey(name: 'settings')
      required final AuthenticationStatusOptionsResponse settings,
      @JsonKey(name: 'is_temporary_password_changed')
      required final bool isTemporaryPasswordChanged,
      @JsonKey(name: 'is_account_verified')
      required final bool isAccountVerified,
      @JsonKey(name: 'is_ekyc_verified') required final bool isEkycVerified,
      @JsonKey(name: 'is_enrollment_payment_verified')
      required final bool isEnrollmentPaymentVerified,
      @JsonKey(name: 'registration_request_status')
      required final RegistrationRequestStatusResponse
          registrationRequestStatus}) = _$AuthenticationStatusResponseImpl;

  factory _AuthenticationStatusResponse.fromJson(Map<String, dynamic> json) =
      _$AuthenticationStatusResponseImpl.fromJson;

  @override
  @JsonKey(name: 'settings')
  AuthenticationStatusOptionsResponse get settings;
  @override
  @JsonKey(name: 'is_temporary_password_changed')
  bool get isTemporaryPasswordChanged;
  @override
  @JsonKey(name: 'is_account_verified')
  bool get isAccountVerified;
  @override
  @JsonKey(name: 'is_ekyc_verified')
  bool get isEkycVerified;
  @override
  @JsonKey(name: 'is_enrollment_payment_verified')
  bool get isEnrollmentPaymentVerified;
  @override
  @JsonKey(name: 'registration_request_status')
  RegistrationRequestStatusResponse get registrationRequestStatus;

  /// Create a copy of AuthenticationStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationStatusResponseImplCopyWith<
          _$AuthenticationStatusResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
