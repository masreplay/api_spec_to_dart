// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_authentication_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseAuthenticationStatusResponse
    _$BaseResponseAuthenticationStatusResponseFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseAuthenticationStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseAuthenticationStatusResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  AuthenticationStatusResponse get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseAuthenticationStatusResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseAuthenticationStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseAuthenticationStatusResponseCopyWith<
          BaseResponseAuthenticationStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseAuthenticationStatusResponseCopyWith<$Res> {
  factory $BaseResponseAuthenticationStatusResponseCopyWith(
          BaseResponseAuthenticationStatusResponse value,
          $Res Function(BaseResponseAuthenticationStatusResponse) then) =
      _$BaseResponseAuthenticationStatusResponseCopyWithImpl<$Res,
          BaseResponseAuthenticationStatusResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') AuthenticationStatusResponse data});

  $AuthenticationStatusResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseAuthenticationStatusResponseCopyWithImpl<$Res,
        $Val extends BaseResponseAuthenticationStatusResponse>
    implements $BaseResponseAuthenticationStatusResponseCopyWith<$Res> {
  _$BaseResponseAuthenticationStatusResponseCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseAuthenticationStatusResponse
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
              as AuthenticationStatusResponse,
    ) as $Val);
  }

  /// Create a copy of BaseResponseAuthenticationStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthenticationStatusResponseCopyWith<$Res> get data {
    return $AuthenticationStatusResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseAuthenticationStatusResponseImplCopyWith<$Res>
    implements $BaseResponseAuthenticationStatusResponseCopyWith<$Res> {
  factory _$$BaseResponseAuthenticationStatusResponseImplCopyWith(
          _$BaseResponseAuthenticationStatusResponseImpl value,
          $Res Function(_$BaseResponseAuthenticationStatusResponseImpl) then) =
      __$$BaseResponseAuthenticationStatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') AuthenticationStatusResponse data});

  @override
  $AuthenticationStatusResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseAuthenticationStatusResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseAuthenticationStatusResponseCopyWithImpl<$Res,
        _$BaseResponseAuthenticationStatusResponseImpl>
    implements _$$BaseResponseAuthenticationStatusResponseImplCopyWith<$Res> {
  __$$BaseResponseAuthenticationStatusResponseImplCopyWithImpl(
      _$BaseResponseAuthenticationStatusResponseImpl _value,
      $Res Function(_$BaseResponseAuthenticationStatusResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseAuthenticationStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseAuthenticationStatusResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatusResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseAuthenticationStatusResponseImpl
    implements _BaseResponseAuthenticationStatusResponse {
  const _$BaseResponseAuthenticationStatusResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data});

  factory _$BaseResponseAuthenticationStatusResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseAuthenticationStatusResponseImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final AuthenticationStatusResponse data;

  @override
  String toString() {
    return 'BaseResponseAuthenticationStatusResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseAuthenticationStatusResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseAuthenticationStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseAuthenticationStatusResponseImplCopyWith<
          _$BaseResponseAuthenticationStatusResponseImpl>
      get copyWith =>
          __$$BaseResponseAuthenticationStatusResponseImplCopyWithImpl<
              _$BaseResponseAuthenticationStatusResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseAuthenticationStatusResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseAuthenticationStatusResponse
    implements BaseResponseAuthenticationStatusResponse {
  const factory _BaseResponseAuthenticationStatusResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final AuthenticationStatusResponse data}) =
      _$BaseResponseAuthenticationStatusResponseImpl;

  factory _BaseResponseAuthenticationStatusResponse.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseAuthenticationStatusResponseImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  AuthenticationStatusResponse get data;

  /// Create a copy of BaseResponseAuthenticationStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseAuthenticationStatusResponseImplCopyWith<
          _$BaseResponseAuthenticationStatusResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
