// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_distributions_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseDistributionsTable _$CourseDistributionsTableFromJson(
    Map<String, dynamic> json) {
  return _CourseDistributionsTable.fromJson(json);
}

/// @nodoc
mixin _$CourseDistributionsTable {
  /// Academic Year Divisionid
  @JsonKey(name: 'academic_year_divisionId')
  int get academicYearDivisionId => throw _privateConstructorUsedError;

  /// Study Program Id
  @JsonKey(name: 'study_program_id')
  int get studyProgramId => throw _privateConstructorUsedError;

  /// Grade
  @JsonKey(name: 'grade')
  int get grade => throw _privateConstructorUsedError;

  /// Course Id
  @JsonKey(name: 'course_id')
  int get courseId => throw _privateConstructorUsedError;

  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Creator Id
  @JsonKey(name: 'creator_id')
  int get creatorId => throw _privateConstructorUsedError;

  /// Creation Time
  @JsonKey(name: 'creation_time')
  DateTime get creationTime => throw _privateConstructorUsedError;

  /// Last Modifier Id
  @JsonKey(name: 'last_modifier_id')
  int? get lastModifierId => throw _privateConstructorUsedError;

  /// Last Modification Time
  @JsonKey(name: 'last_modification_time')
  DateTime? get lastModificationTime => throw _privateConstructorUsedError;

  /// Is Deleted
  @JsonKey(name: 'is_deleted')
  bool get isDeleted => throw _privateConstructorUsedError;

  /// Deleter Id
  @JsonKey(name: 'deleter_id')
  int? get deleterId => throw _privateConstructorUsedError;

  /// Deletion Time
  @JsonKey(name: 'deletion_time')
  DateTime? get deletionTime => throw _privateConstructorUsedError;

  /// Serializes this CourseDistributionsTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseDistributionsTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseDistributionsTableCopyWith<CourseDistributionsTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDistributionsTableCopyWith<$Res> {
  factory $CourseDistributionsTableCopyWith(CourseDistributionsTable value,
          $Res Function(CourseDistributionsTable) then) =
      _$CourseDistributionsTableCopyWithImpl<$Res, CourseDistributionsTable>;
  @useResult
  $Res call(
      {@JsonKey(name: 'academic_year_divisionId') int academicYearDivisionId,
      @JsonKey(name: 'study_program_id') int studyProgramId,
      @JsonKey(name: 'grade') int grade,
      @JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'creator_id') int creatorId,
      @JsonKey(name: 'creation_time') DateTime creationTime,
      @JsonKey(name: 'last_modifier_id') int? lastModifierId,
      @JsonKey(name: 'last_modification_time') DateTime? lastModificationTime,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      @JsonKey(name: 'deleter_id') int? deleterId,
      @JsonKey(name: 'deletion_time') DateTime? deletionTime});
}

/// @nodoc
class _$CourseDistributionsTableCopyWithImpl<$Res,
        $Val extends CourseDistributionsTable>
    implements $CourseDistributionsTableCopyWith<$Res> {
  _$CourseDistributionsTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseDistributionsTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? academicYearDivisionId = null,
    Object? studyProgramId = null,
    Object? grade = null,
    Object? courseId = null,
    Object? id = null,
    Object? creatorId = null,
    Object? creationTime = null,
    Object? lastModifierId = freezed,
    Object? lastModificationTime = freezed,
    Object? isDeleted = null,
    Object? deleterId = freezed,
    Object? deletionTime = freezed,
  }) {
    return _then(_value.copyWith(
      academicYearDivisionId: null == academicYearDivisionId
          ? _value.academicYearDivisionId
          : academicYearDivisionId // ignore: cast_nullable_to_non_nullable
              as int,
      studyProgramId: null == studyProgramId
          ? _value.studyProgramId
          : studyProgramId // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$CourseDistributionsTableImplCopyWith<$Res>
    implements $CourseDistributionsTableCopyWith<$Res> {
  factory _$$CourseDistributionsTableImplCopyWith(
          _$CourseDistributionsTableImpl value,
          $Res Function(_$CourseDistributionsTableImpl) then) =
      __$$CourseDistributionsTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'academic_year_divisionId') int academicYearDivisionId,
      @JsonKey(name: 'study_program_id') int studyProgramId,
      @JsonKey(name: 'grade') int grade,
      @JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'creator_id') int creatorId,
      @JsonKey(name: 'creation_time') DateTime creationTime,
      @JsonKey(name: 'last_modifier_id') int? lastModifierId,
      @JsonKey(name: 'last_modification_time') DateTime? lastModificationTime,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      @JsonKey(name: 'deleter_id') int? deleterId,
      @JsonKey(name: 'deletion_time') DateTime? deletionTime});
}

