// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_reset_password_send_otp_by_phone_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentResetPasswordSendOtpByPhoneQueries
    _$StudentResetPasswordSendOtpByPhoneQueriesFromJson(
        Map<String, dynamic> json) {
  return _StudentResetPasswordSendOtpByPhoneQueries.fromJson(json);
}

/// @nodoc
mixin _$StudentResetPasswordSendOtpByPhoneQueries {
  /// Phone Number
  @JsonKey(name: 'phoneNumber')
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Method
  @JsonKey(name: 'method')
  String get method => throw _privateConstructorUsedError;

  /// Serializes this StudentResetPasswordSendOtpByPhoneQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentResetPasswordSendOtpByPhoneQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentResetPasswordSendOtpByPhoneQueriesCopyWith<
          StudentResetPasswordSendOtpByPhoneQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentResetPasswordSendOtpByPhoneQueriesCopyWith<$Res> {
  factory $StudentResetPasswordSendOtpByPhoneQueriesCopyWith(
          StudentResetPasswordSendOtpByPhoneQueries value,
          $Res Function(StudentResetPasswordSendOtpByPhoneQueries) then) =
      _$StudentResetPasswordSendOtpByPhoneQueriesCopyWithImpl<$Res,
          StudentResetPasswordSendOtpByPhoneQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'phoneNumber') String phoneNumber,
      @JsonKey(name: 'method') String method});
}

/// @nodoc
class _$StudentResetPasswordSendOtpByPhoneQueriesCopyWithImpl<$Res,
        $Val extends StudentResetPasswordSendOtpByPhoneQueries>
    implements $StudentResetPasswordSendOtpByPhoneQueriesCopyWith<$Res> {
  _$StudentResetPasswordSendOtpByPhoneQueriesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentResetPasswordSendOtpByPhoneQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? method = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentResetPasswordSendOtpByPhoneQueriesImplCopyWith<$Res>
    implements $StudentResetPasswordSendOtpByPhoneQueriesCopyWith<$Res> {
  factory _$$StudentResetPasswordSendOtpByPhoneQueriesImplCopyWith(
          _$StudentResetPasswordSendOtpByPhoneQueriesImpl value,
          $Res Function(_$StudentResetPasswordSendOtpByPhoneQueriesImpl) then) =
      __$$StudentResetPasswordSendOtpByPhoneQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'phoneNumber') String phoneNumber,
      @JsonKey(name: 'method') String method});
}

/// @nodoc
class __$$StudentResetPasswordSendOtpByPhoneQueriesImplCopyWithImpl<$Res>
    extends _$StudentResetPasswordSendOtpByPhoneQueriesCopyWithImpl<$Res,
        _$StudentResetPasswordSendOtpByPhoneQueriesImpl>
    implements _$$StudentResetPasswordSendOtpByPhoneQueriesImplCopyWith<$Res> {
  __$$StudentResetPasswordSendOtpByPhoneQueriesImplCopyWithImpl(
      _$StudentResetPasswordSendOtpByPhoneQueriesImpl _value,
      $Res Function(_$StudentResetPasswordSendOtpByPhoneQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentResetPasswordSendOtpByPhoneQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? method = null,
  }) {
    return _then(_$StudentResetPasswordSendOtpByPhoneQueriesImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
class _$StudentResetPasswordSendOtpByPhoneQueriesImpl
    extends _StudentResetPasswordSendOtpByPhoneQueries {
  const _$StudentResetPasswordSendOtpByPhoneQueriesImpl(
      {@JsonKey(name: 'phoneNumber') required this.phoneNumber,
      @JsonKey(name: 'method') this.method = 'sms'})
      : super._();

  factory _$StudentResetPasswordSendOtpByPhoneQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentResetPasswordSendOtpByPhoneQueriesImplFromJson(json);

  /// Phone Number
  @override
  @JsonKey(name: 'phoneNumber')
  final String phoneNumber;

  /// Method
  @override
  @JsonKey(name: 'method')
  final String method;

  @override
  String toString() {
    return 'StudentResetPasswordSendOtpByPhoneQueries(phoneNumber: $phoneNumber, method: $method)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentResetPasswordSendOtpByPhoneQueriesImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, method);

  /// Create a copy of StudentResetPasswordSendOtpByPhoneQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentResetPasswordSendOtpByPhoneQueriesImplCopyWith<
          _$StudentResetPasswordSendOtpByPhoneQueriesImpl>
      get copyWith =>
          __$$StudentResetPasswordSendOtpByPhoneQueriesImplCopyWithImpl<
                  _$StudentResetPasswordSendOtpByPhoneQueriesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentResetPasswordSendOtpByPhoneQueriesImplToJson(
      this,
    );
  }
}

abstract class _StudentResetPasswordSendOtpByPhoneQueries
    extends StudentResetPasswordSendOtpByPhoneQueries {
  const factory _StudentResetPasswordSendOtpByPhoneQueries(
          {@JsonKey(name: 'phoneNumber') required final String phoneNumber,
          @JsonKey(name: 'method') final String method}) =
      _$StudentResetPasswordSendOtpByPhoneQueriesImpl;
  const _StudentResetPasswordSendOtpByPhoneQueries._() : super._();

  factory _StudentResetPasswordSendOtpByPhoneQueries.fromJson(
          Map<String, dynamic> json) =
      _$StudentResetPasswordSendOtpByPhoneQueriesImpl.fromJson;

  /// Phone Number
  @override
  @JsonKey(name: 'phoneNumber')
  String get phoneNumber;

  /// Method
  @override
  @JsonKey(name: 'method')
  String get method;

  /// Create a copy of StudentResetPasswordSendOtpByPhoneQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentResetPasswordSendOtpByPhoneQueriesImplCopyWith<
          _$StudentResetPasswordSendOtpByPhoneQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
