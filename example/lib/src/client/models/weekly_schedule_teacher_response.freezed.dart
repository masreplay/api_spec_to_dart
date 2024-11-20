// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_schedule_teacher_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyScheduleTeacherResponse _$WeeklyScheduleTeacherResponseFromJson(
    Map<String, dynamic> json) {
  return _WeeklyScheduleTeacherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeeklyScheduleTeacherResponse {
  @JsonKey(name: 'weekday')
  int get weekday => throw _privateConstructorUsedError;
  @JsonKey(name: 'lectures')
  List<dynamic> get lectures => throw _privateConstructorUsedError;

  /// Serializes this WeeklyScheduleTeacherResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyScheduleTeacherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyScheduleTeacherResponseCopyWith<WeeklyScheduleTeacherResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyScheduleTeacherResponseCopyWith<$Res> {
  factory $WeeklyScheduleTeacherResponseCopyWith(
          WeeklyScheduleTeacherResponse value,
          $Res Function(WeeklyScheduleTeacherResponse) then) =
      _$WeeklyScheduleTeacherResponseCopyWithImpl<$Res,
          WeeklyScheduleTeacherResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'weekday') int weekday,
      @JsonKey(name: 'lectures') List<dynamic> lectures});
}

/// @nodoc
class _$WeeklyScheduleTeacherResponseCopyWithImpl<$Res,
        $Val extends WeeklyScheduleTeacherResponse>
    implements $WeeklyScheduleTeacherResponseCopyWith<$Res> {
  _$WeeklyScheduleTeacherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyScheduleTeacherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekday = null,
    Object? lectures = null,
  }) {
    return _then(_value.copyWith(
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as int,
      lectures: null == lectures
          ? _value.lectures
          : lectures // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeeklyScheduleTeacherResponseImplCopyWith<$Res>
    implements $WeeklyScheduleTeacherResponseCopyWith<$Res> {
  factory _$$WeeklyScheduleTeacherResponseImplCopyWith(
          _$WeeklyScheduleTeacherResponseImpl value,
          $Res Function(_$WeeklyScheduleTeacherResponseImpl) then) =
      __$$WeeklyScheduleTeacherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'weekday') int weekday,
      @JsonKey(name: 'lectures') List<dynamic> lectures});
}

/// @nodoc
class __$$WeeklyScheduleTeacherResponseImplCopyWithImpl<$Res>
    extends _$WeeklyScheduleTeacherResponseCopyWithImpl<$Res,
        _$WeeklyScheduleTeacherResponseImpl>
    implements _$$WeeklyScheduleTeacherResponseImplCopyWith<$Res> {
  __$$WeeklyScheduleTeacherResponseImplCopyWithImpl(
      _$WeeklyScheduleTeacherResponseImpl _value,
      $Res Function(_$WeeklyScheduleTeacherResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyScheduleTeacherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekday = null,
    Object? lectures = null,
  }) {
    return _then(_$WeeklyScheduleTeacherResponseImpl(
      weekday: null == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as int,
      lectures: null == lectures
          ? _value._lectures
          : lectures // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyScheduleTeacherResponseImpl
    implements _WeeklyScheduleTeacherResponse {
  const _$WeeklyScheduleTeacherResponseImpl(
      {@JsonKey(name: 'weekday') required this.weekday,
      @JsonKey(name: 'lectures') required final List<dynamic> lectures})
      : _lectures = lectures;

  factory _$WeeklyScheduleTeacherResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WeeklyScheduleTeacherResponseImplFromJson(json);

  @override
  @JsonKey(name: 'weekday')
  final int weekday;
  final List<dynamic> _lectures;
  @override
  @JsonKey(name: 'lectures')
  List<dynamic> get lectures {
    if (_lectures is EqualUnmodifiableListView) return _lectures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lectures);
  }

  @override
  String toString() {
    return 'WeeklyScheduleTeacherResponse(weekday: $weekday, lectures: $lectures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyScheduleTeacherResponseImpl &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            const DeepCollectionEquality().equals(other._lectures, _lectures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, weekday, const DeepCollectionEquality().hash(_lectures));

  /// Create a copy of WeeklyScheduleTeacherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyScheduleTeacherResponseImplCopyWith<
          _$WeeklyScheduleTeacherResponseImpl>
      get copyWith => __$$WeeklyScheduleTeacherResponseImplCopyWithImpl<
          _$WeeklyScheduleTeacherResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyScheduleTeacherResponseImplToJson(
      this,
    );
  }
}

abstract class _WeeklyScheduleTeacherResponse
    implements WeeklyScheduleTeacherResponse {
  const factory _WeeklyScheduleTeacherResponse(
          {@JsonKey(name: 'weekday') required final int weekday,
          @JsonKey(name: 'lectures') required final List<dynamic> lectures}) =
      _$WeeklyScheduleTeacherResponseImpl;

  factory _WeeklyScheduleTeacherResponse.fromJson(Map<String, dynamic> json) =
      _$WeeklyScheduleTeacherResponseImpl.fromJson;

  @override
  @JsonKey(name: 'weekday')
  int get weekday;
  @override
  @JsonKey(name: 'lectures')
  List<dynamic> get lectures;

  /// Create a copy of WeeklyScheduleTeacherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyScheduleTeacherResponseImplCopyWith<
          _$WeeklyScheduleTeacherResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
