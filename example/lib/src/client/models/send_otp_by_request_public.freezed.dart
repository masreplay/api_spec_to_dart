// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_by_request_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendOtpByRequestPublic _$SendOtpByRequestPublicFromJson(
    Map<String, dynamic> json) {
  return _SendOtpByRequestPublic.fromJson(json);
}

/// @nodoc
mixin _$SendOtpByRequestPublic {
  @JsonKey(name: 'credential')
  String get credential => throw _privateConstructorUsedError;
  @JsonKey(name: 'method')
  String get method => throw _privateConstructorUsedError;

  /// Serializes this SendOtpByRequestPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendOtpByRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendOtpByRequestPublicCopyWith<SendOtpByRequestPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpByRequestPublicCopyWith<$Res> {
  factory $SendOtpByRequestPublicCopyWith(SendOtpByRequestPublic value,
          $Res Function(SendOtpByRequestPublic) then) =
      _$SendOtpByRequestPublicCopyWithImpl<$Res, SendOtpByRequestPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'credential') String credential,
      @JsonKey(name: 'method') String method});
}

/// @nodoc
class _$SendOtpByRequestPublicCopyWithImpl<$Res,
        $Val extends SendOtpByRequestPublic>
    implements $SendOtpByRequestPublicCopyWith<$Res> {
  _$SendOtpByRequestPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendOtpByRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
    Object? method = null,
  }) {
    return _then(_value.copyWith(
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendOtpByRequestPublicImplCopyWith<$Res>
    implements $SendOtpByRequestPublicCopyWith<$Res> {
  factory _$$SendOtpByRequestPublicImplCopyWith(
          _$SendOtpByRequestPublicImpl value,
          $Res Function(_$SendOtpByRequestPublicImpl) then) =
      __$$SendOtpByRequestPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'credential') String credential,
      @JsonKey(name: 'method') String method});
}

/// @nodoc
class __$$SendOtpByRequestPublicImplCopyWithImpl<$Res>
    extends _$SendOtpByRequestPublicCopyWithImpl<$Res,
        _$SendOtpByRequestPublicImpl>
    implements _$$SendOtpByRequestPublicImplCopyWith<$Res> {
  __$$SendOtpByRequestPublicImplCopyWithImpl(
      _$SendOtpByRequestPublicImpl _value,
      $Res Function(_$SendOtpByRequestPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendOtpByRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
    Object? method = null,
  }) {
    return _then(_$SendOtpByRequestPublicImpl(
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendOtpByRequestPublicImpl implements _SendOtpByRequestPublic {
  const _$SendOtpByRequestPublicImpl(
      {@JsonKey(name: 'credential') required this.credential,
      @JsonKey(name: 'method') required this.method});

  factory _$SendOtpByRequestPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendOtpByRequestPublicImplFromJson(json);

  @override
  @JsonKey(name: 'credential')
  final String credential;
  @override
  @JsonKey(name: 'method')
  final String method;

  @override
  String toString() {
    return 'SendOtpByRequestPublic(credential: $credential, method: $method)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpByRequestPublicImpl &&
            (identical(other.credential, credential) ||
                other.credential == credential) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, credential, method);

  /// Create a copy of SendOtpByRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpByRequestPublicImplCopyWith<_$SendOtpByRequestPublicImpl>
      get copyWith => __$$SendOtpByRequestPublicImplCopyWithImpl<
          _$SendOtpByRequestPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendOtpByRequestPublicImplToJson(
      this,
    );
  }
}

abstract class _SendOtpByRequestPublic implements SendOtpByRequestPublic {
  const factory _SendOtpByRequestPublic(
          {@JsonKey(name: 'credential') required final String credential,
          @JsonKey(name: 'method') required final String method}) =
      _$SendOtpByRequestPublicImpl;

  factory _SendOtpByRequestPublic.fromJson(Map<String, dynamic> json) =
      _$SendOtpByRequestPublicImpl.fromJson;

  @override
  @JsonKey(name: 'credential')
  String get credential;
  @override
  @JsonKey(name: 'method')
  String get method;

  /// Create a copy of SendOtpByRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOtpByRequestPublicImplCopyWith<_$SendOtpByRequestPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
