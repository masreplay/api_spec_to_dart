// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseTable _$CourseTableFromJson(Map<String, dynamic> json) {
  return _CourseTable.fromJson(json);
}

/// @nodoc
mixin _$CourseTable {
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
  @JsonKey(name: 'arabic_name')
  String? get arabicName => throw _privateConstructorUsedError;
  @JsonKey(name: 'english_name')
  String? get englishName => throw _privateConstructorUsedError;
  @JsonKey(name: 'organizational_structure_id')
  int get organizationalStructureId => throw _privateConstructorUsedError;
  @JsonKey(name: 'academic_learning_framework_system_id')
  int get academicLearningFrameworkSystemId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'course_leader_id')
  int get courseLeaderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_reviewer_id')
  int get courseReviewerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_tutor_id')
  int get courseTutorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_id')
  int get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_time')
  DateTime get creationTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_modifier_id')
  int? get lastModifierId => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_modification_time')
  DateTime? get lastModificationTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted')
  bool get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleter_id')
  int? get deleterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletion_time')
  DateTime? get deletionTime => throw _privateConstructorUsedError;

  /// Serializes this CourseTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseTableCopyWith<CourseTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTableCopyWith<$Res> {
  factory $CourseTableCopyWith(
          CourseTable value, $Res Function(CourseTable) then) =
      _$CourseTableCopyWithImpl<$Res, CourseTable>;
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
      @JsonKey(name: 'arabic_name') String? arabicName,
      @JsonKey(name: 'english_name') String? englishName,
      @JsonKey(name: 'organizational_structure_id')
      int organizationalStructureId,
      @JsonKey(name: 'academic_learning_framework_system_id')
      int academicLearningFrameworkSystemId,
      @JsonKey(name: 'course_leader_id') int courseLeaderId,
      @JsonKey(name: 'course_reviewer_id') int courseReviewerId,
      @JsonKey(name: 'course_tutor_id') int courseTutorId,
      @JsonKey(name: 'creator_id') int creatorId,
      @JsonKey(name: 'creation_time') DateTime creationTime,
      @JsonKey(name: 'last_modifier_id') int? lastModifierId,
      @JsonKey(name: 'last_modification_time') DateTime? lastModificationTime,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      @JsonKey(name: 'deleter_id') int? deleterId,
      @JsonKey(name: 'deletion_time') DateTime? deletionTime});

  $StudentCourseStatusEnumCopyWith<$Res>? get courseStatus;
}

/// @nodoc
class _$CourseTableCopyWithImpl<$Res, $Val extends CourseTable>
    implements $CourseTableCopyWith<$Res> {
  _$CourseTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseTable
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
    Object? arabicName = freezed,
    Object? englishName = freezed,
    Object? organizationalStructureId = null,
    Object? academicLearningFrameworkSystemId = null,
    Object? courseLeaderId = null,
    Object? courseReviewerId = null,
    Object? courseTutorId = null,
    Object? creatorId = null,
    Object? creationTime = null,
    Object? lastModifierId = freezed,
    Object? lastModificationTime = freezed,
    Object? isDeleted = null,
    Object? deleterId = freezed,
    Object? deletionTime = freezed,
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
      arabicName: freezed == arabicName
          ? _value.arabicName
          : arabicName // ignore: cast_nullable_to_non_nullable
              as String?,
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationalStructureId: null == organizationalStructureId
          ? _value.organizationalStructureId
          : organizationalStructureId // ignore: cast_nullable_to_non_nullable
              as int,
      academicLearningFrameworkSystemId: null ==
              academicLearningFrameworkSystemId
          ? _value.academicLearningFrameworkSystemId
          : academicLearningFrameworkSystemId // ignore: cast_nullable_to_non_nullable
              as int,
      courseLeaderId: null == courseLeaderId
          ? _value.courseLeaderId
          : courseLeaderId // ignore: cast_nullable_to_non_nullable
              as int,
      courseReviewerId: null == courseReviewerId
          ? _value.courseReviewerId
          : courseReviewerId // ignore: cast_nullable_to_non_nullable
              as int,
      courseTutorId: null == courseTutorId
          ? _value.courseTutorId
          : courseTutorId // ignore: cast_nullable_to_non_nullable
              as int,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastModifierId: freezed == lastModifierId
          ? _value.lastModifierId
          : lastModifierId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastModificationTime: freezed == lastModificationTime
          ? _value.lastModificationTime
          : lastModificationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deleterId: freezed == deleterId
          ? _value.deleterId
          : deleterId // ignore: cast_nullable_to_non_nullable
              as int?,
      deletionTime: freezed == deletionTime
          ? _value.deletionTime
          : deletionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of CourseTable
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
}

