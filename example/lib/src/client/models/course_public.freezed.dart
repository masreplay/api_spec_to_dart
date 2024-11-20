// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoursePublic _$CoursePublicFromJson(Map<String, dynamic> json) {
  return _CoursePublic.fromJson(json);
}

/// @nodoc
mixin _$CoursePublic {
  @JsonKey(name: 'course_code')
  String get courseCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_classifications')
  int? get courseClassifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_credits')
  int get totalCredits => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_result_type')
  int get courseResultType => throw _privateConstructorUsedError;
  @JsonKey(name: 'highest_grade')
  int get highestGrade => throw _privateConstructorUsedError;
  @JsonKey(name: 'lowest_grade')
  int get lowestGrade => throw _privateConstructorUsedError;
  @JsonKey(name: 'prerequisite_hours')
  int? get prerequisiteHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_version')
  String? get courseVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_status')
  StudentCourseStatusEnum? get courseStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'course_fees')
  int get courseFees => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_distribution_level')
  int get courseDistributionLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_staffs')
  List<dynamic>? get courseStaffs => throw _privateConstructorUsedError;
  @JsonKey(name: 'seamster')
  AcademicYearDivisionPublic? get seamster =>
      throw _privateConstructorUsedError;

  /// Serializes this CoursePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoursePublicCopyWith<CoursePublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursePublicCopyWith<$Res> {
  factory $CoursePublicCopyWith(
          CoursePublic value, $Res Function(CoursePublic) then) =
      _$CoursePublicCopyWithImpl<$Res, CoursePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'course_code') String courseCode,
      @JsonKey(name: 'course_classifications') int? courseClassifications,
      @JsonKey(name: 'total_credits') int totalCredits,
      @JsonKey(name: 'course_result_type') int courseResultType,
      @JsonKey(name: 'highest_grade') int highestGrade,
      @JsonKey(name: 'lowest_grade') int lowestGrade,
      @JsonKey(name: 'prerequisite_hours') int? prerequisiteHours,
      @JsonKey(name: 'course_version') String? courseVersion,
      @JsonKey(name: 'course_status') StudentCourseStatusEnum? courseStatus,
      @JsonKey(name: 'course_fees') int courseFees,
      @JsonKey(name: 'course_distribution_level') int courseDistributionLevel,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'course_staffs') List<dynamic>? courseStaffs,
      @JsonKey(name: 'seamster') AcademicYearDivisionPublic? seamster});

  $StudentCourseStatusEnumCopyWith<$Res>? get courseStatus;
  $AcademicYearDivisionPublicCopyWith<$Res>? get seamster;
}

