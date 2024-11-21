// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_otp_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyEmailOtpQueries _$VerifyEmailOtpQueriesFromJson(
    Map<String, dynamic> json) {
  return _VerifyEmailOtpQueries.fromJson(json);
}

/// @nodoc
mixin _$VerifyEmailOtpQueries {
  /// Email
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  /// Method
  @JsonKey(name: 'method')
  String get method => throw _privateConstructorUsedError;

  /// Otp
  @JsonKey(name: 'otp')
  String get otp => throw _privateConstructorUsedError;

  /// Serializes this VerifyEmailOtpQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyEmailOtpQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyEmailOtpQueriesCopyWith<VerifyEmailOtpQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailOtpQueriesCopyWith<$Res> {
  factory $VerifyEmailOtpQueriesCopyWith(VerifyEmailOtpQueries value,
          $Res Function(VerifyEmailOtpQueries) then) =
      _$VerifyEmailOtpQueriesCopyWithImpl<$Res, VerifyEmailOtpQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'method') String method,
      @JsonKey(name: 'otp') String otp});
}

/// @nodoc
class _$VerifyEmailOtpQueriesCopyWithImpl<$Res,
        $Val extends VerifyEmailOtpQueries>
    implements $VerifyEmailOtpQueriesCopyWith<$Res> {
  _$VerifyEmailOtpQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyEmailOtpQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? method = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
abstract class _$$VerifyEmailOtpQueriesImplCopyWith<$Res>
    implements $VerifyEmailOtpQueriesCopyWith<$Res> {
  factory _$$VerifyEmailOtpQueriesImplCopyWith(
          _$VerifyEmailOtpQueriesImpl value,
          $Res Function(_$VerifyEmailOtpQueriesImpl) then) =
      __$$VerifyEmailOtpQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'method') String method,
      @JsonKey(name: 'otp') String otp});
}

/// @nodoc
class __$$VerifyEmailOtpQueriesImplCopyWithImpl<$Res>
    extends _$VerifyEmailOtpQueriesCopyWithImpl<$Res,
        _$VerifyEmailOtpQueriesImpl>
    implements _$$VerifyEmailOtpQueriesImplCopyWith<$Res> {
  __$$VerifyEmailOtpQueriesImplCopyWithImpl(_$VerifyEmailOtpQueriesImpl _value,
      $Res Function(_$VerifyEmailOtpQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyEmailOtpQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? method = null,
    Object? otp = null,
  }) {
    return _then(_$VerifyEmailOtpQueriesImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$VerifyEmailOtpQueriesImpl extends _VerifyEmailOtpQueries {
  const _$VerifyEmailOtpQueriesImpl(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'method') required this.method = 'email',
      @JsonKey(name: 'otp') required this.otp})
      : super._();

  factory _$VerifyEmailOtpQueriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyEmailOtpQueriesImplFromJson(json);

  /// Email
  @override
  @JsonKey(name: 'email')
  final String email;

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
    return 'VerifyEmailOtpQueries(email: $email, method: $method, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyEmailOtpQueriesImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, method, otp);

  /// Create a copy of VerifyEmailOtpQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyEmailOtpQueriesImplCopyWith<_$VerifyEmailOtpQueriesImpl>
      get copyWith => __$$VerifyEmailOtpQueriesImplCopyWithImpl<
          _$VerifyEmailOtpQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyEmailOtpQueriesImplToJson(
      this,
    );
  }
}

abstract class _VerifyEmailOtpQueries extends VerifyEmailOtpQueries {
  const factory _VerifyEmailOtpQueries(
          {@JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'method') required final String method,
          @JsonKey(name: 'otp') required final String otp}) =
      _$VerifyEmailOtpQueriesImpl;
  const _VerifyEmailOtpQueries._() : super._();

  factory _VerifyEmailOtpQueries.fromJson(Map<String, dynamic> json) =
      _$VerifyEmailOtpQueriesImpl.fromJson;

  /// Email
  @override
  @JsonKey(name: 'email')
  String get email;

  /// Method
  @override
  @JsonKey(name: 'method')
  String get method;

  /// Otp
  @override
  @JsonKey(name: 'otp')
  String get otp;

  /// Create a copy of VerifyEmailOtpQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyEmailOtpQueriesImplCopyWith<_$VerifyEmailOtpQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
