// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_bool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseBool _$BaseResponseBoolFromJson(Map<String, dynamic> json) {
  return _BaseResponseBool.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseBool {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  bool get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseBool to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseBool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseBoolCopyWith<BaseResponseBool> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseBoolCopyWith<$Res> {
  factory $BaseResponseBoolCopyWith(
          BaseResponseBool value, $Res Function(BaseResponseBool) then) =
      _$BaseResponseBoolCopyWithImpl<$Res, BaseResponseBool>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') bool data});
}

/// @nodoc
class _$BaseResponseBoolCopyWithImpl<$Res, $Val extends BaseResponseBool>
    implements $BaseResponseBoolCopyWith<$Res> {
  _$BaseResponseBoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseBool
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
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseBoolImplCopyWith<$Res>
    implements $BaseResponseBoolCopyWith<$Res> {
  factory _$$BaseResponseBoolImplCopyWith(_$BaseResponseBoolImpl value,
          $Res Function(_$BaseResponseBoolImpl) then) =
      __$$BaseResponseBoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') bool data});
}

/// @nodoc
class __$$BaseResponseBoolImplCopyWithImpl<$Res>
    extends _$BaseResponseBoolCopyWithImpl<$Res, _$BaseResponseBoolImpl>
    implements _$$BaseResponseBoolImplCopyWith<$Res> {
  __$$BaseResponseBoolImplCopyWithImpl(_$BaseResponseBoolImpl _value,
      $Res Function(_$BaseResponseBoolImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseBool
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseBoolImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseBoolImpl extends _BaseResponseBool {
  const _$BaseResponseBoolImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseBoolImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseBoolImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final bool data;

  @override
  String toString() {
    return 'BaseResponseBool(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseBoolImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseBool
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseBoolImplCopyWith<_$BaseResponseBoolImpl> get copyWith =>
      __$$BaseResponseBoolImplCopyWithImpl<_$BaseResponseBoolImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseBoolImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseBool extends BaseResponseBool {
  const factory _BaseResponseBool(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final bool data}) =
      _$BaseResponseBoolImpl;
  const _BaseResponseBool._() : super._();

  factory _BaseResponseBool.fromJson(Map<String, dynamic> json) =
      _$BaseResponseBoolImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  bool get data;

  /// Create a copy of BaseResponseBool
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseBoolImplCopyWith<_$BaseResponseBoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
