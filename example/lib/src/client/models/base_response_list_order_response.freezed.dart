// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListOrderResponse _$BaseResponseListOrderResponseFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseListOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListOrderResponse {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<OrderResponse> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListOrderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListOrderResponseCopyWith<BaseResponseListOrderResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListOrderResponseCopyWith<$Res> {
  factory $BaseResponseListOrderResponseCopyWith(
          BaseResponseListOrderResponse value,
          $Res Function(BaseResponseListOrderResponse) then) =
      _$BaseResponseListOrderResponseCopyWithImpl<$Res,
          BaseResponseListOrderResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<OrderResponse> data});
}

/// @nodoc
class _$BaseResponseListOrderResponseCopyWithImpl<$Res,
        $Val extends BaseResponseListOrderResponse>
    implements $BaseResponseListOrderResponseCopyWith<$Res> {
  _$BaseResponseListOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListOrderResponse
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
              as List<OrderResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseListOrderResponseImplCopyWith<$Res>
    implements $BaseResponseListOrderResponseCopyWith<$Res> {
  factory _$$BaseResponseListOrderResponseImplCopyWith(
          _$BaseResponseListOrderResponseImpl value,
          $Res Function(_$BaseResponseListOrderResponseImpl) then) =
      __$$BaseResponseListOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<OrderResponse> data});
}

/// @nodoc
class __$$BaseResponseListOrderResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseListOrderResponseCopyWithImpl<$Res,
        _$BaseResponseListOrderResponseImpl>
    implements _$$BaseResponseListOrderResponseImplCopyWith<$Res> {
  __$$BaseResponseListOrderResponseImplCopyWithImpl(
      _$BaseResponseListOrderResponseImpl _value,
      $Res Function(_$BaseResponseListOrderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListOrderResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrderResponse>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseListOrderResponseImpl
    extends _BaseResponseListOrderResponse {
  const _$BaseResponseListOrderResponseImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<OrderResponse> data})
      : _data = data,
        super._();

  factory _$BaseResponseListOrderResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListOrderResponseImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<OrderResponse> _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<OrderResponse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseListOrderResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListOrderResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListOrderResponseImplCopyWith<
          _$BaseResponseListOrderResponseImpl>
      get copyWith => __$$BaseResponseListOrderResponseImplCopyWithImpl<
          _$BaseResponseListOrderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListOrderResponse
    extends BaseResponseListOrderResponse {
  const factory _BaseResponseListOrderResponse(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<OrderResponse> data}) =
      _$BaseResponseListOrderResponseImpl;
  const _BaseResponseListOrderResponse._() : super._();

  factory _BaseResponseListOrderResponse.fromJson(Map<String, dynamic> json) =
      _$BaseResponseListOrderResponseImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<OrderResponse> get data;

  /// Create a copy of BaseResponseListOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListOrderResponseImplCopyWith<
          _$BaseResponseListOrderResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
