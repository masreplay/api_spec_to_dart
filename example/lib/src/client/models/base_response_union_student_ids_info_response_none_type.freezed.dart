// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_student_ids_info_response_none_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionStudentIdsInfoResponseNoneType
    _$BaseResponseUnionStudentIdsInfoResponseNoneTypeFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionStudentIdsInfoResponseNoneType.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionStudentIdsInfoResponseNoneType {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StudentIdsInfoResponse? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionStudentIdsInfoResponseNoneType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionStudentIdsInfoResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionStudentIdsInfoResponseNoneTypeCopyWith<
          BaseResponseUnionStudentIdsInfoResponseNoneType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionStudentIdsInfoResponseNoneTypeCopyWith<$Res> {
  factory $BaseResponseUnionStudentIdsInfoResponseNoneTypeCopyWith(
          BaseResponseUnionStudentIdsInfoResponseNoneType value,
          $Res Function(BaseResponseUnionStudentIdsInfoResponseNoneType) then) =
      _$BaseResponseUnionStudentIdsInfoResponseNoneTypeCopyWithImpl<$Res,
          BaseResponseUnionStudentIdsInfoResponseNoneType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentIdsInfoResponse? data});

  $StudentIdsInfoResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionStudentIdsInfoResponseNoneTypeCopyWithImpl<$Res,
        $Val extends BaseResponseUnionStudentIdsInfoResponseNoneType>
    implements $BaseResponseUnionStudentIdsInfoResponseNoneTypeCopyWith<$Res> {
  _$BaseResponseUnionStudentIdsInfoResponseNoneTypeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionStudentIdsInfoResponseNoneType
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
              as StudentIdsInfoResponse?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionStudentIdsInfoResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentIdsInfoResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StudentIdsInfoResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplCopyWith<
        $Res>
    implements $BaseResponseUnionStudentIdsInfoResponseNoneTypeCopyWith<$Res> {
  factory _$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplCopyWith(
          _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl value,
          $Res Function(_$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl)
              then) =
      __$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentIdsInfoResponse? data});

  @override
  $StudentIdsInfoResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionStudentIdsInfoResponseNoneTypeCopyWithImpl<$Res,
        _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl>
    implements
        _$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplCopyWith<$Res> {
  __$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplCopyWithImpl(
      _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl _value,
      $Res Function(_$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionStudentIdsInfoResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StudentIdsInfoResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl
    implements _BaseResponseUnionStudentIdsInfoResponseNoneType {
  const _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data});

  factory _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final StudentIdsInfoResponse? data;

  @override
  String toString() {
    return 'BaseResponseUnionStudentIdsInfoResponseNoneType(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionStudentIdsInfoResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplCopyWith<
          _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl>
      get copyWith =>
          __$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplCopyWithImpl<
                  _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionStudentIdsInfoResponseNoneType
    implements BaseResponseUnionStudentIdsInfoResponseNoneType {
  const factory _BaseResponseUnionStudentIdsInfoResponseNoneType(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final StudentIdsInfoResponse? data}) =
      _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl;

  factory _BaseResponseUnionStudentIdsInfoResponseNoneType.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  StudentIdsInfoResponse? get data;

  /// Create a copy of BaseResponseUnionStudentIdsInfoResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplCopyWith<
          _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
