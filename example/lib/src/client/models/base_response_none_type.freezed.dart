// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_none_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseNoneType _$BaseResponseNoneTypeFromJson(Map<String, dynamic> json) {
  return _BaseResponseNoneType.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseNoneType {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseNoneType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseNoneTypeCopyWith<BaseResponseNoneType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseNoneTypeCopyWith<$Res> {
  factory $BaseResponseNoneTypeCopyWith(BaseResponseNoneType value,
          $Res Function(BaseResponseNoneType) then) =
      _$BaseResponseNoneTypeCopyWithImpl<$Res, BaseResponseNoneType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class _$BaseResponseNoneTypeCopyWithImpl<$Res,
        $Val extends BaseResponseNoneType>
    implements $BaseResponseNoneTypeCopyWith<$Res> {
  _$BaseResponseNoneTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseNoneType
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
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseNoneTypeImplCopyWith<$Res>
    implements $BaseResponseNoneTypeCopyWith<$Res> {
  factory _$$BaseResponseNoneTypeImplCopyWith(_$BaseResponseNoneTypeImpl value,
          $Res Function(_$BaseResponseNoneTypeImpl) then) =
      __$$BaseResponseNoneTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class __$$BaseResponseNoneTypeImplCopyWithImpl<$Res>
    extends _$BaseResponseNoneTypeCopyWithImpl<$Res, _$BaseResponseNoneTypeImpl>
    implements _$$BaseResponseNoneTypeImplCopyWith<$Res> {
  __$$BaseResponseNoneTypeImplCopyWithImpl(_$BaseResponseNoneTypeImpl _value,
      $Res Function(_$BaseResponseNoneTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseNoneTypeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseNoneTypeImpl extends _BaseResponseNoneType {
  const _$BaseResponseNoneTypeImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseNoneTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseNoneTypeImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final dynamic data;

  @override
  String toString() {
    return 'BaseResponseNoneType(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseNoneTypeImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(data));

  /// Create a copy of BaseResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseNoneTypeImplCopyWith<_$BaseResponseNoneTypeImpl>
      get copyWith =>
          __$$BaseResponseNoneTypeImplCopyWithImpl<_$BaseResponseNoneTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseNoneTypeImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseNoneType extends BaseResponseNoneType {
  const factory _BaseResponseNoneType(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final dynamic data}) =
      _$BaseResponseNoneTypeImpl;
  const _BaseResponseNoneType._() : super._();

  factory _BaseResponseNoneType.fromJson(Map<String, dynamic> json) =
      _$BaseResponseNoneTypeImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  dynamic get data;

  /// Create a copy of BaseResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseNoneTypeImplCopyWith<_$BaseResponseNoneTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
