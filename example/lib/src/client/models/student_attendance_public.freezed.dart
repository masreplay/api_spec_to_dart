// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_attendance_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentAttendancePublic _$StudentAttendancePublicFromJson(
    Map<String, dynamic> json) {
  return _StudentAttendancePublic.fromJson(json);
}

/// @nodoc
mixin _$StudentAttendancePublic {
  @JsonKey(name: 'attendance_status')
  int get attendanceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_date')
  DateTime get attendanceDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekly_schedule_id')
  int get weeklyScheduleId => throw _privateConstructorUsedError;

  /// Serializes this StudentAttendancePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentAttendancePublicCopyWith<StudentAttendancePublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentAttendancePublicCopyWith<$Res> {
  factory $StudentAttendancePublicCopyWith(StudentAttendancePublic value,
          $Res Function(StudentAttendancePublic) then) =
      _$StudentAttendancePublicCopyWithImpl<$Res, StudentAttendancePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_status') int attendanceStatus,
      @JsonKey(name: 'attendance_date') DateTime attendanceDate,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'weekly_schedule_id') int weeklyScheduleId});
}

/// @nodoc
class _$StudentAttendancePublicCopyWithImpl<$Res,
        $Val extends StudentAttendancePublic>
    implements $StudentAttendancePublicCopyWith<$Res> {
  _$StudentAttendancePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceStatus = null,
    Object? attendanceDate = null,
    Object? id = null,
    Object? weeklyScheduleId = null,
  }) {
    return _then(_value.copyWith(
      attendanceStatus: null == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceDate: null == attendanceDate
          ? _value.attendanceDate
          : attendanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weeklyScheduleId: null == weeklyScheduleId
          ? _value.weeklyScheduleId
          : weeklyScheduleId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentAttendancePublicImplCopyWith<$Res>
    implements $StudentAttendancePublicCopyWith<$Res> {
  factory _$$StudentAttendancePublicImplCopyWith(
          _$StudentAttendancePublicImpl value,
          $Res Function(_$StudentAttendancePublicImpl) then) =
      __$$StudentAttendancePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attendance_status') int attendanceStatus,
      @JsonKey(name: 'attendance_date') DateTime attendanceDate,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'weekly_schedule_id') int weeklyScheduleId});
}

/// @nodoc
class __$$StudentAttendancePublicImplCopyWithImpl<$Res>
    extends _$StudentAttendancePublicCopyWithImpl<$Res,
        _$StudentAttendancePublicImpl>
    implements _$$StudentAttendancePublicImplCopyWith<$Res> {
  __$$StudentAttendancePublicImplCopyWithImpl(
      _$StudentAttendancePublicImpl _value,
      $Res Function(_$StudentAttendancePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceStatus = null,
    Object? attendanceDate = null,
    Object? id = null,
    Object? weeklyScheduleId = null,
  }) {
    return _then(_$StudentAttendancePublicImpl(
      attendanceStatus: null == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceDate: null == attendanceDate
          ? _value.attendanceDate
          : attendanceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weeklyScheduleId: null == weeklyScheduleId
          ? _value.weeklyScheduleId
          : weeklyScheduleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentAttendancePublicImpl extends _StudentAttendancePublic {
  const _$StudentAttendancePublicImpl(
      {@JsonKey(name: 'attendance_status') required this.attendanceStatus,
      @JsonKey(name: 'attendance_date') required this.attendanceDate,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'weekly_schedule_id') required this.weeklyScheduleId})
      : super._();

  factory _$StudentAttendancePublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentAttendancePublicImplFromJson(json);

  @override
  @JsonKey(name: 'attendance_status')
  final int attendanceStatus;
  @override
  @JsonKey(name: 'attendance_date')
  final DateTime attendanceDate;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'weekly_schedule_id')
  final int weeklyScheduleId;

  @override
  String toString() {
    return 'StudentAttendancePublic(attendanceStatus: $attendanceStatus, attendanceDate: $attendanceDate, id: $id, weeklyScheduleId: $weeklyScheduleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentAttendancePublicImpl &&
            (identical(other.attendanceStatus, attendanceStatus) ||
                other.attendanceStatus == attendanceStatus) &&
            (identical(other.attendanceDate, attendanceDate) ||
                other.attendanceDate == attendanceDate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weeklyScheduleId, weeklyScheduleId) ||
                other.weeklyScheduleId == weeklyScheduleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, attendanceStatus, attendanceDate, id, weeklyScheduleId);

  /// Create a copy of StudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentAttendancePublicImplCopyWith<_$StudentAttendancePublicImpl>
      get copyWith => __$$StudentAttendancePublicImplCopyWithImpl<
          _$StudentAttendancePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentAttendancePublicImplToJson(
      this,
    );
  }
}

abstract class _StudentAttendancePublic extends StudentAttendancePublic {
  const factory _StudentAttendancePublic(
      {@JsonKey(name: 'attendance_status') required final int attendanceStatus,
      @JsonKey(name: 'attendance_date') required final DateTime attendanceDate,
      @JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'weekly_schedule_id')
      required final int weeklyScheduleId}) = _$StudentAttendancePublicImpl;
  const _StudentAttendancePublic._() : super._();

  factory _StudentAttendancePublic.fromJson(Map<String, dynamic> json) =
      _$StudentAttendancePublicImpl.fromJson;

  @override
  @JsonKey(name: 'attendance_status')
  int get attendanceStatus;
  @override
  @JsonKey(name: 'attendance_date')
  DateTime get attendanceDate;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'weekly_schedule_id')
  int get weeklyScheduleId;

  /// Create a copy of StudentAttendancePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentAttendancePublicImplCopyWith<_$StudentAttendancePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
