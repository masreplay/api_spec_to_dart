// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_school_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentSchoolInfoResponse _$StudentSchoolInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _StudentSchoolInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$StudentSchoolInfoResponse {
  @JsonKey(name: 'school_name')
  String? get schoolName => throw _privateConstructorUsedError;
  @JsonKey(name: 'exam_number')
  String? get examNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'study_year_id')
  int? get studyYearId => throw _privateConstructorUsedError;
  @JsonKey(name: 'governorate_id')
  int? get governorateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'directorate_name')
  String? get directorateName => throw _privateConstructorUsedError;
  @JsonKey(name: 'specialization_id')
  int? get specializationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'average')
  num? get average => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  num? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'round')
  int? get round => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_failure_years')
  int? get numberOfFailureYears => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_the_certificate_been_verified')
  bool get hasTheCertificateBeenVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'university_id')
  int? get universityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_iraqi')
  bool? get isIraqi => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_national_card')
  bool? get hasNationalCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'study_year')
  StudyYearPublic? get studyYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'governorate')
  StringGovernoratePublic? get governorate =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'specialization')
  SpecializationPublic? get specialization =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'front_image')
  FilePublic? get frontImage => throw _privateConstructorUsedError;

  /// Serializes this StudentSchoolInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentSchoolInfoResponseCopyWith<StudentSchoolInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSchoolInfoResponseCopyWith<$Res> {
  factory $StudentSchoolInfoResponseCopyWith(StudentSchoolInfoResponse value,
          $Res Function(StudentSchoolInfoResponse) then) =
      _$StudentSchoolInfoResponseCopyWithImpl<$Res, StudentSchoolInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'school_name') String? schoolName,
      @JsonKey(name: 'exam_number') String? examNumber,
      @JsonKey(name: 'study_year_id') int? studyYearId,
      @JsonKey(name: 'governorate_id') int? governorateId,
      @JsonKey(name: 'directorate_name') String? directorateName,
      @JsonKey(name: 'specialization_id') int? specializationId,
      @JsonKey(name: 'average') num? average,
      @JsonKey(name: 'total') num? total,
      @JsonKey(name: 'round') int? round,
      @JsonKey(name: 'number_of_failure_years') int? numberOfFailureYears,
      @JsonKey(name: 'has_the_certificate_been_verified')
      bool hasTheCertificateBeenVerified,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'university_id') int? universityId,
      @JsonKey(name: 'is_iraqi') bool? isIraqi,
      @JsonKey(name: 'has_national_card') bool? hasNationalCard,
      @JsonKey(name: 'study_year') StudyYearPublic? studyYear,
      @JsonKey(name: 'governorate') StringGovernoratePublic? governorate,
      @JsonKey(name: 'specialization') SpecializationPublic? specialization,
      @JsonKey(name: 'front_image') FilePublic? frontImage});

  $StudyYearPublicCopyWith<$Res>? get studyYear;
  $SpecializationPublicCopyWith<$Res>? get specialization;
  $FilePublicCopyWith<$Res>? get frontImage;
}

