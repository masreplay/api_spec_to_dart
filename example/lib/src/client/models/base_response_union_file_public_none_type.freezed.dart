// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_file_public_none_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionFilePublicNoneType
    _$BaseResponseUnionFilePublicNoneTypeFromJson(Map<String, dynamic> json) {
  return _BaseResponseUnionFilePublicNoneType.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionFilePublicNoneType {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  FilePublic? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionFilePublicNoneType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionFilePublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionFilePublicNoneTypeCopyWith<
          BaseResponseUnionFilePublicNoneType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionFilePublicNoneTypeCopyWith<$Res> {
  factory $BaseResponseUnionFilePublicNoneTypeCopyWith(
          BaseResponseUnionFilePublicNoneType value,
          $Res Function(BaseResponseUnionFilePublicNoneType) then) =
      _$BaseResponseUnionFilePublicNoneTypeCopyWithImpl<$Res,
          BaseResponseUnionFilePublicNoneType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') FilePublic? data});

  $FilePublicCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionFilePublicNoneTypeCopyWithImpl<$Res,
        $Val extends BaseResponseUnionFilePublicNoneType>
    implements $BaseResponseUnionFilePublicNoneTypeCopyWith<$Res> {
  _$BaseResponseUnionFilePublicNoneTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionFilePublicNoneType
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
              as FilePublic?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionFilePublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilePublicCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FilePublicCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionFilePublicNoneTypeImplCopyWith<$Res>
    implements $BaseResponseUnionFilePublicNoneTypeCopyWith<$Res> {
  factory _$$BaseResponseUnionFilePublicNoneTypeImplCopyWith(
          _$BaseResponseUnionFilePublicNoneTypeImpl value,
          $Res Function(_$BaseResponseUnionFilePublicNoneTypeImpl) then) =
      __$$BaseResponseUnionFilePublicNoneTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') FilePublic? data});

  @override
  $FilePublicCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionFilePublicNoneTypeImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionFilePublicNoneTypeCopyWithImpl<$Res,
        _$BaseResponseUnionFilePublicNoneTypeImpl>
    implements _$$BaseResponseUnionFilePublicNoneTypeImplCopyWith<$Res> {
  __$$BaseResponseUnionFilePublicNoneTypeImplCopyWithImpl(
      _$BaseResponseUnionFilePublicNoneTypeImpl _value,
      $Res Function(_$BaseResponseUnionFilePublicNoneTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionFilePublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionFilePublicNoneTypeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FilePublic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseUnionFilePublicNoneTypeImpl
    implements _BaseResponseUnionFilePublicNoneType {
  const _$BaseResponseUnionFilePublicNoneTypeImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data});

  factory _$BaseResponseUnionFilePublicNoneTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionFilePublicNoneTypeImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final FilePublic? data;

  @override
  String toString() {
    return 'BaseResponseUnionFilePublicNoneType(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionFilePublicNoneTypeImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionFilePublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionFilePublicNoneTypeImplCopyWith<
          _$BaseResponseUnionFilePublicNoneTypeImpl>
      get copyWith => __$$BaseResponseUnionFilePublicNoneTypeImplCopyWithImpl<
          _$BaseResponseUnionFilePublicNoneTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionFilePublicNoneTypeImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionFilePublicNoneType
    implements BaseResponseUnionFilePublicNoneType {
  const factory _BaseResponseUnionFilePublicNoneType(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final FilePublic? data}) =
      _$BaseResponseUnionFilePublicNoneTypeImpl;

  factory _BaseResponseUnionFilePublicNoneType.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionFilePublicNoneTypeImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  FilePublic? get data;

  /// Create a copy of BaseResponseUnionFilePublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionFilePublicNoneTypeImplCopyWith<
          _$BaseResponseUnionFilePublicNoneTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
