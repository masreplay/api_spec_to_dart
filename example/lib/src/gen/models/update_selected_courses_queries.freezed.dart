// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_selected_courses_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateSelectedCoursesQueries _$UpdateSelectedCoursesQueriesFromJson(
    Map<String, dynamic> json) {
  return _UpdateSelectedCoursesQueries.fromJson(json);
}

/// @nodoc
mixin _$UpdateSelectedCoursesQueries {
  @JsonKey(name: 'filter')
  SemesterFilter get filter => throw _privateConstructorUsedError;

  /// Serializes this UpdateSelectedCoursesQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSelectedCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSelectedCoursesQueriesCopyWith<UpdateSelectedCoursesQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSelectedCoursesQueriesCopyWith<$Res> {
  factory $UpdateSelectedCoursesQueriesCopyWith(
          UpdateSelectedCoursesQueries value,
          $Res Function(UpdateSelectedCoursesQueries) then) =
      _$UpdateSelectedCoursesQueriesCopyWithImpl<$Res,
          UpdateSelectedCoursesQueries>;
  @useResult
  $Res call({@JsonKey(name: 'filter') SemesterFilter filter});
}

/// @nodoc
class _$UpdateSelectedCoursesQueriesCopyWithImpl<$Res,
        $Val extends UpdateSelectedCoursesQueries>
    implements $UpdateSelectedCoursesQueriesCopyWith<$Res> {
  _$UpdateSelectedCoursesQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSelectedCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SemesterFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSelectedCoursesQueriesImplCopyWith<$Res>
    implements $UpdateSelectedCoursesQueriesCopyWith<$Res> {
  factory _$$UpdateSelectedCoursesQueriesImplCopyWith(
          _$UpdateSelectedCoursesQueriesImpl value,
          $Res Function(_$UpdateSelectedCoursesQueriesImpl) then) =
      __$$UpdateSelectedCoursesQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'filter') SemesterFilter filter});
}

/// @nodoc
class __$$UpdateSelectedCoursesQueriesImplCopyWithImpl<$Res>
    extends _$UpdateSelectedCoursesQueriesCopyWithImpl<$Res,
        _$UpdateSelectedCoursesQueriesImpl>
    implements _$$UpdateSelectedCoursesQueriesImplCopyWith<$Res> {
  __$$UpdateSelectedCoursesQueriesImplCopyWithImpl(
      _$UpdateSelectedCoursesQueriesImpl _value,
      $Res Function(_$UpdateSelectedCoursesQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSelectedCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$UpdateSelectedCoursesQueriesImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SemesterFilter,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$UpdateSelectedCoursesQueriesImpl extends _UpdateSelectedCoursesQueries {
  const _$UpdateSelectedCoursesQueriesImpl(
      {@JsonKey(name: 'filter') required this.filter = SemesterFilter.all})
      : super._();

  factory _$UpdateSelectedCoursesQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateSelectedCoursesQueriesImplFromJson(json);

  @override
  @JsonKey(name: 'filter')
  final SemesterFilter filter;

  @override
  String toString() {
    return 'UpdateSelectedCoursesQueries(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedCoursesQueriesImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of UpdateSelectedCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedCoursesQueriesImplCopyWith<
          _$UpdateSelectedCoursesQueriesImpl>
      get copyWith => __$$UpdateSelectedCoursesQueriesImplCopyWithImpl<
          _$UpdateSelectedCoursesQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSelectedCoursesQueriesImplToJson(
      this,
    );
  }
}

abstract class _UpdateSelectedCoursesQueries
    extends UpdateSelectedCoursesQueries {
  const factory _UpdateSelectedCoursesQueries(
          {@JsonKey(name: 'filter') required final SemesterFilter filter}) =
      _$UpdateSelectedCoursesQueriesImpl;
  const _UpdateSelectedCoursesQueries._() : super._();

  factory _UpdateSelectedCoursesQueries.fromJson(Map<String, dynamic> json) =
      _$UpdateSelectedCoursesQueriesImpl.fromJson;

  @override
  @JsonKey(name: 'filter')
  SemesterFilter get filter;

  /// Create a copy of UpdateSelectedCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSelectedCoursesQueriesImplCopyWith<
          _$UpdateSelectedCoursesQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