/// @nodoc
class _$StudentSchoolInfoResponseCopyWithImpl<$Res,
        $Val extends StudentSchoolInfoResponse>
    implements $StudentSchoolInfoResponseCopyWith<$Res> {
  _$StudentSchoolInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolName = freezed,
    Object? examNumber = freezed,
    Object? studyYearId = freezed,
    Object? governorateId = freezed,
    Object? directorateName = freezed,
    Object? specializationId = freezed,
    Object? average = freezed,
    Object? total = freezed,
    Object? round = freezed,
    Object? numberOfFailureYears = freezed,
    Object? hasTheCertificateBeenVerified = null,
    Object? notes = freezed,
    Object? id = null,
    Object? universityId = freezed,
    Object? isIraqi = freezed,
    Object? hasNationalCard = freezed,
    Object? studyYear = freezed,
    Object? governorate = freezed,
    Object? specialization = freezed,
    Object? frontImage = freezed,
  }) {
    return _then(_value.copyWith(
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      examNumber: freezed == examNumber
          ? _value.examNumber
          : examNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      studyYearId: freezed == studyYearId
          ? _value.studyYearId
          : studyYearId // ignore: cast_nullable_to_non_nullable
              as int?,
      governorateId: freezed == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int?,
      directorateName: freezed == directorateName
          ? _value.directorateName
          : directorateName // ignore: cast_nullable_to_non_nullable
              as String?,
      specializationId: freezed == specializationId
          ? _value.specializationId
          : specializationId // ignore: cast_nullable_to_non_nullable
              as int?,
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      round: freezed == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfFailureYears: freezed == numberOfFailureYears
          ? _value.numberOfFailureYears
          : numberOfFailureYears // ignore: cast_nullable_to_non_nullable
              as int?,
      hasTheCertificateBeenVerified: null == hasTheCertificateBeenVerified
          ? _value.hasTheCertificateBeenVerified
          : hasTheCertificateBeenVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      universityId: freezed == universityId
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int?,
      isIraqi: freezed == isIraqi
          ? _value.isIraqi
          : isIraqi // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasNationalCard: freezed == hasNationalCard
          ? _value.hasNationalCard
          : hasNationalCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      studyYear: freezed == studyYear
          ? _value.studyYear
          : studyYear // ignore: cast_nullable_to_non_nullable
              as StudyYearPublic?,
      governorate: freezed == governorate
          ? _value.governorate
          : governorate // ignore: cast_nullable_to_non_nullable
              as StringGovernoratePublic?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as SpecializationPublic?,
      frontImage: freezed == frontImage
          ? _value.frontImage
          : frontImage // ignore: cast_nullable_to_non_nullable
              as FilePublic?,
    ) as $Val);
  }

  /// Create a copy of StudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudyYearPublicCopyWith<$Res>? get studyYear {
    if (_value.studyYear == null) {
      return null;
    }

    return $StudyYearPublicCopyWith<$Res>(_value.studyYear!, (value) {
      return _then(_value.copyWith(studyYear: value) as $Val);
    });
  }

  /// Create a copy of StudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpecializationPublicCopyWith<$Res>? get specialization {
    if (_value.specialization == null) {
      return null;
    }

    return $SpecializationPublicCopyWith<$Res>(_value.specialization!, (value) {
      return _then(_value.copyWith(specialization: value) as $Val);
    });
  }

  /// Create a copy of StudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilePublicCopyWith<$Res>? get frontImage {
    if (_value.frontImage == null) {
      return null;
    }

    return $FilePublicCopyWith<$Res>(_value.frontImage!, (value) {
      return _then(_value.copyWith(frontImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentSchoolInfoResponseImplCopyWith<$Res>
    implements $StudentSchoolInfoResponseCopyWith<$Res> {
  factory _$$StudentSchoolInfoResponseImplCopyWith(
          _$StudentSchoolInfoResponseImpl value,
          $Res Function(_$StudentSchoolInfoResponseImpl) then) =
      __$$StudentSchoolInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'school_name') String? schoolName,
      @JsonKey(name: 'exam_number') String? examNumber,
      @JsonKey(name: 'study_year_id') int? studyYearId,
      @JsonKey(name: 'governorate_id') int? governorateId,
      @JsonKey(name: 'directorate_name') String? directorateName,
      @JsonKey(name: 'specialization_id') int? specializationId,
      @JsonKey(name: 'average') num? average,
      @JsonKey(name: 'total') num? total,
      @JsonKey(name: 'round') int? round,
      @JsonKey(name: 'number_of_failure_years') int? numberOfFailureYears,
      @JsonKey(name: 'has_the_certificate_been_verified')
      bool hasTheCertificateBeenVerified,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'university_id') int? universityId,
      @JsonKey(name: 'is_iraqi') bool? isIraqi,
      @JsonKey(name: 'has_national_card') bool? hasNationalCard,
      @JsonKey(name: 'study_year') StudyYearPublic? studyYear,
      @JsonKey(name: 'governorate') StringGovernoratePublic? governorate,
      @JsonKey(name: 'specialization') SpecializationPublic? specialization,
      @JsonKey(name: 'front_image') FilePublic? frontImage});

  @override
  $StudyYearPublicCopyWith<$Res>? get studyYear;
  @override
  $SpecializationPublicCopyWith<$Res>? get specialization;
  @override
  $FilePublicCopyWith<$Res>? get frontImage;
}

