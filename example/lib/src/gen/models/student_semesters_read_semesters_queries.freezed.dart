// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_semesters_read_semesters_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentSemestersReadSemestersQueries
    _$StudentSemestersReadSemestersQueriesFromJson(Map<String, dynamic> json) {
  return _StudentSemestersReadSemestersQueries.fromJson(json);
}

/// @nodoc
mixin _$StudentSemestersReadSemestersQueries {
  @JsonKey(name: 'filter')
  SemesterFilter get filter => throw _privateConstructorUsedError;

  /// Serializes this StudentSemestersReadSemestersQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentSemestersReadSemestersQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentSemestersReadSemestersQueriesCopyWith<
          StudentSemestersReadSemestersQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSemestersReadSemestersQueriesCopyWith<$Res> {
  factory $StudentSemestersReadSemestersQueriesCopyWith(
          StudentSemestersReadSemestersQueries value,
          $Res Function(StudentSemestersReadSemestersQueries) then) =
      _$StudentSemestersReadSemestersQueriesCopyWithImpl<$Res,
          StudentSemestersReadSemestersQueries>;
  @useResult
  $Res call({@JsonKey(name: 'filter') SemesterFilter filter});
}

/// @nodoc
class _$StudentSemestersReadSemestersQueriesCopyWithImpl<$Res,
        $Val extends StudentSemestersReadSemestersQueries>
    implements $StudentSemestersReadSemestersQueriesCopyWith<$Res> {
  _$StudentSemestersReadSemestersQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentSemestersReadSemestersQueries
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
abstract class _$$StudentSemestersReadSemestersQueriesImplCopyWith<$Res>
    implements $StudentSemestersReadSemestersQueriesCopyWith<$Res> {
  factory _$$StudentSemestersReadSemestersQueriesImplCopyWith(
          _$StudentSemestersReadSemestersQueriesImpl value,
          $Res Function(_$StudentSemestersReadSemestersQueriesImpl) then) =
      __$$StudentSemestersReadSemestersQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'filter') SemesterFilter filter});
}

/// @nodoc
class __$$StudentSemestersReadSemestersQueriesImplCopyWithImpl<$Res>
    extends _$StudentSemestersReadSemestersQueriesCopyWithImpl<$Res,
        _$StudentSemestersReadSemestersQueriesImpl>
    implements _$$StudentSemestersReadSemestersQueriesImplCopyWith<$Res> {
  __$$StudentSemestersReadSemestersQueriesImplCopyWithImpl(
      _$StudentSemestersReadSemestersQueriesImpl _value,
      $Res Function(_$StudentSemestersReadSemestersQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentSemestersReadSemestersQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$StudentSemestersReadSemestersQueriesImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SemesterFilter,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentSemestersReadSemestersQueriesImpl
    extends _StudentSemestersReadSemestersQueries {
  const _$StudentSemestersReadSemestersQueriesImpl(
      {@JsonKey(name: 'filter') this.filter = SemesterFilter.all})
      : super._();

  factory _$StudentSemestersReadSemestersQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentSemestersReadSemestersQueriesImplFromJson(json);

  @override
  @JsonKey(name: 'filter')
  final SemesterFilter filter;

  @override
  String toString() {
    return 'StudentSemestersReadSemestersQueries(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentSemestersReadSemestersQueriesImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of StudentSemestersReadSemestersQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentSemestersReadSemestersQueriesImplCopyWith<
          _$StudentSemestersReadSemestersQueriesImpl>
      get copyWith => __$$StudentSemestersReadSemestersQueriesImplCopyWithImpl<
          _$StudentSemestersReadSemestersQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentSemestersReadSemestersQueriesImplToJson(
      this,
    );
  }
}

abstract class _StudentSemestersReadSemestersQueries
    extends StudentSemestersReadSemestersQueries {
  const factory _StudentSemestersReadSemestersQueries(
          {@JsonKey(name: 'filter') final SemesterFilter filter}) =
      _$StudentSemestersReadSemestersQueriesImpl;
  const _StudentSemestersReadSemestersQueries._() : super._();

  factory _StudentSemestersReadSemestersQueries.fromJson(
          Map<String, dynamic> json) =
      _$StudentSemestersReadSemestersQueriesImpl.fromJson;

  @override
  @JsonKey(name: 'filter')
  SemesterFilter get filter;

  /// Create a copy of StudentSemestersReadSemestersQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentSemestersReadSemestersQueriesImplCopyWith<
          _$StudentSemestersReadSemestersQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
