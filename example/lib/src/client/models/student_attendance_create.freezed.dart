// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_attendance_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentAttendanceCreate _$StudentAttendanceCreateFromJson(
    Map<String, dynamic> json) {
  return _StudentAttendanceCreate.fromJson(json);
}

/// @nodoc
mixin _$StudentAttendanceCreate {
  @JsonKey(name: 'attendance_id')
  int get attendanceId => throw _privateConstructorUsedError;

  /// Serializes this StudentAttendanceCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentAttendanceCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentAttendanceCreateCopyWith<StudentAttendanceCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentAttendanceCreateCopyWith<$Res> {
  factory $StudentAttendanceCreateCopyWith(StudentAttendanceCreate value,
          $Res Function(StudentAttendanceCreate) then) =
      _$StudentAttendanceCreateCopyWithImpl<$Res, StudentAttendanceCreate>;
  @useResult
  $Res call({@JsonKey(name: 'attendance_id') int attendanceId});
}

/// @nodoc
class _$StudentAttendanceCreateCopyWithImpl<$Res,
        $Val extends StudentAttendanceCreate>
    implements $StudentAttendanceCreateCopyWith<$Res> {
  _$StudentAttendanceCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentAttendanceCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = null,
  }) {
    return _then(_value.copyWith(
      attendanceId: null == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentAttendanceCreateImplCopyWith<$Res>
    implements $StudentAttendanceCreateCopyWith<$Res> {
  factory _$$StudentAttendanceCreateImplCopyWith(
          _$StudentAttendanceCreateImpl value,
          $Res Function(_$StudentAttendanceCreateImpl) then) =
      __$$StudentAttendanceCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'attendance_id') int attendanceId});
}

/// @nodoc
class __$$StudentAttendanceCreateImplCopyWithImpl<$Res>
    extends _$StudentAttendanceCreateCopyWithImpl<$Res,
        _$StudentAttendanceCreateImpl>
    implements _$$StudentAttendanceCreateImplCopyWith<$Res> {
  __$$StudentAttendanceCreateImplCopyWithImpl(
      _$StudentAttendanceCreateImpl _value,
      $Res Function(_$StudentAttendanceCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentAttendanceCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendanceId = null,
  }) {
    return _then(_$StudentAttendanceCreateImpl(
      attendanceId: null == attendanceId
          ? _value.attendanceId
          : attendanceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentAttendanceCreateImpl implements _StudentAttendanceCreate {
  const _$StudentAttendanceCreateImpl(
      {@JsonKey(name: 'attendance_id') required this.attendanceId});

  factory _$StudentAttendanceCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentAttendanceCreateImplFromJson(json);

  @override
  @JsonKey(name: 'attendance_id')
  final int attendanceId;

  @override
  String toString() {
    return 'StudentAttendanceCreate(attendanceId: $attendanceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentAttendanceCreateImpl &&
            (identical(other.attendanceId, attendanceId) ||
                other.attendanceId == attendanceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, attendanceId);

  /// Create a copy of StudentAttendanceCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentAttendanceCreateImplCopyWith<_$StudentAttendanceCreateImpl>
      get copyWith => __$$StudentAttendanceCreateImplCopyWithImpl<
          _$StudentAttendanceCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentAttendanceCreateImplToJson(
      this,
    );
  }
}

abstract class _StudentAttendanceCreate implements StudentAttendanceCreate {
  const factory _StudentAttendanceCreate(
          {@JsonKey(name: 'attendance_id') required final int attendanceId}) =
      _$StudentAttendanceCreateImpl;

  factory _StudentAttendanceCreate.fromJson(Map<String, dynamic> json) =
      _$StudentAttendanceCreateImpl.fromJson;

  @override
  @JsonKey(name: 'attendance_id')
  int get attendanceId;

  /// Create a copy of StudentAttendanceCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentAttendanceCreateImplCopyWith<_$StudentAttendanceCreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
