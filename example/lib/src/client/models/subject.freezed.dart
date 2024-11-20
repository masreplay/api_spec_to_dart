// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  return _Subject.fromJson(json);
}

/// @nodoc
mixin _$Subject {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'selected_course_id')
  int? get selectedCourseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'arabic_name')
  String? get arabicName => throw _privateConstructorUsedError;
  @JsonKey(name: 'english_name')
  String? get englishName => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_units')
  int? get numberOfUnits => throw _privateConstructorUsedError;
  @JsonKey(name: 'semester_id')
  int? get semesterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_enrolled')
  bool? get isEnrolled => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_enabled')
  bool? get isEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_status')
  int? get courseStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_staff')
  List<dynamic>? get courseStaff => throw _privateConstructorUsedError;

  /// Serializes this Subject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectCopyWith<Subject> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectCopyWith<$Res> {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) then) =
      _$SubjectCopyWithImpl<$Res, Subject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'selected_course_id') int? selectedCourseId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'arabic_name') String? arabicName,
      @JsonKey(name: 'english_name') String? englishName,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'number_of_units') int? numberOfUnits,
      @JsonKey(name: 'semester_id') int? semesterId,
      @JsonKey(name: 'is_enrolled') bool? isEnrolled,
      @JsonKey(name: 'is_enabled') bool? isEnabled,
      @JsonKey(name: 'course_status') int? courseStatus,
      @JsonKey(name: 'course_staff') List<dynamic>? courseStaff});
}

/// @nodoc
class _$SubjectCopyWithImpl<$Res, $Val extends Subject>
    implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? selectedCourseId = freezed,
    Object? name = freezed,
    Object? arabicName = freezed,
    Object? englishName = freezed,
    Object? code = freezed,
    Object? numberOfUnits = freezed,
    Object? semesterId = freezed,
    Object? isEnrolled = freezed,
    Object? isEnabled = freezed,
    Object? courseStatus = freezed,
    Object? courseStaff = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedCourseId: freezed == selectedCourseId
          ? _value.selectedCourseId
          : selectedCourseId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      arabicName: freezed == arabicName
          ? _value.arabicName
          : arabicName // ignore: cast_nullable_to_non_nullable
              as String?,
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfUnits: freezed == numberOfUnits
          ? _value.numberOfUnits
          : numberOfUnits // ignore: cast_nullable_to_non_nullable
              as int?,
      semesterId: freezed == semesterId
          ? _value.semesterId
          : semesterId // ignore: cast_nullable_to_non_nullable
              as int?,
      isEnrolled: freezed == isEnrolled
          ? _value.isEnrolled
          : isEnrolled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      courseStatus: freezed == courseStatus
          ? _value.courseStatus
          : courseStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      courseStaff: freezed == courseStaff
          ? _value.courseStaff
          : courseStaff // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectImplCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$$SubjectImplCopyWith(
          _$SubjectImpl value, $Res Function(_$SubjectImpl) then) =
      __$$SubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'selected_course_id') int? selectedCourseId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'arabic_name') String? arabicName,
      @JsonKey(name: 'english_name') String? englishName,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'number_of_units') int? numberOfUnits,
      @JsonKey(name: 'semester_id') int? semesterId,
      @JsonKey(name: 'is_enrolled') bool? isEnrolled,
      @JsonKey(name: 'is_enabled') bool? isEnabled,
      @JsonKey(name: 'course_status') int? courseStatus,
      @JsonKey(name: 'course_staff') List<dynamic>? courseStaff});
}

