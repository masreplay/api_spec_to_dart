// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_reset_password_send_otp_email_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentResetPasswordSendOtpEmailQueries
    _$StudentResetPasswordSendOtpEmailQueriesFromJson(
        Map<String, dynamic> json) {
  return _StudentResetPasswordSendOtpEmailQueries.fromJson(json);
}

/// @nodoc
mixin _$StudentResetPasswordSendOtpEmailQueries {
  /// Email
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  /// Method
  @JsonKey(name: 'method')
  String get method => throw _privateConstructorUsedError;

  /// Serializes this StudentResetPasswordSendOtpEmailQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentResetPasswordSendOtpEmailQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentResetPasswordSendOtpEmailQueriesCopyWith<
          StudentResetPasswordSendOtpEmailQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentResetPasswordSendOtpEmailQueriesCopyWith<$Res> {
  factory $StudentResetPasswordSendOtpEmailQueriesCopyWith(
          StudentResetPasswordSendOtpEmailQueries value,
          $Res Function(StudentResetPasswordSendOtpEmailQueries) then) =
      _$StudentResetPasswordSendOtpEmailQueriesCopyWithImpl<$Res,
          StudentResetPasswordSendOtpEmailQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'method') String method});
}

/// @nodoc
class _$StudentResetPasswordSendOtpEmailQueriesCopyWithImpl<$Res,
        $Val extends StudentResetPasswordSendOtpEmailQueries>
    implements $StudentResetPasswordSendOtpEmailQueriesCopyWith<$Res> {
  _$StudentResetPasswordSendOtpEmailQueriesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentResetPasswordSendOtpEmailQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? method = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentResetPasswordSendOtpEmailQueriesImplCopyWith<$Res>
    implements $StudentResetPasswordSendOtpEmailQueriesCopyWith<$Res> {
  factory _$$StudentResetPasswordSendOtpEmailQueriesImplCopyWith(
          _$StudentResetPasswordSendOtpEmailQueriesImpl value,
          $Res Function(_$StudentResetPasswordSendOtpEmailQueriesImpl) then) =
      __$$StudentResetPasswordSendOtpEmailQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'method') String method});
}

/// @nodoc
class __$$StudentResetPasswordSendOtpEmailQueriesImplCopyWithImpl<$Res>
    extends _$StudentResetPasswordSendOtpEmailQueriesCopyWithImpl<$Res,
        _$StudentResetPasswordSendOtpEmailQueriesImpl>
    implements _$$StudentResetPasswordSendOtpEmailQueriesImplCopyWith<$Res> {
  __$$StudentResetPasswordSendOtpEmailQueriesImplCopyWithImpl(
      _$StudentResetPasswordSendOtpEmailQueriesImpl _value,
      $Res Function(_$StudentResetPasswordSendOtpEmailQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentResetPasswordSendOtpEmailQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? method = null,
  }) {
    return _then(_$StudentResetPasswordSendOtpEmailQueriesImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentResetPasswordSendOtpEmailQueriesImpl
    extends _StudentResetPasswordSendOtpEmailQueries {
  const _$StudentResetPasswordSendOtpEmailQueriesImpl(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'method') this.method = 'email'})
      : super._();

  factory _$StudentResetPasswordSendOtpEmailQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentResetPasswordSendOtpEmailQueriesImplFromJson(json);

  /// Email
  @override
  @JsonKey(name: 'email')
  final String email;

  /// Method
  @override
  @JsonKey(name: 'method')
  final String method;

  @override
  String toString() {
    return 'StudentResetPasswordSendOtpEmailQueries(email: $email, method: $method)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentResetPasswordSendOtpEmailQueriesImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, method);

  /// Create a copy of StudentResetPasswordSendOtpEmailQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentResetPasswordSendOtpEmailQueriesImplCopyWith<
          _$StudentResetPasswordSendOtpEmailQueriesImpl>
      get copyWith =>
          __$$StudentResetPasswordSendOtpEmailQueriesImplCopyWithImpl<
              _$StudentResetPasswordSendOtpEmailQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentResetPasswordSendOtpEmailQueriesImplToJson(
      this,
    );
  }
}

abstract class _StudentResetPasswordSendOtpEmailQueries
    extends StudentResetPasswordSendOtpEmailQueries {
  const factory _StudentResetPasswordSendOtpEmailQueries(
          {@JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'method') final String method}) =
      _$StudentResetPasswordSendOtpEmailQueriesImpl;
  const _StudentResetPasswordSendOtpEmailQueries._() : super._();

  factory _StudentResetPasswordSendOtpEmailQueries.fromJson(
          Map<String, dynamic> json) =
      _$StudentResetPasswordSendOtpEmailQueriesImpl.fromJson;

  /// Email
  @override
  @JsonKey(name: 'email')
  String get email;

  /// Method
  @override
  @JsonKey(name: 'method')
  String get method;

  /// Create a copy of StudentResetPasswordSendOtpEmailQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentResetPasswordSendOtpEmailQueriesImplCopyWith<
          _$StudentResetPasswordSendOtpEmailQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