/// @nodoc
abstract class _$$CourseTableImplCopyWith<$Res>
    implements $CourseTableCopyWith<$Res> {
  factory _$$CourseTableImplCopyWith(
          _$CourseTableImpl value, $Res Function(_$CourseTableImpl) then) =
      __$$CourseTableImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'arabic_name') String? arabicName,
      @JsonKey(name: 'english_name') String? englishName,
      @JsonKey(name: 'organizational_structure_id')
      int organizationalStructureId,
      @JsonKey(name: 'academic_learning_framework_system_id')
      int academicLearningFrameworkSystemId,
      @JsonKey(name: 'course_leader_id') int courseLeaderId,
      @JsonKey(name: 'course_reviewer_id') int courseReviewerId,
      @JsonKey(name: 'course_tutor_id') int courseTutorId,
      @JsonKey(name: 'creator_id') int creatorId,
      @JsonKey(name: 'creation_time') DateTime creationTime,
      @JsonKey(name: 'last_modifier_id') int? lastModifierId,
      @JsonKey(name: 'last_modification_time') DateTime? lastModificationTime,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      @JsonKey(name: 'deleter_id') int? deleterId,
      @JsonKey(name: 'deletion_time') DateTime? deletionTime});

  @override
  $StudentCourseStatusEnumCopyWith<$Res>? get courseStatus;
}

