// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_dict_str_any_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionDictStrAny _$BaseResponseUnionDictStrAnyFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseUnionDictStrAny.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionDictStrAny {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionDictStrAny to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionDictStrAny
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionDictStrAnyCopyWith<BaseResponseUnionDictStrAny>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionDictStrAnyCopyWith<$Res> {
  factory $BaseResponseUnionDictStrAnyCopyWith(
          BaseResponseUnionDictStrAny value,
          $Res Function(BaseResponseUnionDictStrAny) then) =
      _$BaseResponseUnionDictStrAnyCopyWithImpl<$Res,
          BaseResponseUnionDictStrAny>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Map<String, dynamic>? data});
}

/// @nodoc
class _$BaseResponseUnionDictStrAnyCopyWithImpl<$Res,
        $Val extends BaseResponseUnionDictStrAny>
    implements $BaseResponseUnionDictStrAnyCopyWith<$Res> {
  _$BaseResponseUnionDictStrAnyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionDictStrAny
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionDictStrAnyImplCopyWith<$Res>
    implements $BaseResponseUnionDictStrAnyCopyWith<$Res> {
  factory _$$BaseResponseUnionDictStrAnyImplCopyWith(
          _$BaseResponseUnionDictStrAnyImpl value,
          $Res Function(_$BaseResponseUnionDictStrAnyImpl) then) =
      __$$BaseResponseUnionDictStrAnyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Map<String, dynamic>? data});
}

/// @nodoc
class __$$BaseResponseUnionDictStrAnyImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionDictStrAnyCopyWithImpl<$Res,
        _$BaseResponseUnionDictStrAnyImpl>
    implements _$$BaseResponseUnionDictStrAnyImplCopyWith<$Res> {
  __$$BaseResponseUnionDictStrAnyImplCopyWithImpl(
      _$BaseResponseUnionDictStrAnyImpl _value,
      $Res Function(_$BaseResponseUnionDictStrAnyImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionDictStrAny
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionDictStrAnyImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionDictStrAnyImpl extends _BaseResponseUnionDictStrAny {
  const _$BaseResponseUnionDictStrAnyImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final Map<String, dynamic>? data})
      : _data = data,
        super._();

  factory _$BaseResponseUnionDictStrAnyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionDictStrAnyImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final Map<String, dynamic>? _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'BaseResponseUnionDictStrAny(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionDictStrAnyImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseUnionDictStrAny
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionDictStrAnyImplCopyWith<_$BaseResponseUnionDictStrAnyImpl>
      get copyWith => __$$BaseResponseUnionDictStrAnyImplCopyWithImpl<
          _$BaseResponseUnionDictStrAnyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionDictStrAnyImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionDictStrAny
    extends BaseResponseUnionDictStrAny {
  const factory _BaseResponseUnionDictStrAny(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final Map<String, dynamic>? data}) =
      _$BaseResponseUnionDictStrAnyImpl;
  const _BaseResponseUnionDictStrAny._() : super._();

  factory _BaseResponseUnionDictStrAny.fromJson(Map<String, dynamic> json) =
      _$BaseResponseUnionDictStrAnyImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data;

  /// Create a copy of BaseResponseUnionDictStrAny
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionDictStrAnyImplCopyWith<_$BaseResponseUnionDictStrAnyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
