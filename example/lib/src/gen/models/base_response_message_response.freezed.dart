// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseMessageResponse _$BaseResponseMessageResponseFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseMessageResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseMessageResponse {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  MessageResponse get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseMessageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseMessageResponseCopyWith<BaseResponseMessageResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseMessageResponseCopyWith<$Res> {
  factory $BaseResponseMessageResponseCopyWith(
          BaseResponseMessageResponse value,
          $Res Function(BaseResponseMessageResponse) then) =
      _$BaseResponseMessageResponseCopyWithImpl<$Res,
          BaseResponseMessageResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') MessageResponse data});

  $MessageResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseMessageResponseCopyWithImpl<$Res,
        $Val extends BaseResponseMessageResponse>
    implements $BaseResponseMessageResponseCopyWith<$Res> {
  _$BaseResponseMessageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseMessageResponse
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
              as MessageResponse,
    ) as $Val);
  }

  /// Create a copy of BaseResponseMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageResponseCopyWith<$Res> get data {
    return $MessageResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseMessageResponseImplCopyWith<$Res>
    implements $BaseResponseMessageResponseCopyWith<$Res> {
  factory _$$BaseResponseMessageResponseImplCopyWith(
          _$BaseResponseMessageResponseImpl value,
          $Res Function(_$BaseResponseMessageResponseImpl) then) =
      __$$BaseResponseMessageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') MessageResponse data});

  @override
  $MessageResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseMessageResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseMessageResponseCopyWithImpl<$Res,
        _$BaseResponseMessageResponseImpl>
    implements _$$BaseResponseMessageResponseImplCopyWith<$Res> {
  __$$BaseResponseMessageResponseImplCopyWithImpl(
      _$BaseResponseMessageResponseImpl _value,
      $Res Function(_$BaseResponseMessageResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseMessageResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MessageResponse,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseMessageResponseImpl extends _BaseResponseMessageResponse {
  const _$BaseResponseMessageResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseMessageResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseMessageResponseImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final MessageResponse data;

  @override
  String toString() {
    return 'BaseResponseMessageResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseMessageResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseMessageResponseImplCopyWith<_$BaseResponseMessageResponseImpl>
      get copyWith => __$$BaseResponseMessageResponseImplCopyWithImpl<
          _$BaseResponseMessageResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseMessageResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseMessageResponse
    extends BaseResponseMessageResponse {
  const factory _BaseResponseMessageResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final MessageResponse data}) =
      _$BaseResponseMessageResponseImpl;
  const _BaseResponseMessageResponse._() : super._();

  factory _BaseResponseMessageResponse.fromJson(Map<String, dynamic> json) =
      _$BaseResponseMessageResponseImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  MessageResponse get data;

  /// Create a copy of BaseResponseMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseMessageResponseImplCopyWith<_$BaseResponseMessageResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
