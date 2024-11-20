// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_request_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyOtpRequestPublic _$VerifyOtpRequestPublicFromJson(
    Map<String, dynamic> json) {
  return _VerifyOtpRequestPublic.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpRequestPublic {
  @JsonKey(name: 'otp')
  String get otp => throw _privateConstructorUsedError;

  /// Serializes this VerifyOtpRequestPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyOtpRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyOtpRequestPublicCopyWith<VerifyOtpRequestPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpRequestPublicCopyWith<$Res> {
  factory $VerifyOtpRequestPublicCopyWith(VerifyOtpRequestPublic value,
          $Res Function(VerifyOtpRequestPublic) then) =
      _$VerifyOtpRequestPublicCopyWithImpl<$Res, VerifyOtpRequestPublic>;
  @useResult
  $Res call({@JsonKey(name: 'otp') String otp});
}

/// @nodoc
class _$VerifyOtpRequestPublicCopyWithImpl<$Res,
        $Val extends VerifyOtpRequestPublic>
    implements $VerifyOtpRequestPublicCopyWith<$Res> {
  _$VerifyOtpRequestPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyOtpRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyOtpRequestPublicImplCopyWith<$Res>
    implements $VerifyOtpRequestPublicCopyWith<$Res> {
  factory _$$VerifyOtpRequestPublicImplCopyWith(
          _$VerifyOtpRequestPublicImpl value,
          $Res Function(_$VerifyOtpRequestPublicImpl) then) =
      __$$VerifyOtpRequestPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'otp') String otp});
}

/// @nodoc
class __$$VerifyOtpRequestPublicImplCopyWithImpl<$Res>
    extends _$VerifyOtpRequestPublicCopyWithImpl<$Res,
        _$VerifyOtpRequestPublicImpl>
    implements _$$VerifyOtpRequestPublicImplCopyWith<$Res> {
  __$$VerifyOtpRequestPublicImplCopyWithImpl(
      _$VerifyOtpRequestPublicImpl _value,
      $Res Function(_$VerifyOtpRequestPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyOtpRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$VerifyOtpRequestPublicImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$VerifyOtpRequestPublicImpl extends _VerifyOtpRequestPublic {
  const _$VerifyOtpRequestPublicImpl({@JsonKey(name: 'otp') required this.otp})
      : super._();

  factory _$VerifyOtpRequestPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpRequestPublicImplFromJson(json);

  @override
  @JsonKey(name: 'otp')
  final String otp;

  @override
  String toString() {
    return 'VerifyOtpRequestPublic(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpRequestPublicImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of VerifyOtpRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpRequestPublicImplCopyWith<_$VerifyOtpRequestPublicImpl>
      get copyWith => __$$VerifyOtpRequestPublicImplCopyWithImpl<
          _$VerifyOtpRequestPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpRequestPublicImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpRequestPublic extends VerifyOtpRequestPublic {
  const factory _VerifyOtpRequestPublic(
          {@JsonKey(name: 'otp') required final String otp}) =
      _$VerifyOtpRequestPublicImpl;
  const _VerifyOtpRequestPublic._() : super._();

  factory _VerifyOtpRequestPublic.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpRequestPublicImpl.fromJson;

  @override
  @JsonKey(name: 'otp')
  String get otp;

  /// Create a copy of VerifyOtpRequestPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpRequestPublicImplCopyWith<_$VerifyOtpRequestPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
