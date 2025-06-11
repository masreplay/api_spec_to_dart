// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseResponse<T> {
  /// data
  @JsonKey(name: BaseResponse.dataKey)
  T get data;

  /// message
  @JsonKey(name: BaseResponse.messageKey)
  String get message;

  /// code
  @JsonKey(name: BaseResponse.codeKey)
  int get code;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BaseResponseCopyWith<T, BaseResponse<T>> get copyWith =>
      _$BaseResponseCopyWithImpl<T, BaseResponse<T>>(
          this as BaseResponse<T>, _$identity);

  /// Serializes this BaseResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseResponse<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), message, code);

  @override
  String toString() {
    return 'BaseResponse<$T>(data: $data, message: $message, code: $code)';
  }
}

/// @nodoc
abstract mixin class $BaseResponseCopyWith<T, $Res> {
  factory $BaseResponseCopyWith(
          BaseResponse<T> value, $Res Function(BaseResponse<T>) _then) =
      _$BaseResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: BaseResponse.dataKey) T data,
      @JsonKey(name: BaseResponse.messageKey) String message,
      @JsonKey(name: BaseResponse.codeKey) int code});
}

/// @nodoc
class _$BaseResponseCopyWithImpl<T, $Res>
    implements $BaseResponseCopyWith<T, $Res> {
  _$BaseResponseCopyWithImpl(this._self, this._then);

  final BaseResponse<T> _self;
  final $Res Function(BaseResponse<T>) _then;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    converters: jsonSerializableConverters, genericArgumentFactories: true)
class _BaseResponse<T> extends BaseResponse<T> {
  const _BaseResponse(
      {@JsonKey(name: BaseResponse.dataKey) required this.data,
      @JsonKey(name: BaseResponse.messageKey) required this.message,
      @JsonKey(name: BaseResponse.codeKey) required this.code})
      : super._();
  factory _BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);

  /// data
  @override
  @JsonKey(name: BaseResponse.dataKey)
  final T data;

  /// message
  @override
  @JsonKey(name: BaseResponse.messageKey)
  final String message;

  /// code
  @override
  @JsonKey(name: BaseResponse.codeKey)
  final int code;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BaseResponseCopyWith<T, _BaseResponse<T>> get copyWith =>
      __$BaseResponseCopyWithImpl<T, _BaseResponse<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$BaseResponseToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BaseResponse<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), message, code);

  @override
  String toString() {
    return 'BaseResponse<$T>(data: $data, message: $message, code: $code)';
  }
}

/// @nodoc
abstract mixin class _$BaseResponseCopyWith<T, $Res>
    implements $BaseResponseCopyWith<T, $Res> {
  factory _$BaseResponseCopyWith(
          _BaseResponse<T> value, $Res Function(_BaseResponse<T>) _then) =
      __$BaseResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BaseResponse.dataKey) T data,
      @JsonKey(name: BaseResponse.messageKey) String message,
      @JsonKey(name: BaseResponse.codeKey) int code});
}

/// @nodoc
class __$BaseResponseCopyWithImpl<T, $Res>
    implements _$BaseResponseCopyWith<T, $Res> {
  __$BaseResponseCopyWithImpl(this._self, this._then);

  final _BaseResponse<T> _self;
  final $Res Function(_BaseResponse<T>) _then;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_BaseResponse<T>(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