/// @nodoc
class __$$CourseTableImplCopyWithImpl<$Res>
    extends _$CourseTableCopyWithImpl<$Res, _$CourseTableImpl>
    implements _$$CourseTableImplCopyWith<$Res> {
  __$$CourseTableImplCopyWithImpl(
      _$CourseTableImpl _value, $Res Function(_$CourseTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseTable
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
    Object? arabicName = freezed,
    Object? englishName = freezed,
    Object? organizationalStructureId = null,
    Object? academicLearningFrameworkSystemId = null,
    Object? courseLeaderId = null,
    Object? courseReviewerId = null,
    Object? courseTutorId = null,
    Object? creatorId = null,
    Object? creationTime = null,
    Object? lastModifierId = freezed,
    Object? lastModificationTime = freezed,
    Object? isDeleted = null,
    Object? deleterId = freezed,
    Object? deletionTime = freezed,
  }) {
    return _then(_$CourseTableImpl(
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
      arabicName: freezed == arabicName
          ? _value.arabicName
          : arabicName // ignore: cast_nullable_to_non_nullable
              as String?,
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationalStructureId: null == organizationalStructureId
          ? _value.organizationalStructureId
          : organizationalStructureId // ignore: cast_nullable_to_non_nullable
              as int,
      academicLearningFrameworkSystemId: null ==
              academicLearningFrameworkSystemId
          ? _value.academicLearningFrameworkSystemId
          : academicLearningFrameworkSystemId // ignore: cast_nullable_to_non_nullable
              as int,
      courseLeaderId: null == courseLeaderId
          ? _value.courseLeaderId
          : courseLeaderId // ignore: cast_nullable_to_non_nullable
              as int,
      courseReviewerId: null == courseReviewerId
          ? _value.courseReviewerId
          : courseReviewerId // ignore: cast_nullable_to_non_nullable
              as int,
      courseTutorId: null == courseTutorId
          ? _value.courseTutorId
          : courseTutorId // ignore: cast_nullable_to_non_nullable
              as int,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastModifierId: freezed == lastModifierId
          ? _value.lastModifierId
          : lastModifierId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastModificationTime: freezed == lastModificationTime
          ? _value.lastModificationTime
          : lastModificationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deleterId: freezed == deleterId
          ? _value.deleterId
          : deleterId // ignore: cast_nullable_to_non_nullable
              as int?,
      deletionTime: freezed == deletionTime
          ? _value.deletionTime
          : deletionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseTableImpl implements _CourseTable {
  const _$CourseTableImpl(
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
      @JsonKey(name: 'arabic_name') required this.arabicName,
      @JsonKey(name: 'english_name') required this.englishName,
      @JsonKey(name: 'organizational_structure_id')
      required this.organizationalStructureId,
      @JsonKey(name: 'academic_learning_framework_system_id')
      required this.academicLearningFrameworkSystemId,
      @JsonKey(name: 'course_leader_id') required this.courseLeaderId,
      @JsonKey(name: 'course_reviewer_id') required this.courseReviewerId,
      @JsonKey(name: 'course_tutor_id') required this.courseTutorId,
      @JsonKey(name: 'creator_id') required this.creatorId,
      @JsonKey(name: 'creation_time') required this.creationTime,
      @JsonKey(name: 'last_modifier_id') required this.lastModifierId,
      @JsonKey(name: 'last_modification_time')
      required this.lastModificationTime,
      @JsonKey(name: 'is_deleted') required this.isDeleted,
      @JsonKey(name: 'deleter_id') required this.deleterId,
      @JsonKey(name: 'deletion_time') required this.deletionTime});

  factory _$CourseTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseTableImplFromJson(json);

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
  @JsonKey(name: 'arabic_name')
  final String? arabicName;
  @override
  @JsonKey(name: 'english_name')
  final String? englishName;
  @override
  @JsonKey(name: 'organizational_structure_id')
  final int organizationalStructureId;
  @override
  @JsonKey(name: 'academic_learning_framework_system_id')
  final int academicLearningFrameworkSystemId;
  @override
  @JsonKey(name: 'course_leader_id')
  final int courseLeaderId;
  @override
  @JsonKey(name: 'course_reviewer_id')
  final int courseReviewerId;
  @override
  @JsonKey(name: 'course_tutor_id')
  final int courseTutorId;
  @override
  @JsonKey(name: 'creator_id')
  final int creatorId;
  @override
  @JsonKey(name: 'creation_time')
  final DateTime creationTime;
  @override
  @JsonKey(name: 'last_modifier_id')
  final int? lastModifierId;
  @override
  @JsonKey(name: 'last_modification_time')
  final DateTime? lastModificationTime;
  @override
  @JsonKey(name: 'is_deleted')
  final bool isDeleted;
  @override
  @JsonKey(name: 'deleter_id')
  final int? deleterId;
  @override
  @JsonKey(name: 'deletion_time')
  final DateTime? deletionTime;

  @override
  String toString() {
    return 'CourseTable(courseCode: $courseCode, courseClassifications: $courseClassifications, totalCredits: $totalCredits, courseResultType: $courseResultType, highestGrade: $highestGrade, lowestGrade: $lowestGrade, prerequisiteHours: $prerequisiteHours, courseVersion: $courseVersion, courseStatus: $courseStatus, courseFees: $courseFees, courseDistributionLevel: $courseDistributionLevel, id: $id, arabicName: $arabicName, englishName: $englishName, organizationalStructureId: $organizationalStructureId, academicLearningFrameworkSystemId: $academicLearningFrameworkSystemId, courseLeaderId: $courseLeaderId, courseReviewerId: $courseReviewerId, courseTutorId: $courseTutorId, creatorId: $creatorId, creationTime: $creationTime, lastModifierId: $lastModifierId, lastModificationTime: $lastModificationTime, isDeleted: $isDeleted, deleterId: $deleterId, deletionTime: $deletionTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTableImpl &&
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
            (identical(other.arabicName, arabicName) ||
                other.arabicName == arabicName) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.organizationalStructureId, organizationalStructureId) ||
                other.organizationalStructureId == organizationalStructureId) &&
            (identical(other.academicLearningFrameworkSystemId,
                    academicLearningFrameworkSystemId) ||
                other.academicLearningFrameworkSystemId ==
                    academicLearningFrameworkSystemId) &&
            (identical(other.courseLeaderId, courseLeaderId) ||
                other.courseLeaderId == courseLeaderId) &&
            (identical(other.courseReviewerId, courseReviewerId) ||
                other.courseReviewerId == courseReviewerId) &&
            (identical(other.courseTutorId, courseTutorId) ||
                other.courseTutorId == courseTutorId) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime) &&
            (identical(other.lastModifierId, lastModifierId) ||
                other.lastModifierId == lastModifierId) &&
            (identical(other.lastModificationTime, lastModificationTime) ||
                other.lastModificationTime == lastModificationTime) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.deleterId, deleterId) ||
                other.deleterId == deleterId) &&
            (identical(other.deletionTime, deletionTime) ||
                other.deletionTime == deletionTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
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
        arabicName,
        englishName,
        organizationalStructureId,
        academicLearningFrameworkSystemId,
        courseLeaderId,
        courseReviewerId,
        courseTutorId,
        creatorId,
        creationTime,
        lastModifierId,
        lastModificationTime,
        isDeleted,
        deleterId,
        deletionTime
      ]);

  /// Create a copy of CourseTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTableImplCopyWith<_$CourseTableImpl> get copyWith =>
      __$$CourseTableImplCopyWithImpl<_$CourseTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseTableImplToJson(
      this,
    );
  }
}