/// @nodoc
class _$CoursePublicCopyWithImpl<$Res, $Val extends CoursePublic>
    implements $CoursePublicCopyWith<$Res> {
  _$CoursePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseCode = null,
    Object? courseClassifications = freezed,
    Object? totalCredits = null,
    Object? courseResultType = null,
    Object? highestGrade = null,
    Object? lowestGrade = null,
    Object? prerequisiteHours = freezed,
    Object? courseVersion = freezed,
    Object? courseStatus = freezed,
    Object? courseFees = null,
    Object? courseDistributionLevel = null,
    Object? id = null,
    Object? name = freezed,
    Object? courseStaffs = freezed,
    Object? seamster = freezed,
  }) {
    return _then(_value.copyWith(
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseClassifications: freezed == courseClassifications
          ? _value.courseClassifications
          : courseClassifications // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCredits: null == totalCredits
          ? _value.totalCredits
          : totalCredits // ignore: cast_nullable_to_non_nullable
              as int,
      courseResultType: null == courseResultType
          ? _value.courseResultType
          : courseResultType // ignore: cast_nullable_to_non_nullable
              as int,
      highestGrade: null == highestGrade
          ? _value.highestGrade
          : highestGrade // ignore: cast_nullable_to_non_nullable
              as int,
      lowestGrade: null == lowestGrade
          ? _value.lowestGrade
          : lowestGrade // ignore: cast_nullable_to_non_nullable
              as int,
      prerequisiteHours: freezed == prerequisiteHours
          ? _value.prerequisiteHours
          : prerequisiteHours // ignore: cast_nullable_to_non_nullable
              as int?,
      courseVersion: freezed == courseVersion
          ? _value.courseVersion
          : courseVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      courseStatus: freezed == courseStatus
          ? _value.courseStatus
          : courseStatus // ignore: cast_nullable_to_non_nullable
              as StudentCourseStatusEnum?,
      courseFees: null == courseFees
          ? _value.courseFees
          : courseFees // ignore: cast_nullable_to_non_nullable
              as int,
      courseDistributionLevel: null == courseDistributionLevel
          ? _value.courseDistributionLevel
          : courseDistributionLevel // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      courseStaffs: freezed == courseStaffs
          ? _value.courseStaffs
          : courseStaffs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      seamster: freezed == seamster
          ? _value.seamster
          : seamster // ignore: cast_nullable_to_non_nullable
              as AcademicYearDivisionPublic?,
    ) as $Val);
  }

  /// Create a copy of CoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentCourseStatusEnumCopyWith<$Res>? get courseStatus {
    if (_value.courseStatus == null) {
      return null;
    }

    return $StudentCourseStatusEnumCopyWith<$Res>(_value.courseStatus!,
        (value) {
      return _then(_value.copyWith(courseStatus: value) as $Val);
    });
  }

  /// Create a copy of CoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AcademicYearDivisionPublicCopyWith<$Res>? get seamster {
    if (_value.seamster == null) {
      return null;
    }

    return $AcademicYearDivisionPublicCopyWith<$Res>(_value.seamster!, (value) {
      return _then(_value.copyWith(seamster: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoursePublicImplCopyWith<$Res>
    implements $CoursePublicCopyWith<$Res> {
  factory _$$CoursePublicImplCopyWith(
          _$CoursePublicImpl value, $Res Function(_$CoursePublicImpl) then) =
      __$$CoursePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'course_code') String courseCode,
      @JsonKey(name: 'course_classifications') int? courseClassifications,
      @JsonKey(name: 'total_credits') int totalCredits,
      @JsonKey(name: 'course_result_type') int courseResultType,
      @JsonKey(name: 'highest_grade') int highestGrade,
      @JsonKey(name: 'lowest_grade') int lowestGrade,
      @JsonKey(name: 'prerequisite_hours') int? prerequisiteHours,
      @JsonKey(name: 'course_version') String? courseVersion,
      @JsonKey(name: 'course_status') StudentCourseStatusEnum? courseStatus,
      @JsonKey(name: 'course_fees') int courseFees,
      @JsonKey(name: 'course_distribution_level') int courseDistributionLevel,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'course_staffs') List<dynamic>? courseStaffs,
      @JsonKey(name: 'seamster') AcademicYearDivisionPublic? seamster});

  @override
  $StudentCourseStatusEnumCopyWith<$Res>? get courseStatus;
  @override
  $AcademicYearDivisionPublicCopyWith<$Res>? get seamster;
}

