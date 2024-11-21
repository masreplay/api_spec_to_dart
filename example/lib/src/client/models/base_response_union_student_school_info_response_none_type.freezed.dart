// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_student_school_info_response_none_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionStudentSchoolInfoResponseNoneType
    _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionStudentSchoolInfoResponseNoneType.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionStudentSchoolInfoResponseNoneType {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StudentSchoolInfoResponse? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionStudentSchoolInfoResponseNoneType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionStudentSchoolInfoResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionStudentSchoolInfoResponseNoneTypeCopyWith<
          BaseResponseUnionStudentSchoolInfoResponseNoneType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionStudentSchoolInfoResponseNoneTypeCopyWith<
    $Res> {
  factory $BaseResponseUnionStudentSchoolInfoResponseNoneTypeCopyWith(
          BaseResponseUnionStudentSchoolInfoResponseNoneType value,
          $Res Function(BaseResponseUnionStudentSchoolInfoResponseNoneType)
              then) =
      _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeCopyWithImpl<$Res,
          BaseResponseUnionStudentSchoolInfoResponseNoneType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentSchoolInfoResponse? data});

  $StudentSchoolInfoResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeCopyWithImpl<$Res,
        $Val extends BaseResponseUnionStudentSchoolInfoResponseNoneType>
    implements
        $BaseResponseUnionStudentSchoolInfoResponseNoneTypeCopyWith<$Res> {
  _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionStudentSchoolInfoResponseNoneType
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
              as StudentSchoolInfoResponse?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionStudentSchoolInfoResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentSchoolInfoResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StudentSchoolInfoResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplCopyWith<
        $Res>
    implements
        $BaseResponseUnionStudentSchoolInfoResponseNoneTypeCopyWith<$Res> {
  factory _$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplCopyWith(
          _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl value,
          $Res Function(
                  _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl)
              then) =
      __$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentSchoolInfoResponse? data});

  @override
  $StudentSchoolInfoResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplCopyWithImpl<
        $Res>
    extends _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeCopyWithImpl<
        $Res, _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl>
    implements
        _$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplCopyWith<
            $Res> {
  __$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplCopyWithImpl(
      _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl _value,
      $Res Function(_$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionStudentSchoolInfoResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StudentSchoolInfoResponse?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl
    extends _BaseResponseUnionStudentSchoolInfoResponseNoneType {
  const _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final StudentSchoolInfoResponse? data;

  @override
  String toString() {
    return 'BaseResponseUnionStudentSchoolInfoResponseNoneType(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionStudentSchoolInfoResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplCopyWith<
          _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl>
      get copyWith =>
          __$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplCopyWithImpl<
                  _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionStudentSchoolInfoResponseNoneType
    extends BaseResponseUnionStudentSchoolInfoResponseNoneType {
  const factory _BaseResponseUnionStudentSchoolInfoResponseNoneType(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final StudentSchoolInfoResponse? data}) =
      _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl;
  const _BaseResponseUnionStudentSchoolInfoResponseNoneType._() : super._();

  factory _BaseResponseUnionStudentSchoolInfoResponseNoneType.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  StudentSchoolInfoResponse? get data;

  /// Create a copy of BaseResponseUnionStudentSchoolInfoResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplCopyWith<
          _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
