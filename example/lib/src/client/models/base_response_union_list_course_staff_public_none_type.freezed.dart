// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_list_course_staff_public_none_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionListCourseStaffPublicNoneType
    _$BaseResponseUnionListCourseStaffPublicNoneTypeFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionListCourseStaffPublicNoneType.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionListCourseStaffPublicNoneType {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<CourseStaffPublic>? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionListCourseStaffPublicNoneType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionListCourseStaffPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionListCourseStaffPublicNoneTypeCopyWith<
          BaseResponseUnionListCourseStaffPublicNoneType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionListCourseStaffPublicNoneTypeCopyWith<$Res> {
  factory $BaseResponseUnionListCourseStaffPublicNoneTypeCopyWith(
          BaseResponseUnionListCourseStaffPublicNoneType value,
          $Res Function(BaseResponseUnionListCourseStaffPublicNoneType) then) =
      _$BaseResponseUnionListCourseStaffPublicNoneTypeCopyWithImpl<$Res,
          BaseResponseUnionListCourseStaffPublicNoneType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<CourseStaffPublic>? data});
}

/// @nodoc
class _$BaseResponseUnionListCourseStaffPublicNoneTypeCopyWithImpl<$Res,
        $Val extends BaseResponseUnionListCourseStaffPublicNoneType>
    implements $BaseResponseUnionListCourseStaffPublicNoneTypeCopyWith<$Res> {
  _$BaseResponseUnionListCourseStaffPublicNoneTypeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionListCourseStaffPublicNoneType
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
              as List<CourseStaffPublic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionListCourseStaffPublicNoneTypeImplCopyWith<
        $Res>
    implements $BaseResponseUnionListCourseStaffPublicNoneTypeCopyWith<$Res> {
  factory _$$BaseResponseUnionListCourseStaffPublicNoneTypeImplCopyWith(
          _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl value,
          $Res Function(_$BaseResponseUnionListCourseStaffPublicNoneTypeImpl)
              then) =
      __$$BaseResponseUnionListCourseStaffPublicNoneTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<CourseStaffPublic>? data});
}

/// @nodoc
class __$$BaseResponseUnionListCourseStaffPublicNoneTypeImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionListCourseStaffPublicNoneTypeCopyWithImpl<$Res,
        _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl>
    implements
        _$$BaseResponseUnionListCourseStaffPublicNoneTypeImplCopyWith<$Res> {
  __$$BaseResponseUnionListCourseStaffPublicNoneTypeImplCopyWithImpl(
      _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl _value,
      $Res Function(_$BaseResponseUnionListCourseStaffPublicNoneTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionListCourseStaffPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionListCourseStaffPublicNoneTypeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CourseStaffPublic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl
    extends _BaseResponseUnionListCourseStaffPublicNoneType {
  const _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<CourseStaffPublic>? data})
      : _data = data,
        super._();

  factory _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionListCourseStaffPublicNoneTypeImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<CourseStaffPublic>? _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<CourseStaffPublic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BaseResponseUnionListCourseStaffPublicNoneType(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseUnionListCourseStaffPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionListCourseStaffPublicNoneTypeImplCopyWith<
          _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl>
      get copyWith =>
          __$$BaseResponseUnionListCourseStaffPublicNoneTypeImplCopyWithImpl<
                  _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionListCourseStaffPublicNoneTypeImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionListCourseStaffPublicNoneType
    extends BaseResponseUnionListCourseStaffPublicNoneType {
  const factory _BaseResponseUnionListCourseStaffPublicNoneType(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final List<CourseStaffPublic>? data}) =
      _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl;
  const _BaseResponseUnionListCourseStaffPublicNoneType._() : super._();

  factory _BaseResponseUnionListCourseStaffPublicNoneType.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<CourseStaffPublic>? get data;

  /// Create a copy of BaseResponseUnionListCourseStaffPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionListCourseStaffPublicNoneTypeImplCopyWith<
          _$BaseResponseUnionListCourseStaffPublicNoneTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