abstract class _CourseTable implements CourseTable {
  const factory _CourseTable(
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
      @JsonKey(name: 'arabic_name') required final String? arabicName,
      @JsonKey(name: 'english_name') required final String? englishName,
      @JsonKey(name: 'organizational_structure_id')
      required final int organizationalStructureId,
      @JsonKey(name: 'academic_learning_framework_system_id')
      required final int academicLearningFrameworkSystemId,
      @JsonKey(name: 'course_leader_id') required final int courseLeaderId,
      @JsonKey(name: 'course_reviewer_id') required final int courseReviewerId,
      @JsonKey(name: 'course_tutor_id') required final int courseTutorId,
      @JsonKey(name: 'creator_id') required final int creatorId,
      @JsonKey(name: 'creation_time') required final DateTime creationTime,
      @JsonKey(name: 'last_modifier_id') required final int? lastModifierId,
      @JsonKey(name: 'last_modification_time')
      required final DateTime? lastModificationTime,
      @JsonKey(name: 'is_deleted') required final bool isDeleted,
      @JsonKey(name: 'deleter_id') required final int? deleterId,
      @JsonKey(name: 'deletion_time')
      required final DateTime? deletionTime}) = _$CourseTableImpl;

  factory _CourseTable.fromJson(Map<String, dynamic> json) =
      _$CourseTableImpl.fromJson;

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
  @JsonKey(name: 'arabic_name')
  String? get arabicName;
  @override
  @JsonKey(name: 'english_name')
  String? get englishName;
  @override
  @JsonKey(name: 'organizational_structure_id')
  int get organizationalStructureId;
  @override
  @JsonKey(name: 'academic_learning_framework_system_id')
  int get academicLearningFrameworkSystemId;
  @override
  @JsonKey(name: 'course_leader_id')
  int get courseLeaderId;
  @override
  @JsonKey(name: 'course_reviewer_id')
  int get courseReviewerId;
  @override
  @JsonKey(name: 'course_tutor_id')
  int get courseTutorId;
  @override
  @JsonKey(name: 'creator_id')
  int get creatorId;
  @override
  @JsonKey(name: 'creation_time')
  DateTime get creationTime;
  @override
  @JsonKey(name: 'last_modifier_id')
  int? get lastModifierId;
  @override
  @JsonKey(name: 'last_modification_time')
  DateTime? get lastModificationTime;
  @override
  @JsonKey(name: 'is_deleted')
  bool get isDeleted;
  @override
  @JsonKey(name: 'deleter_id')
  int? get deleterId;
  @override
  @JsonKey(name: 'deletion_time')
  DateTime? get deletionTime;

  /// Create a copy of CourseTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseTableImplCopyWith<_$CourseTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
