// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_feed_study_program_section_data_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeFeedStudyProgramSectionDataPublic
    _$HomeFeedStudyProgramSectionDataPublicFromJson(Map<String, dynamic> json) {
  return _HomeFeedStudyProgramSectionDataPublic.fromJson(json);
}

/// @nodoc
mixin _$HomeFeedStudyProgramSectionDataPublic {
  /// Study Program Id
  @JsonKey(name: 'study_program_id')
  int get studyProgramId => throw _privateConstructorUsedError;

  /// Name
  @JsonKey(name: 'name')
  int get name => throw _privateConstructorUsedError;

  /// Study Year
  @JsonKey(name: 'study_year')
  String get studyYear => throw _privateConstructorUsedError;

  /// Study Year Formatted
  @JsonKey(name: 'study_year_formatted')
  String get studyYearFormatted => throw _privateConstructorUsedError;
  @JsonKey(name: 'study_type')
  StudyProgramType get studyType => throw _privateConstructorUsedError;

  /// Study Type Formatted
  @JsonKey(name: 'study_type_formatted')
  String get studyTypeFormatted => throw _privateConstructorUsedError;

  /// Semester
  @JsonKey(name: 'semester')
  String get semester => throw _privateConstructorUsedError;

  /// Grade
  @JsonKey(name: 'grade')
  int get grade => throw _privateConstructorUsedError;

  /// Grade Formatted
  @JsonKey(name: 'grade_formatted')
  String get gradeFormatted => throw _privateConstructorUsedError;

  /// Serializes this HomeFeedStudyProgramSectionDataPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeFeedStudyProgramSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeFeedStudyProgramSectionDataPublicCopyWith<
          HomeFeedStudyProgramSectionDataPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFeedStudyProgramSectionDataPublicCopyWith<$Res> {
  factory $HomeFeedStudyProgramSectionDataPublicCopyWith(
          HomeFeedStudyProgramSectionDataPublic value,
          $Res Function(HomeFeedStudyProgramSectionDataPublic) then) =
      _$HomeFeedStudyProgramSectionDataPublicCopyWithImpl<$Res,
          HomeFeedStudyProgramSectionDataPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'study_program_id') int studyProgramId,
      @JsonKey(name: 'name') int name,
      @JsonKey(name: 'study_year') String studyYear,
      @JsonKey(name: 'study_year_formatted') String studyYearFormatted,
      @JsonKey(name: 'study_type') StudyProgramType studyType,
      @JsonKey(name: 'study_type_formatted') String studyTypeFormatted,
      @JsonKey(name: 'semester') String semester,
      @JsonKey(name: 'grade') int grade,
      @JsonKey(name: 'grade_formatted') String gradeFormatted});

  $StudyProgramTypeCopyWith<$Res> get studyType;
}

