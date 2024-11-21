// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_list_course_staff_public_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionListCourseStaffPublic
    _$BaseResponseUnionListCourseStaffPublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionListCourseStaffPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionListCourseStaffPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<CourseStaffPublic>? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionListCourseStaffPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionListCourseStaffPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionListCourseStaffPublicCopyWith<
          BaseResponseUnionListCourseStaffPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionListCourseStaffPublicCopyWith<$Res> {
  factory $BaseResponseUnionListCourseStaffPublicCopyWith(
          BaseResponseUnionListCourseStaffPublic value,
          $Res Function(BaseResponseUnionListCourseStaffPublic) then) =
      _$BaseResponseUnionListCourseStaffPublicCopyWithImpl<$Res,
          BaseResponseUnionListCourseStaffPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<CourseStaffPublic>? data});
}

/// @nodoc
class _$BaseResponseUnionListCourseStaffPublicCopyWithImpl<$Res,
        $Val extends BaseResponseUnionListCourseStaffPublic>
    implements $BaseResponseUnionListCourseStaffPublicCopyWith<$Res> {
  _$BaseResponseUnionListCourseStaffPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionListCourseStaffPublic
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
abstract class _$$BaseResponseUnionListCourseStaffPublicImplCopyWith<$Res>
    implements $BaseResponseUnionListCourseStaffPublicCopyWith<$Res> {
  factory _$$BaseResponseUnionListCourseStaffPublicImplCopyWith(
          _$BaseResponseUnionListCourseStaffPublicImpl value,
          $Res Function(_$BaseResponseUnionListCourseStaffPublicImpl) then) =
      __$$BaseResponseUnionListCourseStaffPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<CourseStaffPublic>? data});
}

/// @nodoc
class __$$BaseResponseUnionListCourseStaffPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionListCourseStaffPublicCopyWithImpl<$Res,
        _$BaseResponseUnionListCourseStaffPublicImpl>
    implements _$$BaseResponseUnionListCourseStaffPublicImplCopyWith<$Res> {
  __$$BaseResponseUnionListCourseStaffPublicImplCopyWithImpl(
      _$BaseResponseUnionListCourseStaffPublicImpl _value,
      $Res Function(_$BaseResponseUnionListCourseStaffPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionListCourseStaffPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionListCourseStaffPublicImpl(
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
class _$BaseResponseUnionListCourseStaffPublicImpl
    extends _BaseResponseUnionListCourseStaffPublic {
  const _$BaseResponseUnionListCourseStaffPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<CourseStaffPublic>? data})
      : _data = data,
        super._();

  factory _$BaseResponseUnionListCourseStaffPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionListCourseStaffPublicImplFromJson(json);

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
    return 'BaseResponseUnionListCourseStaffPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionListCourseStaffPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseUnionListCourseStaffPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionListCourseStaffPublicImplCopyWith<
          _$BaseResponseUnionListCourseStaffPublicImpl>
      get copyWith =>
          __$$BaseResponseUnionListCourseStaffPublicImplCopyWithImpl<
              _$BaseResponseUnionListCourseStaffPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionListCourseStaffPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionListCourseStaffPublic
    extends BaseResponseUnionListCourseStaffPublic {
  const factory _BaseResponseUnionListCourseStaffPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final List<CourseStaffPublic>? data}) =
      _$BaseResponseUnionListCourseStaffPublicImpl;
  const _BaseResponseUnionListCourseStaffPublic._() : super._();

  factory _BaseResponseUnionListCourseStaffPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionListCourseStaffPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<CourseStaffPublic>? get data;

  /// Create a copy of BaseResponseUnionListCourseStaffPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionListCourseStaffPublicImplCopyWith<
          _$BaseResponseUnionListCourseStaffPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
