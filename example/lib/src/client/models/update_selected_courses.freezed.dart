// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_selected_courses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateSelectedCourses _$UpdateSelectedCoursesFromJson(
    Map<String, dynamic> json) {
  return _UpdateSelectedCourses.fromJson(json);
}

/// @nodoc
mixin _$UpdateSelectedCourses {
  @JsonKey(name: 'course_id')
  int get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_stuff_id')
  int get courseStuffId => throw _privateConstructorUsedError;

  /// Serializes this UpdateSelectedCourses to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSelectedCourses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSelectedCoursesCopyWith<UpdateSelectedCourses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSelectedCoursesCopyWith<$Res> {
  factory $UpdateSelectedCoursesCopyWith(UpdateSelectedCourses value,
          $Res Function(UpdateSelectedCourses) then) =
      _$UpdateSelectedCoursesCopyWithImpl<$Res, UpdateSelectedCourses>;
  @useResult
  $Res call(
      {@JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'course_stuff_id') int courseStuffId});
}

/// @nodoc
class _$UpdateSelectedCoursesCopyWithImpl<$Res,
        $Val extends UpdateSelectedCourses>
    implements $UpdateSelectedCoursesCopyWith<$Res> {
  _$UpdateSelectedCoursesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSelectedCourses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? courseStuffId = null,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      courseStuffId: null == courseStuffId
          ? _value.courseStuffId
          : courseStuffId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSelectedCoursesImplCopyWith<$Res>
    implements $UpdateSelectedCoursesCopyWith<$Res> {
  factory _$$UpdateSelectedCoursesImplCopyWith(
          _$UpdateSelectedCoursesImpl value,
          $Res Function(_$UpdateSelectedCoursesImpl) then) =
      __$$UpdateSelectedCoursesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'course_stuff_id') int courseStuffId});
}

/// @nodoc
class __$$UpdateSelectedCoursesImplCopyWithImpl<$Res>
    extends _$UpdateSelectedCoursesCopyWithImpl<$Res,
        _$UpdateSelectedCoursesImpl>
    implements _$$UpdateSelectedCoursesImplCopyWith<$Res> {
  __$$UpdateSelectedCoursesImplCopyWithImpl(_$UpdateSelectedCoursesImpl _value,
      $Res Function(_$UpdateSelectedCoursesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSelectedCourses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? courseStuffId = null,
  }) {
    return _then(_$UpdateSelectedCoursesImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      courseStuffId: null == courseStuffId
          ? _value.courseStuffId
          : courseStuffId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSelectedCoursesImpl implements _UpdateSelectedCourses {
  const _$UpdateSelectedCoursesImpl(
      {@JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'course_stuff_id') required this.courseStuffId});

  factory _$UpdateSelectedCoursesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateSelectedCoursesImplFromJson(json);

  @override
  @JsonKey(name: 'course_id')
  final int courseId;
  @override
  @JsonKey(name: 'course_stuff_id')
  final int courseStuffId;

  @override
  String toString() {
    return 'UpdateSelectedCourses(courseId: $courseId, courseStuffId: $courseStuffId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedCoursesImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseStuffId, courseStuffId) ||
                other.courseStuffId == courseStuffId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, courseId, courseStuffId);

  /// Create a copy of UpdateSelectedCourses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedCoursesImplCopyWith<_$UpdateSelectedCoursesImpl>
      get copyWith => __$$UpdateSelectedCoursesImplCopyWithImpl<
          _$UpdateSelectedCoursesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSelectedCoursesImplToJson(
      this,
    );
  }
}

abstract class _UpdateSelectedCourses implements UpdateSelectedCourses {
  const factory _UpdateSelectedCourses(
          {@JsonKey(name: 'course_id') required final int courseId,
          @JsonKey(name: 'course_stuff_id') required final int courseStuffId}) =
      _$UpdateSelectedCoursesImpl;

  factory _UpdateSelectedCourses.fromJson(Map<String, dynamic> json) =
      _$UpdateSelectedCoursesImpl.fromJson;

  @override
  @JsonKey(name: 'course_id')
  int get courseId;
  @override
  @JsonKey(name: 'course_stuff_id')
  int get courseStuffId;

  /// Create a copy of UpdateSelectedCourses
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSelectedCoursesImplCopyWith<_$UpdateSelectedCoursesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