/// @nodoc
class _$HomeFeedStudyProgramSectionDataPublicCopyWithImpl<$Res,
        $Val extends HomeFeedStudyProgramSectionDataPublic>
    implements $HomeFeedStudyProgramSectionDataPublicCopyWith<$Res> {
  _$HomeFeedStudyProgramSectionDataPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeFeedStudyProgramSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studyProgramId = null,
    Object? name = null,
    Object? studyYear = null,
    Object? studyYearFormatted = null,
    Object? studyType = null,
    Object? studyTypeFormatted = null,
    Object? semester = null,
    Object? grade = null,
    Object? gradeFormatted = null,
  }) {
    return _then(_value.copyWith(
      studyProgramId: null == studyProgramId
          ? _value.studyProgramId
          : studyProgramId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as int,
      studyYear: null == studyYear
          ? _value.studyYear
          : studyYear // ignore: cast_nullable_to_non_nullable
              as String,
      studyYearFormatted: null == studyYearFormatted
          ? _value.studyYearFormatted
          : studyYearFormatted // ignore: cast_nullable_to_non_nullable
              as String,
      studyType: null == studyType
          ? _value.studyType
          : studyType // ignore: cast_nullable_to_non_nullable
              as StudyProgramType,
      studyTypeFormatted: null == studyTypeFormatted
          ? _value.studyTypeFormatted
          : studyTypeFormatted // ignore: cast_nullable_to_non_nullable
              as String,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      gradeFormatted: null == gradeFormatted
          ? _value.gradeFormatted
          : gradeFormatted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of HomeFeedStudyProgramSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudyProgramTypeCopyWith<$Res> get studyType {
    return $StudyProgramTypeCopyWith<$Res>(_value.studyType, (value) {
      return _then(_value.copyWith(studyType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeFeedStudyProgramSectionDataPublicImplCopyWith<$Res>
    implements $HomeFeedStudyProgramSectionDataPublicCopyWith<$Res> {
  factory _$$HomeFeedStudyProgramSectionDataPublicImplCopyWith(
          _$HomeFeedStudyProgramSectionDataPublicImpl value,
          $Res Function(_$HomeFeedStudyProgramSectionDataPublicImpl) then) =
      __$$HomeFeedStudyProgramSectionDataPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'study_program_id') int studyProgramId,
      @JsonKey(name: 'name') int name,
      @JsonKey(name: 'study_year') String studyYear,
      @JsonKey(name: 'study_year_formatted') String studyYearFormatted,
      @JsonKey(name: 'study_type') StudyProgramType studyType,
      @JsonKey(name: 'study_type_formatted') String studyTypeFormatted,
      @JsonKey(name: 'semester') String semester,
      @JsonKey(name: 'grade') int grade,
      @JsonKey(name: 'grade_formatted') String gradeFormatted});

  @override
  $StudyProgramTypeCopyWith<$Res> get studyType;
}

/// @nodoc
class __$$HomeFeedStudyProgramSectionDataPublicImplCopyWithImpl<$Res>
    extends _$HomeFeedStudyProgramSectionDataPublicCopyWithImpl<$Res,
        _$HomeFeedStudyProgramSectionDataPublicImpl>
    implements _$$HomeFeedStudyProgramSectionDataPublicImplCopyWith<$Res> {
  __$$HomeFeedStudyProgramSectionDataPublicImplCopyWithImpl(
      _$HomeFeedStudyProgramSectionDataPublicImpl _value,
      $Res Function(_$HomeFeedStudyProgramSectionDataPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeFeedStudyProgramSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studyProgramId = null,
    Object? name = null,
    Object? studyYear = null,
    Object? studyYearFormatted = null,
    Object? studyType = null,
    Object? studyTypeFormatted = null,
    Object? semester = null,
    Object? grade = null,
    Object? gradeFormatted = null,
  }) {
    return _then(_$HomeFeedStudyProgramSectionDataPublicImpl(
      studyProgramId: null == studyProgramId
          ? _value.studyProgramId
          : studyProgramId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as int,
      studyYear: null == studyYear
          ? _value.studyYear
          : studyYear // ignore: cast_nullable_to_non_nullable
              as String,
      studyYearFormatted: null == studyYearFormatted
          ? _value.studyYearFormatted
          : studyYearFormatted // ignore: cast_nullable_to_non_nullable
              as String,
      studyType: null == studyType
          ? _value.studyType
          : studyType // ignore: cast_nullable_to_non_nullable
              as StudyProgramType,
      studyTypeFormatted: null == studyTypeFormatted
          ? _value.studyTypeFormatted
          : studyTypeFormatted // ignore: cast_nullable_to_non_nullable
              as String,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int,
      gradeFormatted: null == gradeFormatted
          ? _value.gradeFormatted
          : gradeFormatted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$HomeFeedStudyProgramSectionDataPublicImpl
    extends _HomeFeedStudyProgramSectionDataPublic {
  const _$HomeFeedStudyProgramSectionDataPublicImpl(
      {@JsonKey(name: 'study_program_id') required this.studyProgramId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'study_year') required this.studyYear,
      @JsonKey(name: 'study_year_formatted') required this.studyYearFormatted,
      @JsonKey(name: 'study_type') required this.studyType,
      @JsonKey(name: 'study_type_formatted') required this.studyTypeFormatted,
      @JsonKey(name: 'semester') required this.semester,
      @JsonKey(name: 'grade') required this.grade,
      @JsonKey(name: 'grade_formatted') required this.gradeFormatted})
      : super._();

  factory _$HomeFeedStudyProgramSectionDataPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HomeFeedStudyProgramSectionDataPublicImplFromJson(json);

  /// Study Program Id
  @override
  @JsonKey(name: 'study_program_id')
  final int studyProgramId;

  /// Name
  @override
  @JsonKey(name: 'name')
  final int name;

  /// Study Year
  @override
  @JsonKey(name: 'study_year')
  final String studyYear;

  /// Study Year Formatted
  @override
  @JsonKey(name: 'study_year_formatted')
  final String studyYearFormatted;
  @override
  @JsonKey(name: 'study_type')
  final StudyProgramType studyType;

  /// Study Type Formatted
  @override
  @JsonKey(name: 'study_type_formatted')
  final String studyTypeFormatted;

  /// Semester
  @override
  @JsonKey(name: 'semester')
  final String semester;

  /// Grade
  @override
  @JsonKey(name: 'grade')
  final int grade;

  /// Grade Formatted
  @override
  @JsonKey(name: 'grade_formatted')
  final String gradeFormatted;

  @override
  String toString() {
    return 'HomeFeedStudyProgramSectionDataPublic(studyProgramId: $studyProgramId, name: $name, studyYear: $studyYear, studyYearFormatted: $studyYearFormatted, studyType: $studyType, studyTypeFormatted: $studyTypeFormatted, semester: $semester, grade: $grade, gradeFormatted: $gradeFormatted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFeedStudyProgramSectionDataPublicImpl &&
            (identical(other.studyProgramId, studyProgramId) ||
                other.studyProgramId == studyProgramId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.studyYear, studyYear) ||
                other.studyYear == studyYear) &&
            (identical(other.studyYearFormatted, studyYearFormatted) ||
                other.studyYearFormatted == studyYearFormatted) &&
            (identical(other.studyType, studyType) ||
                other.studyType == studyType) &&
            (identical(other.studyTypeFormatted, studyTypeFormatted) ||
                other.studyTypeFormatted == studyTypeFormatted) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.gradeFormatted, gradeFormatted) ||
                other.gradeFormatted == gradeFormatted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      studyProgramId,
      name,
      studyYear,
      studyYearFormatted,
      studyType,
      studyTypeFormatted,
      semester,
      grade,
      gradeFormatted);

  /// Create a copy of HomeFeedStudyProgramSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeFeedStudyProgramSectionDataPublicImplCopyWith<
          _$HomeFeedStudyProgramSectionDataPublicImpl>
      get copyWith => __$$HomeFeedStudyProgramSectionDataPublicImplCopyWithImpl<
          _$HomeFeedStudyProgramSectionDataPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeFeedStudyProgramSectionDataPublicImplToJson(
      this,
    );
  }
}

abstract class _HomeFeedStudyProgramSectionDataPublic
    extends HomeFeedStudyProgramSectionDataPublic {
  const factory _HomeFeedStudyProgramSectionDataPublic(
      {@JsonKey(name: 'study_program_id') required final int studyProgramId,
      @JsonKey(name: 'name') required final int name,
      @JsonKey(name: 'study_year') required final String studyYear,
      @JsonKey(name: 'study_year_formatted')
      required final String studyYearFormatted,
      @JsonKey(name: 'study_type') required final StudyProgramType studyType,
      @JsonKey(name: 'study_type_formatted')
      required final String studyTypeFormatted,
      @JsonKey(name: 'semester') required final String semester,
      @JsonKey(name: 'grade') required final int grade,
      @JsonKey(name: 'grade_formatted')
      required final String
          gradeFormatted}) = _$HomeFeedStudyProgramSectionDataPublicImpl;
  const _HomeFeedStudyProgramSectionDataPublic._() : super._();

  factory _HomeFeedStudyProgramSectionDataPublic.fromJson(
          Map<String, dynamic> json) =
      _$HomeFeedStudyProgramSectionDataPublicImpl.fromJson;

  /// Study Program Id
  @override
  @JsonKey(name: 'study_program_id')
  int get studyProgramId;

  /// Name
  @override
  @JsonKey(name: 'name')
  int get name;

  /// Study Year
  @override
  @JsonKey(name: 'study_year')
  String get studyYear;

  /// Study Year Formatted
  @override
  @JsonKey(name: 'study_year_formatted')
  String get studyYearFormatted;
  @override
  @JsonKey(name: 'study_type')
  StudyProgramType get studyType;

  /// Study Type Formatted
  @override
  @JsonKey(name: 'study_type_formatted')
  String get studyTypeFormatted;

  /// Semester
  @override
  @JsonKey(name: 'semester')
  String get semester;

  /// Grade
  @override
  @JsonKey(name: 'grade')
  int get grade;

  /// Grade Formatted
  @override
  @JsonKey(name: 'grade_formatted')
  String get gradeFormatted;

  /// Create a copy of HomeFeedStudyProgramSectionDataPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeFeedStudyProgramSectionDataPublicImplCopyWith<
          _$HomeFeedStudyProgramSectionDataPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
