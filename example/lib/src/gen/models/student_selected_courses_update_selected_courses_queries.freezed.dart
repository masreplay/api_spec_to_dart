// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_selected_courses_update_selected_courses_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentSelectedCoursesUpdateSelectedCoursesQueries
    _$StudentSelectedCoursesUpdateSelectedCoursesQueriesFromJson(
        Map<String, dynamic> json) {
  return _StudentSelectedCoursesUpdateSelectedCoursesQueries.fromJson(json);
}

/// @nodoc
mixin _$StudentSelectedCoursesUpdateSelectedCoursesQueries {
  @JsonKey(name: 'filter')
  SemesterFilter get filter => throw _privateConstructorUsedError;

  /// Serializes this StudentSelectedCoursesUpdateSelectedCoursesQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentSelectedCoursesUpdateSelectedCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentSelectedCoursesUpdateSelectedCoursesQueriesCopyWith<
          StudentSelectedCoursesUpdateSelectedCoursesQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSelectedCoursesUpdateSelectedCoursesQueriesCopyWith<
    $Res> {
  factory $StudentSelectedCoursesUpdateSelectedCoursesQueriesCopyWith(
          StudentSelectedCoursesUpdateSelectedCoursesQueries value,
          $Res Function(StudentSelectedCoursesUpdateSelectedCoursesQueries)
              then) =
      _$StudentSelectedCoursesUpdateSelectedCoursesQueriesCopyWithImpl<$Res,
          StudentSelectedCoursesUpdateSelectedCoursesQueries>;
  @useResult
  $Res call({@JsonKey(name: 'filter') SemesterFilter filter});
}

/// @nodoc
class _$StudentSelectedCoursesUpdateSelectedCoursesQueriesCopyWithImpl<$Res,
        $Val extends StudentSelectedCoursesUpdateSelectedCoursesQueries>
    implements
        $StudentSelectedCoursesUpdateSelectedCoursesQueriesCopyWith<$Res> {
  _$StudentSelectedCoursesUpdateSelectedCoursesQueriesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentSelectedCoursesUpdateSelectedCoursesQueries
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
abstract class _$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplCopyWith<
        $Res>
    implements
        $StudentSelectedCoursesUpdateSelectedCoursesQueriesCopyWith<$Res> {
  factory _$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplCopyWith(
          _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl value,
          $Res Function(
                  _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl)
              then) =
      __$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'filter') SemesterFilter filter});
}

/// @nodoc
class __$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplCopyWithImpl<
        $Res>
    extends _$StudentSelectedCoursesUpdateSelectedCoursesQueriesCopyWithImpl<
        $Res, _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl>
    implements
        _$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplCopyWith<
            $Res> {
  __$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplCopyWithImpl(
      _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl _value,
      $Res Function(_$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of StudentSelectedCoursesUpdateSelectedCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SemesterFilter,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl
    extends _StudentSelectedCoursesUpdateSelectedCoursesQueries {
  const _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl(
      {@JsonKey(name: 'filter') this.filter = SemesterFilter.all})
      : super._();

  factory _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplFromJson(json);

  @override
  @JsonKey(name: 'filter')
  final SemesterFilter filter;

  @override
  String toString() {
    return 'StudentSelectedCoursesUpdateSelectedCoursesQueries(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of StudentSelectedCoursesUpdateSelectedCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplCopyWith<
          _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl>
      get copyWith =>
          __$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplCopyWithImpl<
                  _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplToJson(
      this,
    );
  }
}

abstract class _StudentSelectedCoursesUpdateSelectedCoursesQueries
    extends StudentSelectedCoursesUpdateSelectedCoursesQueries {
  const factory _StudentSelectedCoursesUpdateSelectedCoursesQueries(
          {@JsonKey(name: 'filter') final SemesterFilter filter}) =
      _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl;
  const _StudentSelectedCoursesUpdateSelectedCoursesQueries._() : super._();

  factory _StudentSelectedCoursesUpdateSelectedCoursesQueries.fromJson(
          Map<String, dynamic> json) =
      _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl.fromJson;

  @override
  @JsonKey(name: 'filter')
  SemesterFilter get filter;

  /// Create a copy of StudentSelectedCoursesUpdateSelectedCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplCopyWith<
          _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
