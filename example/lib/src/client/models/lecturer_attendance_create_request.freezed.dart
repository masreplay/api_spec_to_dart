// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_attendance_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LecturerAttendanceCreateRequest _$LecturerAttendanceCreateRequestFromJson(
    Map<String, dynamic> json) {
  return _LecturerAttendanceCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$LecturerAttendanceCreateRequest {
  @JsonKey(name: 'weekly_schedule_id')
  int get weeklyScheduleId => throw _privateConstructorUsedError;

  /// Serializes this LecturerAttendanceCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LecturerAttendanceCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LecturerAttendanceCreateRequestCopyWith<LecturerAttendanceCreateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerAttendanceCreateRequestCopyWith<$Res> {
  factory $LecturerAttendanceCreateRequestCopyWith(
          LecturerAttendanceCreateRequest value,
          $Res Function(LecturerAttendanceCreateRequest) then) =
      _$LecturerAttendanceCreateRequestCopyWithImpl<$Res,
          LecturerAttendanceCreateRequest>;
  @useResult
  $Res call({@JsonKey(name: 'weekly_schedule_id') int weeklyScheduleId});
}

/// @nodoc
class _$LecturerAttendanceCreateRequestCopyWithImpl<$Res,
        $Val extends LecturerAttendanceCreateRequest>
    implements $LecturerAttendanceCreateRequestCopyWith<$Res> {
  _$LecturerAttendanceCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LecturerAttendanceCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyScheduleId = null,
  }) {
    return _then(_value.copyWith(
      weeklyScheduleId: null == weeklyScheduleId
          ? _value.weeklyScheduleId
          : weeklyScheduleId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LecturerAttendanceCreateRequestImplCopyWith<$Res>
    implements $LecturerAttendanceCreateRequestCopyWith<$Res> {
  factory _$$LecturerAttendanceCreateRequestImplCopyWith(
          _$LecturerAttendanceCreateRequestImpl value,
          $Res Function(_$LecturerAttendanceCreateRequestImpl) then) =
      __$$LecturerAttendanceCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'weekly_schedule_id') int weeklyScheduleId});
}

/// @nodoc
class __$$LecturerAttendanceCreateRequestImplCopyWithImpl<$Res>
    extends _$LecturerAttendanceCreateRequestCopyWithImpl<$Res,
        _$LecturerAttendanceCreateRequestImpl>
    implements _$$LecturerAttendanceCreateRequestImplCopyWith<$Res> {
  __$$LecturerAttendanceCreateRequestImplCopyWithImpl(
      _$LecturerAttendanceCreateRequestImpl _value,
      $Res Function(_$LecturerAttendanceCreateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of LecturerAttendanceCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weeklyScheduleId = null,
  }) {
    return _then(_$LecturerAttendanceCreateRequestImpl(
      weeklyScheduleId: null == weeklyScheduleId
          ? _value.weeklyScheduleId
          : weeklyScheduleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LecturerAttendanceCreateRequestImpl
    implements _LecturerAttendanceCreateRequest {
  const _$LecturerAttendanceCreateRequestImpl(
      {@JsonKey(name: 'weekly_schedule_id') required this.weeklyScheduleId});

  factory _$LecturerAttendanceCreateRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LecturerAttendanceCreateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'weekly_schedule_id')
  final int weeklyScheduleId;

  @override
  String toString() {
    return 'LecturerAttendanceCreateRequest(weeklyScheduleId: $weeklyScheduleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerAttendanceCreateRequestImpl &&
            (identical(other.weeklyScheduleId, weeklyScheduleId) ||
                other.weeklyScheduleId == weeklyScheduleId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weeklyScheduleId);

  /// Create a copy of LecturerAttendanceCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerAttendanceCreateRequestImplCopyWith<
          _$LecturerAttendanceCreateRequestImpl>
      get copyWith => __$$LecturerAttendanceCreateRequestImplCopyWithImpl<
          _$LecturerAttendanceCreateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerAttendanceCreateRequestImplToJson(
      this,
    );
  }
}

abstract class _LecturerAttendanceCreateRequest
    implements LecturerAttendanceCreateRequest {
  const factory _LecturerAttendanceCreateRequest(
          {@JsonKey(name: 'weekly_schedule_id')
          required final int weeklyScheduleId}) =
      _$LecturerAttendanceCreateRequestImpl;

  factory _LecturerAttendanceCreateRequest.fromJson(Map<String, dynamic> json) =
      _$LecturerAttendanceCreateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'weekly_schedule_id')
  int get weeklyScheduleId;

  /// Create a copy of LecturerAttendanceCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LecturerAttendanceCreateRequestImplCopyWith<
          _$LecturerAttendanceCreateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
