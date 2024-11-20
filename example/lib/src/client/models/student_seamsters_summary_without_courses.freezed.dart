// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_seamsters_summary_without_courses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentSeamstersSummaryWithoutCourses
    _$StudentSeamstersSummaryWithoutCoursesFromJson(Map<String, dynamic> json) {
  return _StudentSeamstersSummaryWithoutCourses.fromJson(json);
}

/// @nodoc
mixin _$StudentSeamstersSummaryWithoutCourses {
  /// Semesters
  @JsonKey(name: 'semesters')
  List<dynamic>? get semesters => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  StudyYearPublic? get year => throw _privateConstructorUsedError;

  /// Serializes this StudentSeamstersSummaryWithoutCourses to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentSeamstersSummaryWithoutCourses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentSeamstersSummaryWithoutCoursesCopyWith<
          StudentSeamstersSummaryWithoutCourses>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSeamstersSummaryWithoutCoursesCopyWith<$Res> {
  factory $StudentSeamstersSummaryWithoutCoursesCopyWith(
          StudentSeamstersSummaryWithoutCourses value,
          $Res Function(StudentSeamstersSummaryWithoutCourses) then) =
      _$StudentSeamstersSummaryWithoutCoursesCopyWithImpl<$Res,
          StudentSeamstersSummaryWithoutCourses>;
  @useResult
  $Res call(
      {@JsonKey(name: 'semesters') List<dynamic>? semesters,
      @JsonKey(name: 'year') StudyYearPublic? year});

  $StudyYearPublicCopyWith<$Res>? get year;
}

/// @nodoc
class _$StudentSeamstersSummaryWithoutCoursesCopyWithImpl<$Res,
        $Val extends StudentSeamstersSummaryWithoutCourses>
    implements $StudentSeamstersSummaryWithoutCoursesCopyWith<$Res> {
  _$StudentSeamstersSummaryWithoutCoursesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentSeamstersSummaryWithoutCourses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? semesters = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      semesters: freezed == semesters
          ? _value.semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as StudyYearPublic?,
    ) as $Val);
  }

  /// Create a copy of StudentSeamstersSummaryWithoutCourses
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudyYearPublicCopyWith<$Res>? get year {
    if (_value.year == null) {
      return null;
    }

    return $StudyYearPublicCopyWith<$Res>(_value.year!, (value) {
      return _then(_value.copyWith(year: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentSeamstersSummaryWithoutCoursesImplCopyWith<$Res>
    implements $StudentSeamstersSummaryWithoutCoursesCopyWith<$Res> {
  factory _$$StudentSeamstersSummaryWithoutCoursesImplCopyWith(
          _$StudentSeamstersSummaryWithoutCoursesImpl value,
          $Res Function(_$StudentSeamstersSummaryWithoutCoursesImpl) then) =
      __$$StudentSeamstersSummaryWithoutCoursesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'semesters') List<dynamic>? semesters,
      @JsonKey(name: 'year') StudyYearPublic? year});

  @override
  $StudyYearPublicCopyWith<$Res>? get year;
}

/// @nodoc
class __$$StudentSeamstersSummaryWithoutCoursesImplCopyWithImpl<$Res>
    extends _$StudentSeamstersSummaryWithoutCoursesCopyWithImpl<$Res,
        _$StudentSeamstersSummaryWithoutCoursesImpl>
    implements _$$StudentSeamstersSummaryWithoutCoursesImplCopyWith<$Res> {
  __$$StudentSeamstersSummaryWithoutCoursesImplCopyWithImpl(
      _$StudentSeamstersSummaryWithoutCoursesImpl _value,
      $Res Function(_$StudentSeamstersSummaryWithoutCoursesImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentSeamstersSummaryWithoutCourses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? semesters = freezed,
    Object? year = freezed,
  }) {
    return _then(_$StudentSeamstersSummaryWithoutCoursesImpl(
      semesters: freezed == semesters
          ? _value._semesters
          : semesters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as StudyYearPublic?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentSeamstersSummaryWithoutCoursesImpl
    extends _StudentSeamstersSummaryWithoutCourses {
  const _$StudentSeamstersSummaryWithoutCoursesImpl(
      {@JsonKey(name: 'semesters') required final List<dynamic>? semesters,
      @JsonKey(name: 'year') required this.year})
      : _semesters = semesters,
        super._();

  factory _$StudentSeamstersSummaryWithoutCoursesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentSeamstersSummaryWithoutCoursesImplFromJson(json);

  /// Semesters
  final List<dynamic>? _semesters;

  /// Semesters
  @override
  @JsonKey(name: 'semesters')
  List<dynamic>? get semesters {
    final value = _semesters;
    if (value == null) return null;
    if (_semesters is EqualUnmodifiableListView) return _semesters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'year')
  final StudyYearPublic? year;

  @override
  String toString() {
    return 'StudentSeamstersSummaryWithoutCourses(semesters: $semesters, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentSeamstersSummaryWithoutCoursesImpl &&
            const DeepCollectionEquality()
                .equals(other._semesters, _semesters) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_semesters), year);

  /// Create a copy of StudentSeamstersSummaryWithoutCourses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentSeamstersSummaryWithoutCoursesImplCopyWith<
          _$StudentSeamstersSummaryWithoutCoursesImpl>
      get copyWith => __$$StudentSeamstersSummaryWithoutCoursesImplCopyWithImpl<
          _$StudentSeamstersSummaryWithoutCoursesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentSeamstersSummaryWithoutCoursesImplToJson(
      this,
    );
  }
}

abstract class _StudentSeamstersSummaryWithoutCourses
    extends StudentSeamstersSummaryWithoutCourses {
  const factory _StudentSeamstersSummaryWithoutCourses(
          {@JsonKey(name: 'semesters') required final List<dynamic>? semesters,
          @JsonKey(name: 'year') required final StudyYearPublic? year}) =
      _$StudentSeamstersSummaryWithoutCoursesImpl;
  const _StudentSeamstersSummaryWithoutCourses._() : super._();

  factory _StudentSeamstersSummaryWithoutCourses.fromJson(
          Map<String, dynamic> json) =
      _$StudentSeamstersSummaryWithoutCoursesImpl.fromJson;

  /// Semesters
  @override
  @JsonKey(name: 'semesters')
  List<dynamic>? get semesters;
  @override
  @JsonKey(name: 'year')
  StudyYearPublic? get year;

  /// Create a copy of StudentSeamstersSummaryWithoutCourses
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentSeamstersSummaryWithoutCoursesImplCopyWith<
          _$StudentSeamstersSummaryWithoutCoursesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