/// @nodoc
class __$$CourseDistributionsTableImplCopyWithImpl<$Res>
    extends _$CourseDistributionsTableCopyWithImpl<$Res,
        _$CourseDistributionsTableImpl>
    implements _$$CourseDistributionsTableImplCopyWith<$Res> {
  __$$CourseDistributionsTableImplCopyWithImpl(
      _$CourseDistributionsTableImpl _value,
      $Res Function(_$CourseDistributionsTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseDistributionsTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? academicYearDivisionId = null,
    Object? studyProgramId = null,
    Object? grade = null,
    Object? courseId = null,
    Object? id = null,
    Object? creatorId = null,
    Object? creationTime = null,
    Object? lastModifierId = freezed,
    Object? lastModificationTime = freezed,
    Object? isDeleted = null,
    Object? deleterId = freezed,
    Object? deletionTime = freezed,
  }) {
    return _then(_$CourseDistributionsTableImpl(
      academicYearDivisionId: null == academicYearDivisionId
          ? _value.academicYearDivisionId
          : academicYearDivisionId // ignore: cast_nullable_to_non_nullable
              as int,
      studyProgramId: null == studyProgramId
          ? _value.studyProgramId
          : studyProgramId // ignore: cast_nullable_to_non_nullable
              as int,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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

@JsonSerializable(converters: convertors)
class _$CourseDistributionsTableImpl extends _CourseDistributionsTable {
  const _$CourseDistributionsTableImpl(
      {@JsonKey(name: 'academic_year_divisionId')
      required this.academicYearDivisionId,
      @JsonKey(name: 'study_program_id') required this.studyProgramId,
      @JsonKey(name: 'grade') required this.grade,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'creator_id') required this.creatorId,
      @JsonKey(name: 'creation_time') required this.creationTime,
      @JsonKey(name: 'last_modifier_id') required this.lastModifierId,
      @JsonKey(name: 'last_modification_time')
      required this.lastModificationTime,
      @JsonKey(name: 'is_deleted') required this.isDeleted,
      @JsonKey(name: 'deleter_id') required this.deleterId,
      @JsonKey(name: 'deletion_time') required this.deletionTime})
      : super._();

  factory _$CourseDistributionsTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseDistributionsTableImplFromJson(json);

  /// Academic Year Divisionid
  @override
  @JsonKey(name: 'academic_year_divisionId')
  final int academicYearDivisionId;

  /// Study Program Id
  @override
  @JsonKey(name: 'study_program_id')
  final int studyProgramId;

  /// Grade
  @override
  @JsonKey(name: 'grade')
  final int grade;

  /// Course Id
  @override
  @JsonKey(name: 'course_id')
  final int courseId;

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Creator Id
  @override
  @JsonKey(name: 'creator_id')
  final int creatorId;

  /// Creation Time
  @override
  @JsonKey(name: 'creation_time')
  final DateTime creationTime;

  /// Last Modifier Id
  @override
  @JsonKey(name: 'last_modifier_id')
  final int? lastModifierId;

  /// Last Modification Time
  @override
  @JsonKey(name: 'last_modification_time')
  final DateTime? lastModificationTime;

  /// Is Deleted
  @override
  @JsonKey(name: 'is_deleted')
  final bool isDeleted;

  /// Deleter Id
  @override
  @JsonKey(name: 'deleter_id')
  final int? deleterId;

  /// Deletion Time
  @override
  @JsonKey(name: 'deletion_time')
  final DateTime? deletionTime;

  @override
  String toString() {
    return 'CourseDistributionsTable(academicYearDivisionId: $academicYearDivisionId, studyProgramId: $studyProgramId, grade: $grade, courseId: $courseId, id: $id, creatorId: $creatorId, creationTime: $creationTime, lastModifierId: $lastModifierId, lastModificationTime: $lastModificationTime, isDeleted: $isDeleted, deleterId: $deleterId, deletionTime: $deletionTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDistributionsTableImpl &&
            (identical(other.academicYearDivisionId, academicYearDivisionId) ||
                other.academicYearDivisionId == academicYearDivisionId) &&
            (identical(other.studyProgramId, studyProgramId) ||
                other.studyProgramId == studyProgramId) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      academicYearDivisionId,
      studyProgramId,
      grade,
      courseId,
      id,
      creatorId,
      creationTime,
      lastModifierId,
      lastModificationTime,
      isDeleted,
      deleterId,
      deletionTime);

  /// Create a copy of CourseDistributionsTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDistributionsTableImplCopyWith<_$CourseDistributionsTableImpl>
      get copyWith => __$$CourseDistributionsTableImplCopyWithImpl<
          _$CourseDistributionsTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseDistributionsTableImplToJson(
      this,
    );
  }
}

abstract class _CourseDistributionsTable extends CourseDistributionsTable {
  const factory _CourseDistributionsTable(
      {@JsonKey(name: 'academic_year_divisionId')
      required final int academicYearDivisionId,
      @JsonKey(name: 'study_program_id') required final int studyProgramId,
      @JsonKey(name: 'grade') required final int grade,
      @JsonKey(name: 'course_id') required final int courseId,
      @JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'creator_id') required final int creatorId,
      @JsonKey(name: 'creation_time') required final DateTime creationTime,
      @JsonKey(name: 'last_modifier_id') required final int? lastModifierId,
      @JsonKey(name: 'last_modification_time')
      required final DateTime? lastModificationTime,
      @JsonKey(name: 'is_deleted') required final bool isDeleted,
      @JsonKey(name: 'deleter_id') required final int? deleterId,
      @JsonKey(name: 'deletion_time')
      required final DateTime? deletionTime}) = _$CourseDistributionsTableImpl;
  const _CourseDistributionsTable._() : super._();

  factory _CourseDistributionsTable.fromJson(Map<String, dynamic> json) =
      _$CourseDistributionsTableImpl.fromJson;

  /// Academic Year Divisionid
  @override
  @JsonKey(name: 'academic_year_divisionId')
  int get academicYearDivisionId;

  /// Study Program Id
  @override
  @JsonKey(name: 'study_program_id')
  int get studyProgramId;

  /// Grade
  @override
  @JsonKey(name: 'grade')
  int get grade;

  /// Course Id
  @override
  @JsonKey(name: 'course_id')
  int get courseId;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Creator Id
  @override
  @JsonKey(name: 'creator_id')
  int get creatorId;

  /// Creation Time
  @override
  @JsonKey(name: 'creation_time')
  DateTime get creationTime;

  /// Last Modifier Id
  @override
  @JsonKey(name: 'last_modifier_id')
  int? get lastModifierId;

  /// Last Modification Time
  @override
  @JsonKey(name: 'last_modification_time')
  DateTime? get lastModificationTime;

  /// Is Deleted
  @override
  @JsonKey(name: 'is_deleted')
  bool get isDeleted;

  /// Deleter Id
  @override
  @JsonKey(name: 'deleter_id')
  int? get deleterId;

  /// Deletion Time
  @override
  @JsonKey(name: 'deletion_time')
  DateTime? get deletionTime;

  /// Create a copy of CourseDistributionsTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseDistributionsTableImplCopyWith<_$CourseDistributionsTableImpl>
      get copyWith => throw _privateConstructorUsedError;
}