/// @nodoc
class __$$SubjectImplCopyWithImpl<$Res>
    extends _$SubjectCopyWithImpl<$Res, _$SubjectImpl>
    implements _$$SubjectImplCopyWith<$Res> {
  __$$SubjectImplCopyWithImpl(
      _$SubjectImpl _value, $Res Function(_$SubjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? selectedCourseId = freezed,
    Object? name = freezed,
    Object? arabicName = freezed,
    Object? englishName = freezed,
    Object? code = freezed,
    Object? numberOfUnits = freezed,
    Object? semesterId = freezed,
    Object? isEnrolled = freezed,
    Object? isEnabled = freezed,
    Object? courseStatus = freezed,
    Object? courseStaff = freezed,
  }) {
    return _then(_$SubjectImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedCourseId: freezed == selectedCourseId
          ? _value.selectedCourseId
          : selectedCourseId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      arabicName: freezed == arabicName
          ? _value.arabicName
          : arabicName // ignore: cast_nullable_to_non_nullable
              as String?,
      englishName: freezed == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfUnits: freezed == numberOfUnits
          ? _value.numberOfUnits
          : numberOfUnits // ignore: cast_nullable_to_non_nullable
              as int?,
      semesterId: freezed == semesterId
          ? _value.semesterId
          : semesterId // ignore: cast_nullable_to_non_nullable
              as int?,
      isEnrolled: freezed == isEnrolled
          ? _value.isEnrolled
          : isEnrolled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      courseStatus: freezed == courseStatus
          ? _value.courseStatus
          : courseStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      courseStaff: freezed == courseStaff
          ? _value._courseStaff
          : courseStaff // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectImpl implements _Subject {
  const _$SubjectImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'selected_course_id') required this.selectedCourseId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'arabic_name') required this.arabicName,
      @JsonKey(name: 'english_name') required this.englishName,
      @JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'number_of_units') required this.numberOfUnits,
      @JsonKey(name: 'semester_id') required this.semesterId,
      @JsonKey(name: 'is_enrolled') required this.isEnrolled,
      @JsonKey(name: 'is_enabled') required this.isEnabled,
      @JsonKey(name: 'course_status') required this.courseStatus,
      @JsonKey(name: 'course_staff') required final List<dynamic>? courseStaff})
      : _courseStaff = courseStaff;

  factory _$SubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'selected_course_id')
  final int? selectedCourseId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'arabic_name')
  final String? arabicName;
  @override
  @JsonKey(name: 'english_name')
  final String? englishName;
  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'number_of_units')
  final int? numberOfUnits;
  @override
  @JsonKey(name: 'semester_id')
  final int? semesterId;
  @override
  @JsonKey(name: 'is_enrolled')
  final bool? isEnrolled;
  @override
  @JsonKey(name: 'is_enabled')
  final bool? isEnabled;
  @override
  @JsonKey(name: 'course_status')
  final int? courseStatus;
  final List<dynamic>? _courseStaff;
  @override
  @JsonKey(name: 'course_staff')
  List<dynamic>? get courseStaff {
    final value = _courseStaff;
    if (value == null) return null;
    if (_courseStaff is EqualUnmodifiableListView) return _courseStaff;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Subject(id: $id, selectedCourseId: $selectedCourseId, name: $name, arabicName: $arabicName, englishName: $englishName, code: $code, numberOfUnits: $numberOfUnits, semesterId: $semesterId, isEnrolled: $isEnrolled, isEnabled: $isEnabled, courseStatus: $courseStatus, courseStaff: $courseStaff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.selectedCourseId, selectedCourseId) ||
                other.selectedCourseId == selectedCourseId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.arabicName, arabicName) ||
                other.arabicName == arabicName) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.numberOfUnits, numberOfUnits) ||
                other.numberOfUnits == numberOfUnits) &&
            (identical(other.semesterId, semesterId) ||
                other.semesterId == semesterId) &&
            (identical(other.isEnrolled, isEnrolled) ||
                other.isEnrolled == isEnrolled) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.courseStatus, courseStatus) ||
                other.courseStatus == courseStatus) &&
            const DeepCollectionEquality()
                .equals(other._courseStaff, _courseStaff));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      selectedCourseId,
      name,
      arabicName,
      englishName,
      code,
      numberOfUnits,
      semesterId,
      isEnrolled,
      isEnabled,
      courseStatus,
      const DeepCollectionEquality().hash(_courseStaff));

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      __$$SubjectImplCopyWithImpl<_$SubjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectImplToJson(
      this,
    );
  }
}

abstract class _Subject implements Subject {
  const factory _Subject(
      {@JsonKey(name: 'id') required final int? id,
      @JsonKey(name: 'selected_course_id') required final int? selectedCourseId,
      @JsonKey(name: 'name') required final String? name,
      @JsonKey(name: 'arabic_name') required final String? arabicName,
      @JsonKey(name: 'english_name') required final String? englishName,
      @JsonKey(name: 'code') required final String? code,
      @JsonKey(name: 'number_of_units') required final int? numberOfUnits,
      @JsonKey(name: 'semester_id') required final int? semesterId,
      @JsonKey(name: 'is_enrolled') required final bool? isEnrolled,
      @JsonKey(name: 'is_enabled') required final bool? isEnabled,
      @JsonKey(name: 'course_status') required final int? courseStatus,
      @JsonKey(name: 'course_staff')
      required final List<dynamic>? courseStaff}) = _$SubjectImpl;

  factory _Subject.fromJson(Map<String, dynamic> json) = _$SubjectImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'selected_course_id')
  int? get selectedCourseId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'arabic_name')
  String? get arabicName;
  @override
  @JsonKey(name: 'english_name')
  String? get englishName;
  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'number_of_units')
  int? get numberOfUnits;
  @override
  @JsonKey(name: 'semester_id')
  int? get semesterId;
  @override
  @JsonKey(name: 'is_enrolled')
  bool? get isEnrolled;
  @override
  @JsonKey(name: 'is_enabled')
  bool? get isEnabled;
  @override
  @JsonKey(name: 'course_status')
  int? get courseStatus;
  @override
  @JsonKey(name: 'course_staff')
  List<dynamic>? get courseStaff;

  /// Create a copy of Subject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectImplCopyWith<_$SubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