/// @nodoc
class __$$StudentSchoolInfoResponseImplCopyWithImpl<$Res>
    extends _$StudentSchoolInfoResponseCopyWithImpl<$Res,
        _$StudentSchoolInfoResponseImpl>
    implements _$$StudentSchoolInfoResponseImplCopyWith<$Res> {
  __$$StudentSchoolInfoResponseImplCopyWithImpl(
      _$StudentSchoolInfoResponseImpl _value,
      $Res Function(_$StudentSchoolInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolName = freezed,
    Object? examNumber = freezed,
    Object? studyYearId = freezed,
    Object? governorateId = freezed,
    Object? directorateName = freezed,
    Object? specializationId = freezed,
    Object? average = freezed,
    Object? total = freezed,
    Object? round = freezed,
    Object? numberOfFailureYears = freezed,
    Object? hasTheCertificateBeenVerified = null,
    Object? notes = freezed,
    Object? id = null,
    Object? universityId = freezed,
    Object? isIraqi = freezed,
    Object? hasNationalCard = freezed,
    Object? studyYear = freezed,
    Object? governorate = freezed,
    Object? specialization = freezed,
    Object? frontImage = freezed,
  }) {
    return _then(_$StudentSchoolInfoResponseImpl(
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      examNumber: freezed == examNumber
          ? _value.examNumber
          : examNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      studyYearId: freezed == studyYearId
          ? _value.studyYearId
          : studyYearId // ignore: cast_nullable_to_non_nullable
              as int?,
      governorateId: freezed == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int?,
      directorateName: freezed == directorateName
          ? _value.directorateName
          : directorateName // ignore: cast_nullable_to_non_nullable
              as String?,
      specializationId: freezed == specializationId
          ? _value.specializationId
          : specializationId // ignore: cast_nullable_to_non_nullable
              as int?,
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as num?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      round: freezed == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfFailureYears: freezed == numberOfFailureYears
          ? _value.numberOfFailureYears
          : numberOfFailureYears // ignore: cast_nullable_to_non_nullable
              as int?,
      hasTheCertificateBeenVerified: null == hasTheCertificateBeenVerified
          ? _value.hasTheCertificateBeenVerified
          : hasTheCertificateBeenVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      universityId: freezed == universityId
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as int?,
      isIraqi: freezed == isIraqi
          ? _value.isIraqi
          : isIraqi // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasNationalCard: freezed == hasNationalCard
          ? _value.hasNationalCard
          : hasNationalCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      studyYear: freezed == studyYear
          ? _value.studyYear
          : studyYear // ignore: cast_nullable_to_non_nullable
              as StudyYearPublic?,
      governorate: freezed == governorate
          ? _value.governorate
          : governorate // ignore: cast_nullable_to_non_nullable
              as StringGovernoratePublic?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as SpecializationPublic?,
      frontImage: freezed == frontImage
          ? _value.frontImage
          : frontImage // ignore: cast_nullable_to_non_nullable
              as FilePublic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentSchoolInfoResponseImpl implements _StudentSchoolInfoResponse {
  const _$StudentSchoolInfoResponseImpl(
      {@JsonKey(name: 'school_name') required this.schoolName,
      @JsonKey(name: 'exam_number') required this.examNumber,
      @JsonKey(name: 'study_year_id') required this.studyYearId,
      @JsonKey(name: 'governorate_id') required this.governorateId,
      @JsonKey(name: 'directorate_name') required this.directorateName,
      @JsonKey(name: 'specialization_id') required this.specializationId,
      @JsonKey(name: 'average') required this.average,
      @JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'round') required this.round,
      @JsonKey(name: 'number_of_failure_years')
      required this.numberOfFailureYears,
      @JsonKey(name: 'has_the_certificate_been_verified')
      required this.hasTheCertificateBeenVerified,
      @JsonKey(name: 'notes') required this.notes,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'university_id') required this.universityId,
      @JsonKey(name: 'is_iraqi') required this.isIraqi,
      @JsonKey(name: 'has_national_card') required this.hasNationalCard,
      @JsonKey(name: 'study_year') required this.studyYear,
      @JsonKey(name: 'governorate') required this.governorate,
      @JsonKey(name: 'specialization') required this.specialization,
      @JsonKey(name: 'front_image') required this.frontImage});

  factory _$StudentSchoolInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentSchoolInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'school_name')
  final String? schoolName;
  @override
  @JsonKey(name: 'exam_number')
  final String? examNumber;
  @override
  @JsonKey(name: 'study_year_id')
  final int? studyYearId;
  @override
  @JsonKey(name: 'governorate_id')
  final int? governorateId;
  @override
  @JsonKey(name: 'directorate_name')
  final String? directorateName;
  @override
  @JsonKey(name: 'specialization_id')
  final int? specializationId;
  @override
  @JsonKey(name: 'average')
  final num? average;
  @override
  @JsonKey(name: 'total')
  final num? total;
  @override
  @JsonKey(name: 'round')
  final int? round;
  @override
  @JsonKey(name: 'number_of_failure_years')
  final int? numberOfFailureYears;
  @override
  @JsonKey(name: 'has_the_certificate_been_verified')
  final bool hasTheCertificateBeenVerified;
  @override
  @JsonKey(name: 'notes')
  final String? notes;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'university_id')
  final int? universityId;
  @override
  @JsonKey(name: 'is_iraqi')
  final bool? isIraqi;
  @override
  @JsonKey(name: 'has_national_card')
  final bool? hasNationalCard;
  @override
  @JsonKey(name: 'study_year')
  final StudyYearPublic? studyYear;
  @override
  @JsonKey(name: 'governorate')
  final StringGovernoratePublic? governorate;
  @override
  @JsonKey(name: 'specialization')
  final SpecializationPublic? specialization;
  @override
  @JsonKey(name: 'front_image')
  final FilePublic? frontImage;

  @override
  String toString() {
    return 'StudentSchoolInfoResponse(schoolName: $schoolName, examNumber: $examNumber, studyYearId: $studyYearId, governorateId: $governorateId, directorateName: $directorateName, specializationId: $specializationId, average: $average, total: $total, round: $round, numberOfFailureYears: $numberOfFailureYears, hasTheCertificateBeenVerified: $hasTheCertificateBeenVerified, notes: $notes, id: $id, universityId: $universityId, isIraqi: $isIraqi, hasNationalCard: $hasNationalCard, studyYear: $studyYear, governorate: $governorate, specialization: $specialization, frontImage: $frontImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentSchoolInfoResponseImpl &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.examNumber, examNumber) ||
                other.examNumber == examNumber) &&
            (identical(other.studyYearId, studyYearId) ||
                other.studyYearId == studyYearId) &&
            (identical(other.governorateId, governorateId) ||
                other.governorateId == governorateId) &&
            (identical(other.directorateName, directorateName) ||
                other.directorateName == directorateName) &&
            (identical(other.specializationId, specializationId) ||
                other.specializationId == specializationId) &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.numberOfFailureYears, numberOfFailureYears) ||
                other.numberOfFailureYears == numberOfFailureYears) &&
            (identical(other.hasTheCertificateBeenVerified,
                    hasTheCertificateBeenVerified) ||
                other.hasTheCertificateBeenVerified ==
                    hasTheCertificateBeenVerified) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.universityId, universityId) ||
                other.universityId == universityId) &&
            (identical(other.isIraqi, isIraqi) || other.isIraqi == isIraqi) &&
            (identical(other.hasNationalCard, hasNationalCard) ||
                other.hasNationalCard == hasNationalCard) &&
            (identical(other.studyYear, studyYear) ||
                other.studyYear == studyYear) &&
            const DeepCollectionEquality()
                .equals(other.governorate, governorate) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization) &&
            (identical(other.frontImage, frontImage) ||
                other.frontImage == frontImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        schoolName,
        examNumber,
        studyYearId,
        governorateId,
        directorateName,
        specializationId,
        average,
        total,
        round,
        numberOfFailureYears,
        hasTheCertificateBeenVerified,
        notes,
        id,
        universityId,
        isIraqi,
        hasNationalCard,
        studyYear,
        const DeepCollectionEquality().hash(governorate),
        specialization,
        frontImage
      ]);

  /// Create a copy of StudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentSchoolInfoResponseImplCopyWith<_$StudentSchoolInfoResponseImpl>
      get copyWith => __$$StudentSchoolInfoResponseImplCopyWithImpl<
          _$StudentSchoolInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentSchoolInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _StudentSchoolInfoResponse implements StudentSchoolInfoResponse {
  const factory _StudentSchoolInfoResponse(
      {@JsonKey(name: 'school_name') required final String? schoolName,
      @JsonKey(name: 'exam_number') required final String? examNumber,
      @JsonKey(name: 'study_year_id') required final int? studyYearId,
      @JsonKey(name: 'governorate_id') required final int? governorateId,
      @JsonKey(name: 'directorate_name') required final String? directorateName,
      @JsonKey(name: 'specialization_id') required final int? specializationId,
      @JsonKey(name: 'average') required final num? average,
      @JsonKey(name: 'total') required final num? total,
      @JsonKey(name: 'round') required final int? round,
      @JsonKey(name: 'number_of_failure_years')
      required final int? numberOfFailureYears,
      @JsonKey(name: 'has_the_certificate_been_verified')
      required final bool hasTheCertificateBeenVerified,
      @JsonKey(name: 'notes') required final String? notes,
      @JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'university_id') required final int? universityId,
      @JsonKey(name: 'is_iraqi') required final bool? isIraqi,
      @JsonKey(name: 'has_national_card') required final bool? hasNationalCard,
      @JsonKey(name: 'study_year') required final StudyYearPublic? studyYear,
      @JsonKey(name: 'governorate')
      required final StringGovernoratePublic? governorate,
      @JsonKey(name: 'specialization')
      required final SpecializationPublic? specialization,
      @JsonKey(name: 'front_image')
      required final FilePublic? frontImage}) = _$StudentSchoolInfoResponseImpl;

  factory _StudentSchoolInfoResponse.fromJson(Map<String, dynamic> json) =
      _$StudentSchoolInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'school_name')
  String? get schoolName;
  @override
  @JsonKey(name: 'exam_number')
  String? get examNumber;
  @override
  @JsonKey(name: 'study_year_id')
  int? get studyYearId;
  @override
  @JsonKey(name: 'governorate_id')
  int? get governorateId;
  @override
  @JsonKey(name: 'directorate_name')
  String? get directorateName;
  @override
  @JsonKey(name: 'specialization_id')
  int? get specializationId;
  @override
  @JsonKey(name: 'average')
  num? get average;
  @override
  @JsonKey(name: 'total')
  num? get total;
  @override
  @JsonKey(name: 'round')
  int? get round;
  @override
  @JsonKey(name: 'number_of_failure_years')
  int? get numberOfFailureYears;
  @override
  @JsonKey(name: 'has_the_certificate_been_verified')
  bool get hasTheCertificateBeenVerified;
  @override
  @JsonKey(name: 'notes')
  String? get notes;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'university_id')
  int? get universityId;
  @override
  @JsonKey(name: 'is_iraqi')
  bool? get isIraqi;
  @override
  @JsonKey(name: 'has_national_card')
  bool? get hasNationalCard;
  @override
  @JsonKey(name: 'study_year')
  StudyYearPublic? get studyYear;
  @override
  @JsonKey(name: 'governorate')
  StringGovernoratePublic? get governorate;
  @override
  @JsonKey(name: 'specialization')
  SpecializationPublic? get specialization;
  @override
  @JsonKey(name: 'front_image')
  FilePublic? get frontImage;

  /// Create a copy of StudentSchoolInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentSchoolInfoResponseImplCopyWith<_$StudentSchoolInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
