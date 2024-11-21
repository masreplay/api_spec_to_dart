// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_by_phone_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendOtpByPhoneQueries _$SendOtpByPhoneQueriesFromJson(
    Map<String, dynamic> json) {
  return _SendOtpByPhoneQueries.fromJson(json);
}

/// @nodoc
mixin _$SendOtpByPhoneQueries {
  /// Phone Number
  @JsonKey(name: 'phoneNumber')
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Method
  @JsonKey(name: 'method')
  String get method => throw _privateConstructorUsedError;

  /// Serializes this SendOtpByPhoneQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendOtpByPhoneQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendOtpByPhoneQueriesCopyWith<SendOtpByPhoneQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpByPhoneQueriesCopyWith<$Res> {
  factory $SendOtpByPhoneQueriesCopyWith(SendOtpByPhoneQueries value,
          $Res Function(SendOtpByPhoneQueries) then) =
      _$SendOtpByPhoneQueriesCopyWithImpl<$Res, SendOtpByPhoneQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'phoneNumber') String phoneNumber,
      @JsonKey(name: 'method') String method});
}

/// @nodoc
class _$SendOtpByPhoneQueriesCopyWithImpl<$Res,
        $Val extends SendOtpByPhoneQueries>
    implements $SendOtpByPhoneQueriesCopyWith<$Res> {
  _$SendOtpByPhoneQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendOtpByPhoneQueries
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
abstract class _$$SendOtpByPhoneQueriesImplCopyWith<$Res>
    implements $SendOtpByPhoneQueriesCopyWith<$Res> {
  factory _$$SendOtpByPhoneQueriesImplCopyWith(
          _$SendOtpByPhoneQueriesImpl value,
          $Res Function(_$SendOtpByPhoneQueriesImpl) then) =
      __$$SendOtpByPhoneQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'phoneNumber') String phoneNumber,
      @JsonKey(name: 'method') String method});
}

/// @nodoc
class __$$SendOtpByPhoneQueriesImplCopyWithImpl<$Res>
    extends _$SendOtpByPhoneQueriesCopyWithImpl<$Res,
        _$SendOtpByPhoneQueriesImpl>
    implements _$$SendOtpByPhoneQueriesImplCopyWith<$Res> {
  __$$SendOtpByPhoneQueriesImplCopyWithImpl(_$SendOtpByPhoneQueriesImpl _value,
      $Res Function(_$SendOtpByPhoneQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendOtpByPhoneQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? method = null,
  }) {
    return _then(_$SendOtpByPhoneQueriesImpl(
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
class _$SendOtpByPhoneQueriesImpl extends _SendOtpByPhoneQueries {
  const _$SendOtpByPhoneQueriesImpl(
      {@JsonKey(name: 'phoneNumber') required this.phoneNumber,
      @JsonKey(name: 'method') required this.method = 'sms'})
      : super._();

  factory _$SendOtpByPhoneQueriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendOtpByPhoneQueriesImplFromJson(json);

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
    return 'SendOtpByPhoneQueries(phoneNumber: $phoneNumber, method: $method)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpByPhoneQueriesImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, method);

  /// Create a copy of SendOtpByPhoneQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpByPhoneQueriesImplCopyWith<_$SendOtpByPhoneQueriesImpl>
      get copyWith => __$$SendOtpByPhoneQueriesImplCopyWithImpl<
          _$SendOtpByPhoneQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendOtpByPhoneQueriesImplToJson(
      this,
    );
  }
}

abstract class _SendOtpByPhoneQueries extends SendOtpByPhoneQueries {
  const factory _SendOtpByPhoneQueries(
          {@JsonKey(name: 'phoneNumber') required final String phoneNumber,
          @JsonKey(name: 'method') required final String method}) =
      _$SendOtpByPhoneQueriesImpl;
  const _SendOtpByPhoneQueries._() : super._();

  factory _SendOtpByPhoneQueries.fromJson(Map<String, dynamic> json) =
      _$SendOtpByPhoneQueriesImpl.fromJson;

  /// Phone Number
  @override
  @JsonKey(name: 'phoneNumber')
  String get phoneNumber;

  /// Method
  @override
  @JsonKey(name: 'method')
  String get method;

  /// Create a copy of SendOtpByPhoneQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOtpByPhoneQueriesImplCopyWith<_$SendOtpByPhoneQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
