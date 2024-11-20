// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_api_routes_v1_student_attendance_route_lecture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppApiRoutesV1StudentAttendanceRouteLecture
    _$AppApiRoutesV1StudentAttendanceRouteLectureFromJson(
        Map<String, dynamic> json) {
  return _AppApiRoutesV1StudentAttendanceRouteLecture.fromJson(json);
}

/// @nodoc
mixin _$AppApiRoutesV1StudentAttendanceRouteLecture {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject_title')
  String get subjectTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  DateTime get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  DateTime get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_code')
  String get groupCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'semester_name')
  String get semesterName => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_code')
  String get roomCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int get duration => throw _privateConstructorUsedError;

  /// Serializes this AppApiRoutesV1StudentAttendanceRouteLecture to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppApiRoutesV1StudentAttendanceRouteLecture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppApiRoutesV1StudentAttendanceRouteLectureCopyWith<
          AppApiRoutesV1StudentAttendanceRouteLecture>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppApiRoutesV1StudentAttendanceRouteLectureCopyWith<$Res> {
  factory $AppApiRoutesV1StudentAttendanceRouteLectureCopyWith(
          AppApiRoutesV1StudentAttendanceRouteLecture value,
          $Res Function(AppApiRoutesV1StudentAttendanceRouteLecture) then) =
      _$AppApiRoutesV1StudentAttendanceRouteLectureCopyWithImpl<$Res,
          AppApiRoutesV1StudentAttendanceRouteLecture>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'subject_title') String subjectTitle,
      @JsonKey(name: 'start_time') DateTime startTime,
      @JsonKey(name: 'end_time') DateTime endTime,
      @JsonKey(name: 'group_code') String groupCode,
      @JsonKey(name: 'semester_name') String semesterName,
      @JsonKey(name: 'room_code') String roomCode,
      @JsonKey(name: 'duration') int duration});
}

/// @nodoc
class _$AppApiRoutesV1StudentAttendanceRouteLectureCopyWithImpl<$Res,
        $Val extends AppApiRoutesV1StudentAttendanceRouteLecture>
    implements $AppApiRoutesV1StudentAttendanceRouteLectureCopyWith<$Res> {
  _$AppApiRoutesV1StudentAttendanceRouteLectureCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppApiRoutesV1StudentAttendanceRouteLecture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subjectTitle = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? groupCode = null,
    Object? semesterName = null,
    Object? roomCode = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subjectTitle: null == subjectTitle
          ? _value.subjectTitle
          : subjectTitle // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupCode: null == groupCode
          ? _value.groupCode
          : groupCode // ignore: cast_nullable_to_non_nullable
              as String,
      semesterName: null == semesterName
          ? _value.semesterName
          : semesterName // ignore: cast_nullable_to_non_nullable
              as String,
      roomCode: null == roomCode
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppApiRoutesV1StudentAttendanceRouteLectureImplCopyWith<$Res>
    implements $AppApiRoutesV1StudentAttendanceRouteLectureCopyWith<$Res> {
  factory _$$AppApiRoutesV1StudentAttendanceRouteLectureImplCopyWith(
          _$AppApiRoutesV1StudentAttendanceRouteLectureImpl value,
          $Res Function(_$AppApiRoutesV1StudentAttendanceRouteLectureImpl)
              then) =
      __$$AppApiRoutesV1StudentAttendanceRouteLectureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'subject_title') String subjectTitle,
      @JsonKey(name: 'start_time') DateTime startTime,
      @JsonKey(name: 'end_time') DateTime endTime,
      @JsonKey(name: 'group_code') String groupCode,
      @JsonKey(name: 'semester_name') String semesterName,
      @JsonKey(name: 'room_code') String roomCode,
      @JsonKey(name: 'duration') int duration});
}

