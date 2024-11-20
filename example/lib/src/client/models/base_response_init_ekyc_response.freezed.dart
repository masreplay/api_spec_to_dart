// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_init_ekyc_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseInitEkycResponse _$BaseResponseInitEkycResponseFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseInitEkycResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseInitEkycResponse {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  InitEkycResponse get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseInitEkycResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseInitEkycResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseInitEkycResponseCopyWith<BaseResponseInitEkycResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseInitEkycResponseCopyWith<$Res> {
  factory $BaseResponseInitEkycResponseCopyWith(
          BaseResponseInitEkycResponse value,
          $Res Function(BaseResponseInitEkycResponse) then) =
      _$BaseResponseInitEkycResponseCopyWithImpl<$Res,
          BaseResponseInitEkycResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') InitEkycResponse data});

  $InitEkycResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseInitEkycResponseCopyWithImpl<$Res,
        $Val extends BaseResponseInitEkycResponse>
    implements $BaseResponseInitEkycResponseCopyWith<$Res> {
  _$BaseResponseInitEkycResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseInitEkycResponse
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
              as InitEkycResponse,
    ) as $Val);
  }

  /// Create a copy of BaseResponseInitEkycResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InitEkycResponseCopyWith<$Res> get data {
    return $InitEkycResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseInitEkycResponseImplCopyWith<$Res>
    implements $BaseResponseInitEkycResponseCopyWith<$Res> {
  factory _$$BaseResponseInitEkycResponseImplCopyWith(
          _$BaseResponseInitEkycResponseImpl value,
          $Res Function(_$BaseResponseInitEkycResponseImpl) then) =
      __$$BaseResponseInitEkycResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') InitEkycResponse data});

  @override
  $InitEkycResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseInitEkycResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseInitEkycResponseCopyWithImpl<$Res,
        _$BaseResponseInitEkycResponseImpl>
    implements _$$BaseResponseInitEkycResponseImplCopyWith<$Res> {
  __$$BaseResponseInitEkycResponseImplCopyWithImpl(
      _$BaseResponseInitEkycResponseImpl _value,
      $Res Function(_$BaseResponseInitEkycResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseInitEkycResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseInitEkycResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InitEkycResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseInitEkycResponseImpl extends _BaseResponseInitEkycResponse {
  const _$BaseResponseInitEkycResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseInitEkycResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseInitEkycResponseImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final InitEkycResponse data;

  @override
  String toString() {
    return 'BaseResponseInitEkycResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseInitEkycResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseInitEkycResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseInitEkycResponseImplCopyWith<
          _$BaseResponseInitEkycResponseImpl>
      get copyWith => __$$BaseResponseInitEkycResponseImplCopyWithImpl<
          _$BaseResponseInitEkycResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseInitEkycResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseInitEkycResponse
    extends BaseResponseInitEkycResponse {
  const factory _BaseResponseInitEkycResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final InitEkycResponse data}) =
      _$BaseResponseInitEkycResponseImpl;
  const _BaseResponseInitEkycResponse._() : super._();

  factory _BaseResponseInitEkycResponse.fromJson(Map<String, dynamic> json) =
      _$BaseResponseInitEkycResponseImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  InitEkycResponse get data;

  /// Create a copy of BaseResponseInitEkycResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseInitEkycResponseImplCopyWith<
          _$BaseResponseInitEkycResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
