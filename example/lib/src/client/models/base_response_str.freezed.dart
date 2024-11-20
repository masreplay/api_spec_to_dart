// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_str.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseStr _$BaseResponseStrFromJson(Map<String, dynamic> json) {
  return _BaseResponseStr.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseStr {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseStr to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseStr
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseStrCopyWith<BaseResponseStr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseStrCopyWith<$Res> {
  factory $BaseResponseStrCopyWith(
          BaseResponseStr value, $Res Function(BaseResponseStr) then) =
      _$BaseResponseStrCopyWithImpl<$Res, BaseResponseStr>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') String data});
}

/// @nodoc
class _$BaseResponseStrCopyWithImpl<$Res, $Val extends BaseResponseStr>
    implements $BaseResponseStrCopyWith<$Res> {
  _$BaseResponseStrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseStr
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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseStrImplCopyWith<$Res>
    implements $BaseResponseStrCopyWith<$Res> {
  factory _$$BaseResponseStrImplCopyWith(_$BaseResponseStrImpl value,
          $Res Function(_$BaseResponseStrImpl) then) =
      __$$BaseResponseStrImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') String data});
}

/// @nodoc
class __$$BaseResponseStrImplCopyWithImpl<$Res>
    extends _$BaseResponseStrCopyWithImpl<$Res, _$BaseResponseStrImpl>
    implements _$$BaseResponseStrImplCopyWith<$Res> {
  __$$BaseResponseStrImplCopyWithImpl(
      _$BaseResponseStrImpl _value, $Res Function(_$BaseResponseStrImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseStr
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseStrImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseStrImpl extends _BaseResponseStr {
  const _$BaseResponseStrImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseStrImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseStrImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final String data;

  @override
  String toString() {
    return 'BaseResponseStr(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseStrImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseStr
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseStrImplCopyWith<_$BaseResponseStrImpl> get copyWith =>
      __$$BaseResponseStrImplCopyWithImpl<_$BaseResponseStrImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseStrImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseStr extends BaseResponseStr {
  const factory _BaseResponseStr(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final String data}) =
      _$BaseResponseStrImpl;
  const _BaseResponseStr._() : super._();

  factory _BaseResponseStr.fromJson(Map<String, dynamic> json) =
      _$BaseResponseStrImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  String get data;

  /// Create a copy of BaseResponseStr
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseStrImplCopyWith<_$BaseResponseStrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