/// @nodoc
class __$$AppApiRoutesV1StudentAttendanceRouteLectureImplCopyWithImpl<$Res>
    extends _$AppApiRoutesV1StudentAttendanceRouteLectureCopyWithImpl<$Res,
        _$AppApiRoutesV1StudentAttendanceRouteLectureImpl>
    implements
        _$$AppApiRoutesV1StudentAttendanceRouteLectureImplCopyWith<$Res> {
  __$$AppApiRoutesV1StudentAttendanceRouteLectureImplCopyWithImpl(
      _$AppApiRoutesV1StudentAttendanceRouteLectureImpl _value,
      $Res Function(_$AppApiRoutesV1StudentAttendanceRouteLectureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppApiRoutesV1StudentAttendanceRouteLecture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subjectTitle = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? groupCode = null,
    Object? semesterName = null,
    Object? roomCode = null,
    Object? duration = null,
  }) {
    return _then(_$AppApiRoutesV1StudentAttendanceRouteLectureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subjectTitle: null == subjectTitle
          ? _value.subjectTitle
          : subjectTitle // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      groupCode: null == groupCode
          ? _value.groupCode
          : groupCode // ignore: cast_nullable_to_non_nullable
              as String,
      semesterName: null == semesterName
          ? _value.semesterName
          : semesterName // ignore: cast_nullable_to_non_nullable
              as String,
      roomCode: null == roomCode
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$AppApiRoutesV1StudentAttendanceRouteLectureImpl
    extends _AppApiRoutesV1StudentAttendanceRouteLecture {
  const _$AppApiRoutesV1StudentAttendanceRouteLectureImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'subject_title') required this.subjectTitle,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      @JsonKey(name: 'group_code') required this.groupCode,
      @JsonKey(name: 'semester_name') required this.semesterName,
      @JsonKey(name: 'room_code') required this.roomCode,
      @JsonKey(name: 'duration') required this.duration})
      : super._();

  factory _$AppApiRoutesV1StudentAttendanceRouteLectureImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AppApiRoutesV1StudentAttendanceRouteLectureImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'subject_title')
  final String subjectTitle;
  @override
  @JsonKey(name: 'start_time')
  final DateTime startTime;
  @override
  @JsonKey(name: 'end_time')
  final DateTime endTime;
  @override
  @JsonKey(name: 'group_code')
  final String groupCode;
  @override
  @JsonKey(name: 'semester_name')
  final String semesterName;
  @override
  @JsonKey(name: 'room_code')
  final String roomCode;
  @override
  @JsonKey(name: 'duration')
  final int duration;

  @override
  String toString() {
    return 'AppApiRoutesV1StudentAttendanceRouteLecture(id: $id, subjectTitle: $subjectTitle, startTime: $startTime, endTime: $endTime, groupCode: $groupCode, semesterName: $semesterName, roomCode: $roomCode, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppApiRoutesV1StudentAttendanceRouteLectureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subjectTitle, subjectTitle) ||
                other.subjectTitle == subjectTitle) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.groupCode, groupCode) ||
                other.groupCode == groupCode) &&
            (identical(other.semesterName, semesterName) ||
                other.semesterName == semesterName) &&
            (identical(other.roomCode, roomCode) ||
                other.roomCode == roomCode) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, subjectTitle, startTime,
      endTime, groupCode, semesterName, roomCode, duration);

  /// Create a copy of AppApiRoutesV1StudentAttendanceRouteLecture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppApiRoutesV1StudentAttendanceRouteLectureImplCopyWith<
          _$AppApiRoutesV1StudentAttendanceRouteLectureImpl>
      get copyWith =>
          __$$AppApiRoutesV1StudentAttendanceRouteLectureImplCopyWithImpl<
                  _$AppApiRoutesV1StudentAttendanceRouteLectureImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppApiRoutesV1StudentAttendanceRouteLectureImplToJson(
      this,
    );
  }
}

abstract class _AppApiRoutesV1StudentAttendanceRouteLecture
    extends AppApiRoutesV1StudentAttendanceRouteLecture {
  const factory _AppApiRoutesV1StudentAttendanceRouteLecture(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'subject_title') required final String subjectTitle,
          @JsonKey(name: 'start_time') required final DateTime startTime,
          @JsonKey(name: 'end_time') required final DateTime endTime,
          @JsonKey(name: 'group_code') required final String groupCode,
          @JsonKey(name: 'semester_name') required final String semesterName,
          @JsonKey(name: 'room_code') required final String roomCode,
          @JsonKey(name: 'duration') required final int duration}) =
      _$AppApiRoutesV1StudentAttendanceRouteLectureImpl;
  const _AppApiRoutesV1StudentAttendanceRouteLecture._() : super._();

  factory _AppApiRoutesV1StudentAttendanceRouteLecture.fromJson(
          Map<String, dynamic> json) =
      _$AppApiRoutesV1StudentAttendanceRouteLectureImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'subject_title')
  String get subjectTitle;
  @override
  @JsonKey(name: 'start_time')
  DateTime get startTime;
  @override
  @JsonKey(name: 'end_time')
  DateTime get endTime;
  @override
  @JsonKey(name: 'group_code')
  String get groupCode;
  @override
  @JsonKey(name: 'semester_name')
  String get semesterName;
  @override
  @JsonKey(name: 'room_code')
  String get roomCode;
  @override
  @JsonKey(name: 'duration')
  int get duration;

  /// Create a copy of AppApiRoutesV1StudentAttendanceRouteLecture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppApiRoutesV1StudentAttendanceRouteLectureImplCopyWith<
          _$AppApiRoutesV1StudentAttendanceRouteLectureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
