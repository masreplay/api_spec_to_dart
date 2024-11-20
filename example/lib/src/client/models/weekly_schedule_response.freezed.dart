// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_schedule_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyScheduleResponse _$WeeklyScheduleResponseFromJson(
    Map<String, dynamic> json) {
  return _WeeklyScheduleResponse.fromJson(json);
}

/// @nodoc
mixin _$WeeklyScheduleResponse {
  @JsonKey(name: 'weekday')
  int get weekday => throw _privateConstructorUsedError;
  @JsonKey(name: 'lectures')
  List<dynamic> get lectures => throw _privateConstructorUsedError;

  /// Serializes this WeeklyScheduleResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyScheduleResponseCopyWith<WeeklyScheduleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyScheduleResponseCopyWith<$Res> {
  factory $WeeklyScheduleResponseCopyWith(WeeklyScheduleResponse value,
          $Res Function(WeeklyScheduleResponse) then) =
      _$WeeklyScheduleResponseCopyWithImpl<$Res, WeeklyScheduleResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'weekday') int weekday,
      @JsonKey(name: 'lectures') List<dynamic> lectures});
}

/// @nodoc
class _$WeeklyScheduleResponseCopyWithImpl<$Res,
        $Val extends WeeklyScheduleResponse>
    implements $WeeklyScheduleResponseCopyWith<$Res> {
  _$WeeklyScheduleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyScheduleResponse
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
abstract class _$$WeeklyScheduleResponseImplCopyWith<$Res>
    implements $WeeklyScheduleResponseCopyWith<$Res> {
  factory _$$WeeklyScheduleResponseImplCopyWith(
          _$WeeklyScheduleResponseImpl value,
          $Res Function(_$WeeklyScheduleResponseImpl) then) =
      __$$WeeklyScheduleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'weekday') int weekday,
      @JsonKey(name: 'lectures') List<dynamic> lectures});
}

/// @nodoc
class __$$WeeklyScheduleResponseImplCopyWithImpl<$Res>
    extends _$WeeklyScheduleResponseCopyWithImpl<$Res,
        _$WeeklyScheduleResponseImpl>
    implements _$$WeeklyScheduleResponseImplCopyWith<$Res> {
  __$$WeeklyScheduleResponseImplCopyWithImpl(
      _$WeeklyScheduleResponseImpl _value,
      $Res Function(_$WeeklyScheduleResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekday = null,
    Object? lectures = null,
  }) {
    return _then(_$WeeklyScheduleResponseImpl(
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
class _$WeeklyScheduleResponseImpl implements _WeeklyScheduleResponse {
  const _$WeeklyScheduleResponseImpl(
      {@JsonKey(name: 'weekday') required this.weekday,
      @JsonKey(name: 'lectures') required final List<dynamic> lectures})
      : _lectures = lectures;

  factory _$WeeklyScheduleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyScheduleResponseImplFromJson(json);

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
    return 'WeeklyScheduleResponse(weekday: $weekday, lectures: $lectures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyScheduleResponseImpl &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            const DeepCollectionEquality().equals(other._lectures, _lectures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, weekday, const DeepCollectionEquality().hash(_lectures));

  /// Create a copy of WeeklyScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyScheduleResponseImplCopyWith<_$WeeklyScheduleResponseImpl>
      get copyWith => __$$WeeklyScheduleResponseImplCopyWithImpl<
          _$WeeklyScheduleResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyScheduleResponseImplToJson(
      this,
    );
  }
}

abstract class _WeeklyScheduleResponse implements WeeklyScheduleResponse {
  const factory _WeeklyScheduleResponse(
          {@JsonKey(name: 'weekday') required final int weekday,
          @JsonKey(name: 'lectures') required final List<dynamic> lectures}) =
      _$WeeklyScheduleResponseImpl;

  factory _WeeklyScheduleResponse.fromJson(Map<String, dynamic> json) =
      _$WeeklyScheduleResponseImpl.fromJson;

  @override
  @JsonKey(name: 'weekday')
  int get weekday;
  @override
  @JsonKey(name: 'lectures')
  List<dynamic> get lectures;

  /// Create a copy of WeeklyScheduleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyScheduleResponseImplCopyWith<_$WeeklyScheduleResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
