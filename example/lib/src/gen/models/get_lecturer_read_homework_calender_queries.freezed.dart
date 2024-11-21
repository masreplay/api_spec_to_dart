// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_lecturer_read_homework_calender_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetLecturerReadHomeworkCalenderQueries
    _$GetLecturerReadHomeworkCalenderQueriesFromJson(
        Map<String, dynamic> json) {
  return _GetLecturerReadHomeworkCalenderQueries.fromJson(json);
}

/// @nodoc
mixin _$GetLecturerReadHomeworkCalenderQueries {
  /// Course Id
  @JsonKey(name: 'courseId')
  int? get courseId => throw _privateConstructorUsedError;

  /// Start Date
  @JsonKey(name: 'startDate')
  DateTime? get startDate => throw _privateConstructorUsedError;

  /// End Date
  @JsonKey(name: 'endDate')
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Serializes this GetLecturerReadHomeworkCalenderQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetLecturerReadHomeworkCalenderQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetLecturerReadHomeworkCalenderQueriesCopyWith<
          GetLecturerReadHomeworkCalenderQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLecturerReadHomeworkCalenderQueriesCopyWith<$Res> {
  factory $GetLecturerReadHomeworkCalenderQueriesCopyWith(
          GetLecturerReadHomeworkCalenderQueries value,
          $Res Function(GetLecturerReadHomeworkCalenderQueries) then) =
      _$GetLecturerReadHomeworkCalenderQueriesCopyWithImpl<$Res,
          GetLecturerReadHomeworkCalenderQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'courseId') int? courseId,
      @JsonKey(name: 'startDate') DateTime? startDate,
      @JsonKey(name: 'endDate') DateTime? endDate});
}

/// @nodoc
class _$GetLecturerReadHomeworkCalenderQueriesCopyWithImpl<$Res,
        $Val extends GetLecturerReadHomeworkCalenderQueries>
    implements $GetLecturerReadHomeworkCalenderQueriesCopyWith<$Res> {
  _$GetLecturerReadHomeworkCalenderQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetLecturerReadHomeworkCalenderQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetLecturerReadHomeworkCalenderQueriesImplCopyWith<$Res>
    implements $GetLecturerReadHomeworkCalenderQueriesCopyWith<$Res> {
  factory _$$GetLecturerReadHomeworkCalenderQueriesImplCopyWith(
          _$GetLecturerReadHomeworkCalenderQueriesImpl value,
          $Res Function(_$GetLecturerReadHomeworkCalenderQueriesImpl) then) =
      __$$GetLecturerReadHomeworkCalenderQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'courseId') int? courseId,
      @JsonKey(name: 'startDate') DateTime? startDate,
      @JsonKey(name: 'endDate') DateTime? endDate});
}

/// @nodoc
class __$$GetLecturerReadHomeworkCalenderQueriesImplCopyWithImpl<$Res>
    extends _$GetLecturerReadHomeworkCalenderQueriesCopyWithImpl<$Res,
        _$GetLecturerReadHomeworkCalenderQueriesImpl>
    implements _$$GetLecturerReadHomeworkCalenderQueriesImplCopyWith<$Res> {
  __$$GetLecturerReadHomeworkCalenderQueriesImplCopyWithImpl(
      _$GetLecturerReadHomeworkCalenderQueriesImpl _value,
      $Res Function(_$GetLecturerReadHomeworkCalenderQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetLecturerReadHomeworkCalenderQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$GetLecturerReadHomeworkCalenderQueriesImpl(
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$GetLecturerReadHomeworkCalenderQueriesImpl
    extends _GetLecturerReadHomeworkCalenderQueries {
  const _$GetLecturerReadHomeworkCalenderQueriesImpl(
      {@JsonKey(name: 'courseId') required this.courseId,
      @JsonKey(name: 'startDate') required this.startDate,
      @JsonKey(name: 'endDate') required this.endDate})
      : super._();

  factory _$GetLecturerReadHomeworkCalenderQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetLecturerReadHomeworkCalenderQueriesImplFromJson(json);

  /// Course Id
  @override
  @JsonKey(name: 'courseId')
  final int? courseId;

  /// Start Date
  @override
  @JsonKey(name: 'startDate')
  final DateTime? startDate;

  /// End Date
  @override
  @JsonKey(name: 'endDate')
  final DateTime? endDate;

  @override
  String toString() {
    return 'GetLecturerReadHomeworkCalenderQueries(courseId: $courseId, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLecturerReadHomeworkCalenderQueriesImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, courseId, startDate, endDate);

  /// Create a copy of GetLecturerReadHomeworkCalenderQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLecturerReadHomeworkCalenderQueriesImplCopyWith<
          _$GetLecturerReadHomeworkCalenderQueriesImpl>
      get copyWith =>
          __$$GetLecturerReadHomeworkCalenderQueriesImplCopyWithImpl<
              _$GetLecturerReadHomeworkCalenderQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetLecturerReadHomeworkCalenderQueriesImplToJson(
      this,
    );
  }
}

abstract class _GetLecturerReadHomeworkCalenderQueries
    extends GetLecturerReadHomeworkCalenderQueries {
  const factory _GetLecturerReadHomeworkCalenderQueries(
          {@JsonKey(name: 'courseId') required final int? courseId,
          @JsonKey(name: 'startDate') required final DateTime? startDate,
          @JsonKey(name: 'endDate') required final DateTime? endDate}) =
      _$GetLecturerReadHomeworkCalenderQueriesImpl;
  const _GetLecturerReadHomeworkCalenderQueries._() : super._();

  factory _GetLecturerReadHomeworkCalenderQueries.fromJson(
          Map<String, dynamic> json) =
      _$GetLecturerReadHomeworkCalenderQueriesImpl.fromJson;

  /// Course Id
  @override
  @JsonKey(name: 'courseId')
  int? get courseId;

  /// Start Date
  @override
  @JsonKey(name: 'startDate')
  DateTime? get startDate;

  /// End Date
  @override
  @JsonKey(name: 'endDate')
  DateTime? get endDate;

  /// Create a copy of GetLecturerReadHomeworkCalenderQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLecturerReadHomeworkCalenderQueriesImplCopyWith<
          _$GetLecturerReadHomeworkCalenderQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
