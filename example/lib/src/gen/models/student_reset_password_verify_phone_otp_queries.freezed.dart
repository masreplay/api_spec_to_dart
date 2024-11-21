// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_reset_password_verify_phone_otp_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentResetPasswordVerifyPhoneOtpQueries
    _$StudentResetPasswordVerifyPhoneOtpQueriesFromJson(
        Map<String, dynamic> json) {
  return _StudentResetPasswordVerifyPhoneOtpQueries.fromJson(json);
}

/// @nodoc
mixin _$StudentResetPasswordVerifyPhoneOtpQueries {
  /// Phone
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;

  /// Method
  @JsonKey(name: 'method')
  String get method => throw _privateConstructorUsedError;

  /// Otp
  @JsonKey(name: 'otp')
  String get otp => throw _privateConstructorUsedError;

  /// Serializes this StudentResetPasswordVerifyPhoneOtpQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentResetPasswordVerifyPhoneOtpQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentResetPasswordVerifyPhoneOtpQueriesCopyWith<
          StudentResetPasswordVerifyPhoneOtpQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentResetPasswordVerifyPhoneOtpQueriesCopyWith<$Res> {
  factory $StudentResetPasswordVerifyPhoneOtpQueriesCopyWith(
          StudentResetPasswordVerifyPhoneOtpQueries value,
          $Res Function(StudentResetPasswordVerifyPhoneOtpQueries) then) =
      _$StudentResetPasswordVerifyPhoneOtpQueriesCopyWithImpl<$Res,
          StudentResetPasswordVerifyPhoneOtpQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'method') String method,
      @JsonKey(name: 'otp') String otp});
}

/// @nodoc
class _$StudentResetPasswordVerifyPhoneOtpQueriesCopyWithImpl<$Res,
        $Val extends StudentResetPasswordVerifyPhoneOtpQueries>
    implements $StudentResetPasswordVerifyPhoneOtpQueriesCopyWith<$Res> {
  _$StudentResetPasswordVerifyPhoneOtpQueriesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentResetPasswordVerifyPhoneOtpQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? method = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentResetPasswordVerifyPhoneOtpQueriesImplCopyWith<$Res>
    implements $StudentResetPasswordVerifyPhoneOtpQueriesCopyWith<$Res> {
  factory _$$StudentResetPasswordVerifyPhoneOtpQueriesImplCopyWith(
          _$StudentResetPasswordVerifyPhoneOtpQueriesImpl value,
          $Res Function(_$StudentResetPasswordVerifyPhoneOtpQueriesImpl) then) =
      __$$StudentResetPasswordVerifyPhoneOtpQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'method') String method,
      @JsonKey(name: 'otp') String otp});
}

/// @nodoc
class __$$StudentResetPasswordVerifyPhoneOtpQueriesImplCopyWithImpl<$Res>
    extends _$StudentResetPasswordVerifyPhoneOtpQueriesCopyWithImpl<$Res,
        _$StudentResetPasswordVerifyPhoneOtpQueriesImpl>
    implements _$$StudentResetPasswordVerifyPhoneOtpQueriesImplCopyWith<$Res> {
  __$$StudentResetPasswordVerifyPhoneOtpQueriesImplCopyWithImpl(
      _$StudentResetPasswordVerifyPhoneOtpQueriesImpl _value,
      $Res Function(_$StudentResetPasswordVerifyPhoneOtpQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentResetPasswordVerifyPhoneOtpQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? method = null,
    Object? otp = null,
  }) {
    return _then(_$StudentResetPasswordVerifyPhoneOtpQueriesImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentResetPasswordVerifyPhoneOtpQueriesImpl
    extends _StudentResetPasswordVerifyPhoneOtpQueries {
  const _$StudentResetPasswordVerifyPhoneOtpQueriesImpl(
      {@JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'method') this.method = 'sms',
      @JsonKey(name: 'otp') required this.otp})
      : super._();

  factory _$StudentResetPasswordVerifyPhoneOtpQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentResetPasswordVerifyPhoneOtpQueriesImplFromJson(json);

  /// Phone
  @override
  @JsonKey(name: 'phone')
  final String phone;

  /// Method
  @override
  @JsonKey(name: 'method')
  final String method;

  /// Otp
  @override
  @JsonKey(name: 'otp')
  final String otp;

  @override
  String toString() {
    return 'StudentResetPasswordVerifyPhoneOtpQueries(phone: $phone, method: $method, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentResetPasswordVerifyPhoneOtpQueriesImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, method, otp);

  /// Create a copy of StudentResetPasswordVerifyPhoneOtpQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentResetPasswordVerifyPhoneOtpQueriesImplCopyWith<
          _$StudentResetPasswordVerifyPhoneOtpQueriesImpl>
      get copyWith =>
          __$$StudentResetPasswordVerifyPhoneOtpQueriesImplCopyWithImpl<
                  _$StudentResetPasswordVerifyPhoneOtpQueriesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentResetPasswordVerifyPhoneOtpQueriesImplToJson(
      this,
    );
  }
}

abstract class _StudentResetPasswordVerifyPhoneOtpQueries
    extends StudentResetPasswordVerifyPhoneOtpQueries {
  const factory _StudentResetPasswordVerifyPhoneOtpQueries(
          {@JsonKey(name: 'phone') required final String phone,
          @JsonKey(name: 'method') final String method,
          @JsonKey(name: 'otp') required final String otp}) =
      _$StudentResetPasswordVerifyPhoneOtpQueriesImpl;
  const _StudentResetPasswordVerifyPhoneOtpQueries._() : super._();

  factory _StudentResetPasswordVerifyPhoneOtpQueries.fromJson(
          Map<String, dynamic> json) =
      _$StudentResetPasswordVerifyPhoneOtpQueriesImpl.fromJson;

  /// Phone
  @override
  @JsonKey(name: 'phone')
  String get phone;

  /// Method
  @override
  @JsonKey(name: 'method')
  String get method;

  /// Otp
  @override
  @JsonKey(name: 'otp')
  String get otp;

  /// Create a copy of StudentResetPasswordVerifyPhoneOtpQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentResetPasswordVerifyPhoneOtpQueriesImplCopyWith<
          _$StudentResetPasswordVerifyPhoneOtpQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