/// @nodoc
class __$$CoursePublicImplCopyWithImpl<$Res>
    extends _$CoursePublicCopyWithImpl<$Res, _$CoursePublicImpl>
    implements _$$CoursePublicImplCopyWith<$Res> {
  __$$CoursePublicImplCopyWithImpl(
      _$CoursePublicImpl _value, $Res Function(_$CoursePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseCode = null,
    Object? courseClassifications = freezed,
    Object? totalCredits = null,
    Object? courseResultType = null,
    Object? highestGrade = null,
    Object? lowestGrade = null,
    Object? prerequisiteHours = freezed,
    Object? courseVersion = freezed,
    Object? courseStatus = freezed,
    Object? courseFees = null,
    Object? courseDistributionLevel = null,
    Object? id = null,
    Object? name = freezed,
    Object? courseStaffs = freezed,
    Object? seamster = freezed,
  }) {
    return _then(_$CoursePublicImpl(
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseClassifications: freezed == courseClassifications
          ? _value.courseClassifications
          : courseClassifications // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCredits: null == totalCredits
          ? _value.totalCredits
          : totalCredits // ignore: cast_nullable_to_non_nullable
              as int,
      courseResultType: null == courseResultType
          ? _value.courseResultType
          : courseResultType // ignore: cast_nullable_to_non_nullable
              as int,
      highestGrade: null == highestGrade
          ? _value.highestGrade
          : highestGrade // ignore: cast_nullable_to_non_nullable
              as int,
      lowestGrade: null == lowestGrade
          ? _value.lowestGrade
          : lowestGrade // ignore: cast_nullable_to_non_nullable
              as int,
      prerequisiteHours: freezed == prerequisiteHours
          ? _value.prerequisiteHours
          : prerequisiteHours // ignore: cast_nullable_to_non_nullable
              as int?,
      courseVersion: freezed == courseVersion
          ? _value.courseVersion
          : courseVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      courseStatus: freezed == courseStatus
          ? _value.courseStatus
          : courseStatus // ignore: cast_nullable_to_non_nullable
              as StudentCourseStatusEnum?,
      courseFees: null == courseFees
          ? _value.courseFees
          : courseFees // ignore: cast_nullable_to_non_nullable
              as int,
      courseDistributionLevel: null == courseDistributionLevel
          ? _value.courseDistributionLevel
          : courseDistributionLevel // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      courseStaffs: freezed == courseStaffs
          ? _value._courseStaffs
          : courseStaffs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      seamster: freezed == seamster
          ? _value.seamster
          : seamster // ignore: cast_nullable_to_non_nullable
              as AcademicYearDivisionPublic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoursePublicImpl implements _CoursePublic {
  const _$CoursePublicImpl(
      {@JsonKey(name: 'course_code') required this.courseCode,
      @JsonKey(name: 'course_classifications')
      required this.courseClassifications,
      @JsonKey(name: 'total_credits') required this.totalCredits,
      @JsonKey(name: 'course_result_type') required this.courseResultType,
      @JsonKey(name: 'highest_grade') required this.highestGrade,
      @JsonKey(name: 'lowest_grade') required this.lowestGrade,
      @JsonKey(name: 'prerequisite_hours') required this.prerequisiteHours,
      @JsonKey(name: 'course_version') required this.courseVersion,
      @JsonKey(name: 'course_status') required this.courseStatus,
      @JsonKey(name: 'course_fees') required this.courseFees,
      @JsonKey(name: 'course_distribution_level')
      required this.courseDistributionLevel,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'course_staffs')
      required final List<dynamic>? courseStaffs,
      @JsonKey(name: 'seamster') required this.seamster})
      : _courseStaffs = courseStaffs;

  factory _$CoursePublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoursePublicImplFromJson(json);

  @override
  @JsonKey(name: 'course_code')
  final String courseCode;
  @override
  @JsonKey(name: 'course_classifications')
  final int? courseClassifications;
  @override
  @JsonKey(name: 'total_credits')
  final int totalCredits;
  @override
  @JsonKey(name: 'course_result_type')
  final int courseResultType;
  @override
  @JsonKey(name: 'highest_grade')
  final int highestGrade;
  @override
  @JsonKey(name: 'lowest_grade')
  final int lowestGrade;
  @override
  @JsonKey(name: 'prerequisite_hours')
  final int? prerequisiteHours;
  @override
  @JsonKey(name: 'course_version')
  final String? courseVersion;
  @override
  @JsonKey(name: 'course_status')
  final StudentCourseStatusEnum? courseStatus;
  @override
  @JsonKey(name: 'course_fees')
  final int courseFees;
  @override
  @JsonKey(name: 'course_distribution_level')
  final int courseDistributionLevel;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  final List<dynamic>? _courseStaffs;
  @override
  @JsonKey(name: 'course_staffs')
  List<dynamic>? get courseStaffs {
    final value = _courseStaffs;
    if (value == null) return null;
    if (_courseStaffs is EqualUnmodifiableListView) return _courseStaffs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'seamster')
  final AcademicYearDivisionPublic? seamster;

  @override
  String toString() {
    return 'CoursePublic(courseCode: $courseCode, courseClassifications: $courseClassifications, totalCredits: $totalCredits, courseResultType: $courseResultType, highestGrade: $highestGrade, lowestGrade: $lowestGrade, prerequisiteHours: $prerequisiteHours, courseVersion: $courseVersion, courseStatus: $courseStatus, courseFees: $courseFees, courseDistributionLevel: $courseDistributionLevel, id: $id, name: $name, courseStaffs: $courseStaffs, seamster: $seamster)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursePublicImpl &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.courseClassifications, courseClassifications) ||
                other.courseClassifications == courseClassifications) &&
            (identical(other.totalCredits, totalCredits) ||
                other.totalCredits == totalCredits) &&
            (identical(other.courseResultType, courseResultType) ||
                other.courseResultType == courseResultType) &&
            (identical(other.highestGrade, highestGrade) ||
                other.highestGrade == highestGrade) &&
            (identical(other.lowestGrade, lowestGrade) ||
                other.lowestGrade == lowestGrade) &&
            (identical(other.prerequisiteHours, prerequisiteHours) ||
                other.prerequisiteHours == prerequisiteHours) &&
            (identical(other.courseVersion, courseVersion) ||
                other.courseVersion == courseVersion) &&
            (identical(other.courseStatus, courseStatus) ||
                other.courseStatus == courseStatus) &&
            (identical(other.courseFees, courseFees) ||
                other.courseFees == courseFees) &&
            (identical(
                    other.courseDistributionLevel, courseDistributionLevel) ||
                other.courseDistributionLevel == courseDistributionLevel) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._courseStaffs, _courseStaffs) &&
            (identical(other.seamster, seamster) ||
                other.seamster == seamster));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      courseCode,
      courseClassifications,
      totalCredits,
      courseResultType,
      highestGrade,
      lowestGrade,
      prerequisiteHours,
      courseVersion,
      courseStatus,
      courseFees,
      courseDistributionLevel,
      id,
      name,
      const DeepCollectionEquality().hash(_courseStaffs),
      seamster);

  /// Create a copy of CoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursePublicImplCopyWith<_$CoursePublicImpl> get copyWith =>
      __$$CoursePublicImplCopyWithImpl<_$CoursePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoursePublicImplToJson(
      this,
    );
  }
}

