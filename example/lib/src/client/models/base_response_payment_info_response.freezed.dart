// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_payment_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponsePaymentInfoResponse _$BaseResponsePaymentInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _BaseResponsePaymentInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponsePaymentInfoResponse {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  PaymentInfoResponse get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponsePaymentInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponsePaymentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponsePaymentInfoResponseCopyWith<BaseResponsePaymentInfoResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponsePaymentInfoResponseCopyWith<$Res> {
  factory $BaseResponsePaymentInfoResponseCopyWith(
          BaseResponsePaymentInfoResponse value,
          $Res Function(BaseResponsePaymentInfoResponse) then) =
      _$BaseResponsePaymentInfoResponseCopyWithImpl<$Res,
          BaseResponsePaymentInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') PaymentInfoResponse data});

  $PaymentInfoResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponsePaymentInfoResponseCopyWithImpl<$Res,
        $Val extends BaseResponsePaymentInfoResponse>
    implements $BaseResponsePaymentInfoResponseCopyWith<$Res> {
  _$BaseResponsePaymentInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponsePaymentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentInfoResponse,
    ) as $Val);
  }

  /// Create a copy of BaseResponsePaymentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentInfoResponseCopyWith<$Res> get data {
    return $PaymentInfoResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponsePaymentInfoResponseImplCopyWith<$Res>
    implements $BaseResponsePaymentInfoResponseCopyWith<$Res> {
  factory _$$BaseResponsePaymentInfoResponseImplCopyWith(
          _$BaseResponsePaymentInfoResponseImpl value,
          $Res Function(_$BaseResponsePaymentInfoResponseImpl) then) =
      __$$BaseResponsePaymentInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') PaymentInfoResponse data});

  @override
  $PaymentInfoResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponsePaymentInfoResponseImplCopyWithImpl<$Res>
    extends _$BaseResponsePaymentInfoResponseCopyWithImpl<$Res,
        _$BaseResponsePaymentInfoResponseImpl>
    implements _$$BaseResponsePaymentInfoResponseImplCopyWith<$Res> {
  __$$BaseResponsePaymentInfoResponseImplCopyWithImpl(
      _$BaseResponsePaymentInfoResponseImpl _value,
      $Res Function(_$BaseResponsePaymentInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponsePaymentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponsePaymentInfoResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentInfoResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponsePaymentInfoResponseImpl
    extends _BaseResponsePaymentInfoResponse {
  const _$BaseResponsePaymentInfoResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponsePaymentInfoResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponsePaymentInfoResponseImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final PaymentInfoResponse data;

  @override
  String toString() {
    return 'BaseResponsePaymentInfoResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponsePaymentInfoResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponsePaymentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponsePaymentInfoResponseImplCopyWith<
          _$BaseResponsePaymentInfoResponseImpl>
      get copyWith => __$$BaseResponsePaymentInfoResponseImplCopyWithImpl<
          _$BaseResponsePaymentInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponsePaymentInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponsePaymentInfoResponse
    extends BaseResponsePaymentInfoResponse {
  const factory _BaseResponsePaymentInfoResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final PaymentInfoResponse data}) =
      _$BaseResponsePaymentInfoResponseImpl;
  const _BaseResponsePaymentInfoResponse._() : super._();

  factory _BaseResponsePaymentInfoResponse.fromJson(Map<String, dynamic> json) =
      _$BaseResponsePaymentInfoResponseImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  PaymentInfoResponse get data;

  /// Create a copy of BaseResponsePaymentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponsePaymentInfoResponseImplCopyWith<
          _$BaseResponsePaymentInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
