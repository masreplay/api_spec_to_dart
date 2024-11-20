// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_os_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentOSPublic _$StudentOSPublicFromJson(Map<String, dynamic> json) {
  return _StudentOSPublic.fromJson(json);
}

/// @nodoc
mixin _$StudentOSPublic {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'department')
  String? get department => throw _privateConstructorUsedError;
  @JsonKey(name: 'collage')
  String? get collage => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  StudyYearPublic? get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'study_type')
  int? get studyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'grade')
  int? get grade => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_semester')
  String? get currentSemester => throw _privateConstructorUsedError;

  /// Serializes this StudentOSPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentOSPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentOSPublicCopyWith<StudentOSPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentOSPublicCopyWith<$Res> {
  factory $StudentOSPublicCopyWith(
          StudentOSPublic value, $Res Function(StudentOSPublic) then) =
      _$StudentOSPublicCopyWithImpl<$Res, StudentOSPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'department') String? department,
      @JsonKey(name: 'collage') String? collage,
      @JsonKey(name: 'year') StudyYearPublic? year,
      @JsonKey(name: 'study_type') int? studyType,
      @JsonKey(name: 'grade') int? grade,
      @JsonKey(name: 'current_semester') String? currentSemester});

  $StudyYearPublicCopyWith<$Res>? get year;
}

/// @nodoc
class _$StudentOSPublicCopyWithImpl<$Res, $Val extends StudentOSPublic>
    implements $StudentOSPublicCopyWith<$Res> {
  _$StudentOSPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentOSPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? department = freezed,
    Object? collage = freezed,
    Object? year = freezed,
    Object? studyType = freezed,
    Object? grade = freezed,
    Object? currentSemester = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      collage: freezed == collage
          ? _value.collage
          : collage // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as StudyYearPublic?,
      studyType: freezed == studyType
          ? _value.studyType
          : studyType // ignore: cast_nullable_to_non_nullable
              as int?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int?,
      currentSemester: freezed == currentSemester
          ? _value.currentSemester
          : currentSemester // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of StudentOSPublic
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
abstract class _$$StudentOSPublicImplCopyWith<$Res>
    implements $StudentOSPublicCopyWith<$Res> {
  factory _$$StudentOSPublicImplCopyWith(_$StudentOSPublicImpl value,
          $Res Function(_$StudentOSPublicImpl) then) =
      __$$StudentOSPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'department') String? department,
      @JsonKey(name: 'collage') String? collage,
      @JsonKey(name: 'year') StudyYearPublic? year,
      @JsonKey(name: 'study_type') int? studyType,
      @JsonKey(name: 'grade') int? grade,
      @JsonKey(name: 'current_semester') String? currentSemester});

  @override
  $StudyYearPublicCopyWith<$Res>? get year;
}

/// @nodoc
class __$$StudentOSPublicImplCopyWithImpl<$Res>
    extends _$StudentOSPublicCopyWithImpl<$Res, _$StudentOSPublicImpl>
    implements _$$StudentOSPublicImplCopyWith<$Res> {
  __$$StudentOSPublicImplCopyWithImpl(
      _$StudentOSPublicImpl _value, $Res Function(_$StudentOSPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentOSPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? department = freezed,
    Object? collage = freezed,
    Object? year = freezed,
    Object? studyType = freezed,
    Object? grade = freezed,
    Object? currentSemester = freezed,
  }) {
    return _then(_$StudentOSPublicImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      collage: freezed == collage
          ? _value.collage
          : collage // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as StudyYearPublic?,
      studyType: freezed == studyType
          ? _value.studyType
          : studyType // ignore: cast_nullable_to_non_nullable
              as int?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as int?,
      currentSemester: freezed == currentSemester
          ? _value.currentSemester
          : currentSemester // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentOSPublicImpl extends _StudentOSPublic {
  const _$StudentOSPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'department') required this.department,
      @JsonKey(name: 'collage') required this.collage,
      @JsonKey(name: 'year') required this.year,
      @JsonKey(name: 'study_type') required this.studyType,
      @JsonKey(name: 'grade') required this.grade,
      @JsonKey(name: 'current_semester') required this.currentSemester})
      : super._();

  factory _$StudentOSPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentOSPublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'department')
  final String? department;
  @override
  @JsonKey(name: 'collage')
  final String? collage;
  @override
  @JsonKey(name: 'year')
  final StudyYearPublic? year;
  @override
  @JsonKey(name: 'study_type')
  final int? studyType;
  @override
  @JsonKey(name: 'grade')
  final int? grade;
  @override
  @JsonKey(name: 'current_semester')
  final String? currentSemester;

  @override
  String toString() {
    return 'StudentOSPublic(id: $id, department: $department, collage: $collage, year: $year, studyType: $studyType, grade: $grade, currentSemester: $currentSemester)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentOSPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.collage, collage) || other.collage == collage) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.studyType, studyType) ||
                other.studyType == studyType) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.currentSemester, currentSemester) ||
                other.currentSemester == currentSemester));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, department, collage, year,
      studyType, grade, currentSemester);

  /// Create a copy of StudentOSPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentOSPublicImplCopyWith<_$StudentOSPublicImpl> get copyWith =>
      __$$StudentOSPublicImplCopyWithImpl<_$StudentOSPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentOSPublicImplToJson(
      this,
    );
  }
}

abstract class _StudentOSPublic extends StudentOSPublic {
  const factory _StudentOSPublic(
      {@JsonKey(name: 'id') required final int? id,
      @JsonKey(name: 'department') required final String? department,
      @JsonKey(name: 'collage') required final String? collage,
      @JsonKey(name: 'year') required final StudyYearPublic? year,
      @JsonKey(name: 'study_type') required final int? studyType,
      @JsonKey(name: 'grade') required final int? grade,
      @JsonKey(name: 'current_semester')
      required final String? currentSemester}) = _$StudentOSPublicImpl;
  const _StudentOSPublic._() : super._();

  factory _StudentOSPublic.fromJson(Map<String, dynamic> json) =
      _$StudentOSPublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'department')
  String? get department;
  @override
  @JsonKey(name: 'collage')
  String? get collage;
  @override
  @JsonKey(name: 'year')
  StudyYearPublic? get year;
  @override
  @JsonKey(name: 'study_type')
  int? get studyType;
  @override
  @JsonKey(name: 'grade')
  int? get grade;
  @override
  @JsonKey(name: 'current_semester')
  String? get currentSemester;

  /// Create a copy of StudentOSPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentOSPublicImplCopyWith<_$StudentOSPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