abstract class _CoursePublic implements CoursePublic {
  const factory _CoursePublic(
      {@JsonKey(name: 'course_code') required final String courseCode,
      @JsonKey(name: 'course_classifications')
      required final int? courseClassifications,
      @JsonKey(name: 'total_credits') required final int totalCredits,
      @JsonKey(name: 'course_result_type') required final int courseResultType,
      @JsonKey(name: 'highest_grade') required final int highestGrade,
      @JsonKey(name: 'lowest_grade') required final int lowestGrade,
      @JsonKey(name: 'prerequisite_hours')
      required final int? prerequisiteHours,
      @JsonKey(name: 'course_version') required final String? courseVersion,
      @JsonKey(name: 'course_status')
      required final StudentCourseStatusEnum? courseStatus,
      @JsonKey(name: 'course_fees') required final int courseFees,
      @JsonKey(name: 'course_distribution_level')
      required final int courseDistributionLevel,
      @JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String? name,
      @JsonKey(name: 'course_staffs')
      required final List<dynamic>? courseStaffs,
      @JsonKey(name: 'seamster')
      required final AcademicYearDivisionPublic?
          seamster}) = _$CoursePublicImpl;

  factory _CoursePublic.fromJson(Map<String, dynamic> json) =
      _$CoursePublicImpl.fromJson;

  @override
  @JsonKey(name: 'course_code')
  String get courseCode;
  @override
  @JsonKey(name: 'course_classifications')
  int? get courseClassifications;
  @override
  @JsonKey(name: 'total_credits')
  int get totalCredits;
  @override
  @JsonKey(name: 'course_result_type')
  int get courseResultType;
  @override
  @JsonKey(name: 'highest_grade')
  int get highestGrade;
  @override
  @JsonKey(name: 'lowest_grade')
  int get lowestGrade;
  @override
  @JsonKey(name: 'prerequisite_hours')
  int? get prerequisiteHours;
  @override
  @JsonKey(name: 'course_version')
  String? get courseVersion;
  @override
  @JsonKey(name: 'course_status')
  StudentCourseStatusEnum? get courseStatus;
  @override
  @JsonKey(name: 'course_fees')
  int get courseFees;
  @override
  @JsonKey(name: 'course_distribution_level')
  int get courseDistributionLevel;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'course_staffs')
  List<dynamic>? get courseStaffs;
  @override
  @JsonKey(name: 'seamster')
  AcademicYearDivisionPublic? get seamster;

  /// Create a copy of CoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoursePublicImplCopyWith<_$CoursePublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
