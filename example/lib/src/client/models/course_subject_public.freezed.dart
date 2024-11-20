// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_subject_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseSubjectPublic _$CourseSubjectPublicFromJson(Map<String, dynamic> json) {
  return _CourseSubjectPublic.fromJson(json);
}

/// @nodoc
mixin _$CourseSubjectPublic {
  @JsonKey(name: 'course_curriculum_id')
  int get courseCurriculumId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_subject_header')
  String get courseSubjectHeader => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_subject_content')
  String get courseSubjectContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'attachments')
  List<dynamic>? get attachments => throw _privateConstructorUsedError;

  /// Serializes this CourseSubjectPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseSubjectPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseSubjectPublicCopyWith<CourseSubjectPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseSubjectPublicCopyWith<$Res> {
  factory $CourseSubjectPublicCopyWith(
          CourseSubjectPublic value, $Res Function(CourseSubjectPublic) then) =
      _$CourseSubjectPublicCopyWithImpl<$Res, CourseSubjectPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'course_curriculum_id') int courseCurriculumId,
      @JsonKey(name: 'course_subject_header') String courseSubjectHeader,
      @JsonKey(name: 'course_subject_content') String courseSubjectContent,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'attachments') List<dynamic>? attachments});
}

/// @nodoc
class _$CourseSubjectPublicCopyWithImpl<$Res, $Val extends CourseSubjectPublic>
    implements $CourseSubjectPublicCopyWith<$Res> {
  _$CourseSubjectPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseSubjectPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseCurriculumId = null,
    Object? courseSubjectHeader = null,
    Object? courseSubjectContent = null,
    Object? id = null,
    Object? attachments = freezed,
  }) {
    return _then(_value.copyWith(
      courseCurriculumId: null == courseCurriculumId
          ? _value.courseCurriculumId
          : courseCurriculumId // ignore: cast_nullable_to_non_nullable
              as int,
      courseSubjectHeader: null == courseSubjectHeader
          ? _value.courseSubjectHeader
          : courseSubjectHeader // ignore: cast_nullable_to_non_nullable
              as String,
      courseSubjectContent: null == courseSubjectContent
          ? _value.courseSubjectContent
          : courseSubjectContent // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseSubjectPublicImplCopyWith<$Res>
    implements $CourseSubjectPublicCopyWith<$Res> {
  factory _$$CourseSubjectPublicImplCopyWith(_$CourseSubjectPublicImpl value,
          $Res Function(_$CourseSubjectPublicImpl) then) =
      __$$CourseSubjectPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'course_curriculum_id') int courseCurriculumId,
      @JsonKey(name: 'course_subject_header') String courseSubjectHeader,
      @JsonKey(name: 'course_subject_content') String courseSubjectContent,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'attachments') List<dynamic>? attachments});
}

/// @nodoc
class __$$CourseSubjectPublicImplCopyWithImpl<$Res>
    extends _$CourseSubjectPublicCopyWithImpl<$Res, _$CourseSubjectPublicImpl>
    implements _$$CourseSubjectPublicImplCopyWith<$Res> {
  __$$CourseSubjectPublicImplCopyWithImpl(_$CourseSubjectPublicImpl _value,
      $Res Function(_$CourseSubjectPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseSubjectPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseCurriculumId = null,
    Object? courseSubjectHeader = null,
    Object? courseSubjectContent = null,
    Object? id = null,
    Object? attachments = freezed,
  }) {
    return _then(_$CourseSubjectPublicImpl(
      courseCurriculumId: null == courseCurriculumId
          ? _value.courseCurriculumId
          : courseCurriculumId // ignore: cast_nullable_to_non_nullable
              as int,
      courseSubjectHeader: null == courseSubjectHeader
          ? _value.courseSubjectHeader
          : courseSubjectHeader // ignore: cast_nullable_to_non_nullable
              as String,
      courseSubjectContent: null == courseSubjectContent
          ? _value.courseSubjectContent
          : courseSubjectContent // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$CourseSubjectPublicImpl extends _CourseSubjectPublic {
  const _$CourseSubjectPublicImpl(
      {@JsonKey(name: 'course_curriculum_id') required this.courseCurriculumId,
      @JsonKey(name: 'course_subject_header') required this.courseSubjectHeader,
      @JsonKey(name: 'course_subject_content')
      required this.courseSubjectContent,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'attachments') required final List<dynamic>? attachments})
      : _attachments = attachments,
        super._();

  factory _$CourseSubjectPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseSubjectPublicImplFromJson(json);

  @override
  @JsonKey(name: 'course_curriculum_id')
  final int courseCurriculumId;
  @override
  @JsonKey(name: 'course_subject_header')
  final String courseSubjectHeader;
  @override
  @JsonKey(name: 'course_subject_content')
  final String courseSubjectContent;
  @override
  @JsonKey(name: 'id')
  final int id;
  final List<dynamic>? _attachments;
  @override
  @JsonKey(name: 'attachments')
  List<dynamic>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CourseSubjectPublic(courseCurriculumId: $courseCurriculumId, courseSubjectHeader: $courseSubjectHeader, courseSubjectContent: $courseSubjectContent, id: $id, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseSubjectPublicImpl &&
            (identical(other.courseCurriculumId, courseCurriculumId) ||
                other.courseCurriculumId == courseCurriculumId) &&
            (identical(other.courseSubjectHeader, courseSubjectHeader) ||
                other.courseSubjectHeader == courseSubjectHeader) &&
            (identical(other.courseSubjectContent, courseSubjectContent) ||
                other.courseSubjectContent == courseSubjectContent) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      courseCurriculumId,
      courseSubjectHeader,
      courseSubjectContent,
      id,
      const DeepCollectionEquality().hash(_attachments));

  /// Create a copy of CourseSubjectPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseSubjectPublicImplCopyWith<_$CourseSubjectPublicImpl> get copyWith =>
      __$$CourseSubjectPublicImplCopyWithImpl<_$CourseSubjectPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseSubjectPublicImplToJson(
      this,
    );
  }
}

abstract class _CourseSubjectPublic extends CourseSubjectPublic {
  const factory _CourseSubjectPublic(
      {@JsonKey(name: 'course_curriculum_id')
      required final int courseCurriculumId,
      @JsonKey(name: 'course_subject_header')
      required final String courseSubjectHeader,
      @JsonKey(name: 'course_subject_content')
      required final String courseSubjectContent,
      @JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'attachments')
      required final List<dynamic>? attachments}) = _$CourseSubjectPublicImpl;
  const _CourseSubjectPublic._() : super._();

  factory _CourseSubjectPublic.fromJson(Map<String, dynamic> json) =
      _$CourseSubjectPublicImpl.fromJson;

  @override
  @JsonKey(name: 'course_curriculum_id')
  int get courseCurriculumId;
  @override
  @JsonKey(name: 'course_subject_header')
  String get courseSubjectHeader;
  @override
  @JsonKey(name: 'course_subject_content')
  String get courseSubjectContent;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'attachments')
  List<dynamic>? get attachments;

  /// Create a copy of CourseSubjectPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseSubjectPublicImplCopyWith<_$CourseSubjectPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
