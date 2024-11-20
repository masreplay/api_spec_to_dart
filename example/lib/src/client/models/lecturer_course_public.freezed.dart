// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_course_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LecturerCoursePublic _$LecturerCoursePublicFromJson(Map<String, dynamic> json) {
  return _LecturerCoursePublic.fromJson(json);
}

/// @nodoc
mixin _$LecturerCoursePublic {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'lecturer_name')
  String get lecturerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'collage_name')
  String get collageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'division_name')
  String get divisionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_name')
  String get groupName => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_count')
  int? get studentCount => throw _privateConstructorUsedError;

  /// Serializes this LecturerCoursePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LecturerCoursePublicCopyWith<LecturerCoursePublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerCoursePublicCopyWith<$Res> {
  factory $LecturerCoursePublicCopyWith(LecturerCoursePublic value,
          $Res Function(LecturerCoursePublic) then) =
      _$LecturerCoursePublicCopyWithImpl<$Res, LecturerCoursePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'lecturer_name') String lecturerName,
      @JsonKey(name: 'collage_name') String collageName,
      @JsonKey(name: 'division_name') String divisionName,
      @JsonKey(name: 'group_name') String groupName,
      @JsonKey(name: 'student_count') int? studentCount});
}

/// @nodoc
class _$LecturerCoursePublicCopyWithImpl<$Res,
        $Val extends LecturerCoursePublic>
    implements $LecturerCoursePublicCopyWith<$Res> {
  _$LecturerCoursePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lecturerName = null,
    Object? collageName = null,
    Object? divisionName = null,
    Object? groupName = null,
    Object? studentCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lecturerName: null == lecturerName
          ? _value.lecturerName
          : lecturerName // ignore: cast_nullable_to_non_nullable
              as String,
      collageName: null == collageName
          ? _value.collageName
          : collageName // ignore: cast_nullable_to_non_nullable
              as String,
      divisionName: null == divisionName
          ? _value.divisionName
          : divisionName // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      studentCount: freezed == studentCount
          ? _value.studentCount
          : studentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LecturerCoursePublicImplCopyWith<$Res>
    implements $LecturerCoursePublicCopyWith<$Res> {
  factory _$$LecturerCoursePublicImplCopyWith(_$LecturerCoursePublicImpl value,
          $Res Function(_$LecturerCoursePublicImpl) then) =
      __$$LecturerCoursePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'lecturer_name') String lecturerName,
      @JsonKey(name: 'collage_name') String collageName,
      @JsonKey(name: 'division_name') String divisionName,
      @JsonKey(name: 'group_name') String groupName,
      @JsonKey(name: 'student_count') int? studentCount});
}

/// @nodoc
class __$$LecturerCoursePublicImplCopyWithImpl<$Res>
    extends _$LecturerCoursePublicCopyWithImpl<$Res, _$LecturerCoursePublicImpl>
    implements _$$LecturerCoursePublicImplCopyWith<$Res> {
  __$$LecturerCoursePublicImplCopyWithImpl(_$LecturerCoursePublicImpl _value,
      $Res Function(_$LecturerCoursePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of LecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lecturerName = null,
    Object? collageName = null,
    Object? divisionName = null,
    Object? groupName = null,
    Object? studentCount = freezed,
  }) {
    return _then(_$LecturerCoursePublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lecturerName: null == lecturerName
          ? _value.lecturerName
          : lecturerName // ignore: cast_nullable_to_non_nullable
              as String,
      collageName: null == collageName
          ? _value.collageName
          : collageName // ignore: cast_nullable_to_non_nullable
              as String,
      divisionName: null == divisionName
          ? _value.divisionName
          : divisionName // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      studentCount: freezed == studentCount
          ? _value.studentCount
          : studentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$LecturerCoursePublicImpl extends _LecturerCoursePublic {
  const _$LecturerCoursePublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'lecturer_name') required this.lecturerName,
      @JsonKey(name: 'collage_name') required this.collageName,
      @JsonKey(name: 'division_name') required this.divisionName,
      @JsonKey(name: 'group_name') required this.groupName,
      @JsonKey(name: 'student_count') required this.studentCount})
      : super._();

  factory _$LecturerCoursePublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$LecturerCoursePublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'lecturer_name')
  final String lecturerName;
  @override
  @JsonKey(name: 'collage_name')
  final String collageName;
  @override
  @JsonKey(name: 'division_name')
  final String divisionName;
  @override
  @JsonKey(name: 'group_name')
  final String groupName;
  @override
  @JsonKey(name: 'student_count')
  final int? studentCount;

  @override
  String toString() {
    return 'LecturerCoursePublic(id: $id, name: $name, lecturerName: $lecturerName, collageName: $collageName, divisionName: $divisionName, groupName: $groupName, studentCount: $studentCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerCoursePublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lecturerName, lecturerName) ||
                other.lecturerName == lecturerName) &&
            (identical(other.collageName, collageName) ||
                other.collageName == collageName) &&
            (identical(other.divisionName, divisionName) ||
                other.divisionName == divisionName) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.studentCount, studentCount) ||
                other.studentCount == studentCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lecturerName,
      collageName, divisionName, groupName, studentCount);

  /// Create a copy of LecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerCoursePublicImplCopyWith<_$LecturerCoursePublicImpl>
      get copyWith =>
          __$$LecturerCoursePublicImplCopyWithImpl<_$LecturerCoursePublicImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerCoursePublicImplToJson(
      this,
    );
  }
}

abstract class _LecturerCoursePublic extends LecturerCoursePublic {
  const factory _LecturerCoursePublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'lecturer_name') required final String lecturerName,
          @JsonKey(name: 'collage_name') required final String collageName,
          @JsonKey(name: 'division_name') required final String divisionName,
          @JsonKey(name: 'group_name') required final String groupName,
          @JsonKey(name: 'student_count') required final int? studentCount}) =
      _$LecturerCoursePublicImpl;
  const _LecturerCoursePublic._() : super._();

  factory _LecturerCoursePublic.fromJson(Map<String, dynamic> json) =
      _$LecturerCoursePublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'lecturer_name')
  String get lecturerName;
  @override
  @JsonKey(name: 'collage_name')
  String get collageName;
  @override
  @JsonKey(name: 'division_name')
  String get divisionName;
  @override
  @JsonKey(name: 'group_name')
  String get groupName;
  @override
  @JsonKey(name: 'student_count')
  int? get studentCount;

  /// Create a copy of LecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LecturerCoursePublicImplCopyWith<_$LecturerCoursePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
