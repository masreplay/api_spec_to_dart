// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_dict_str_any.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseDictStrAny _$BaseResponseDictStrAnyFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseDictStrAny.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseDictStrAny {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Map<dynamic, dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseDictStrAny to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseDictStrAny
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseDictStrAnyCopyWith<BaseResponseDictStrAny> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseDictStrAnyCopyWith<$Res> {
  factory $BaseResponseDictStrAnyCopyWith(BaseResponseDictStrAny value,
          $Res Function(BaseResponseDictStrAny) then) =
      _$BaseResponseDictStrAnyCopyWithImpl<$Res, BaseResponseDictStrAny>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Map<dynamic, dynamic> data});
}

/// @nodoc
class _$BaseResponseDictStrAnyCopyWithImpl<$Res,
        $Val extends BaseResponseDictStrAny>
    implements $BaseResponseDictStrAnyCopyWith<$Res> {
  _$BaseResponseDictStrAnyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseDictStrAny
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
              as Map<dynamic, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseDictStrAnyImplCopyWith<$Res>
    implements $BaseResponseDictStrAnyCopyWith<$Res> {
  factory _$$BaseResponseDictStrAnyImplCopyWith(
          _$BaseResponseDictStrAnyImpl value,
          $Res Function(_$BaseResponseDictStrAnyImpl) then) =
      __$$BaseResponseDictStrAnyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Map<dynamic, dynamic> data});
}

/// @nodoc
class __$$BaseResponseDictStrAnyImplCopyWithImpl<$Res>
    extends _$BaseResponseDictStrAnyCopyWithImpl<$Res,
        _$BaseResponseDictStrAnyImpl>
    implements _$$BaseResponseDictStrAnyImplCopyWith<$Res> {
  __$$BaseResponseDictStrAnyImplCopyWithImpl(
      _$BaseResponseDictStrAnyImpl _value,
      $Res Function(_$BaseResponseDictStrAnyImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseDictStrAny
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseDictStrAnyImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseDictStrAnyImpl implements _BaseResponseDictStrAny {
  const _$BaseResponseDictStrAnyImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final Map<dynamic, dynamic> data})
      : _data = data;

  factory _$BaseResponseDictStrAnyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseDictStrAnyImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  final Map<dynamic, dynamic> _data;
  @override
  @JsonKey(name: 'data')
  Map<dynamic, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseDictStrAny(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseDictStrAnyImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseDictStrAny
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseDictStrAnyImplCopyWith<_$BaseResponseDictStrAnyImpl>
      get copyWith => __$$BaseResponseDictStrAnyImplCopyWithImpl<
          _$BaseResponseDictStrAnyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseDictStrAnyImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseDictStrAny implements BaseResponseDictStrAny {
  const factory _BaseResponseDictStrAny(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final Map<dynamic, dynamic> data}) =
      _$BaseResponseDictStrAnyImpl;

  factory _BaseResponseDictStrAny.fromJson(Map<String, dynamic> json) =
      _$BaseResponseDictStrAnyImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  Map<dynamic, dynamic> get data;

  /// Create a copy of BaseResponseDictStrAny
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseDictStrAnyImplCopyWith<_$BaseResponseDictStrAnyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
