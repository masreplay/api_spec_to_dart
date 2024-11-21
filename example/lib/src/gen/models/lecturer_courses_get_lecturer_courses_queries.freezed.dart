// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_courses_get_lecturer_courses_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LecturerCoursesGetLecturerCoursesQueries
    _$LecturerCoursesGetLecturerCoursesQueriesFromJson(
        Map<String, dynamic> json) {
  return _LecturerCoursesGetLecturerCoursesQueries.fromJson(json);
}

/// @nodoc
mixin _$LecturerCoursesGetLecturerCoursesQueries {
  /// Page
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;

  /// Per Page
  @JsonKey(name: 'perPage')
  int get perPage => throw _privateConstructorUsedError;

  /// Serializes this LecturerCoursesGetLecturerCoursesQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LecturerCoursesGetLecturerCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LecturerCoursesGetLecturerCoursesQueriesCopyWith<
          LecturerCoursesGetLecturerCoursesQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerCoursesGetLecturerCoursesQueriesCopyWith<$Res> {
  factory $LecturerCoursesGetLecturerCoursesQueriesCopyWith(
          LecturerCoursesGetLecturerCoursesQueries value,
          $Res Function(LecturerCoursesGetLecturerCoursesQueries) then) =
      _$LecturerCoursesGetLecturerCoursesQueriesCopyWithImpl<$Res,
          LecturerCoursesGetLecturerCoursesQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page, @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class _$LecturerCoursesGetLecturerCoursesQueriesCopyWithImpl<$Res,
        $Val extends LecturerCoursesGetLecturerCoursesQueries>
    implements $LecturerCoursesGetLecturerCoursesQueriesCopyWith<$Res> {
  _$LecturerCoursesGetLecturerCoursesQueriesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LecturerCoursesGetLecturerCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LecturerCoursesGetLecturerCoursesQueriesImplCopyWith<$Res>
    implements $LecturerCoursesGetLecturerCoursesQueriesCopyWith<$Res> {
  factory _$$LecturerCoursesGetLecturerCoursesQueriesImplCopyWith(
          _$LecturerCoursesGetLecturerCoursesQueriesImpl value,
          $Res Function(_$LecturerCoursesGetLecturerCoursesQueriesImpl) then) =
      __$$LecturerCoursesGetLecturerCoursesQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page, @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class __$$LecturerCoursesGetLecturerCoursesQueriesImplCopyWithImpl<$Res>
    extends _$LecturerCoursesGetLecturerCoursesQueriesCopyWithImpl<$Res,
        _$LecturerCoursesGetLecturerCoursesQueriesImpl>
    implements _$$LecturerCoursesGetLecturerCoursesQueriesImplCopyWith<$Res> {
  __$$LecturerCoursesGetLecturerCoursesQueriesImplCopyWithImpl(
      _$LecturerCoursesGetLecturerCoursesQueriesImpl _value,
      $Res Function(_$LecturerCoursesGetLecturerCoursesQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of LecturerCoursesGetLecturerCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$LecturerCoursesGetLecturerCoursesQueriesImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$LecturerCoursesGetLecturerCoursesQueriesImpl
    extends _LecturerCoursesGetLecturerCoursesQueries {
  const _$LecturerCoursesGetLecturerCoursesQueriesImpl(
      {@JsonKey(name: 'page') this.page = 1,
      @JsonKey(name: 'perPage') this.perPage = 10})
      : super._();

  factory _$LecturerCoursesGetLecturerCoursesQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LecturerCoursesGetLecturerCoursesQueriesImplFromJson(json);

  /// Page
  @override
  @JsonKey(name: 'page')
  final int page;

  /// Per Page
  @override
  @JsonKey(name: 'perPage')
  final int perPage;

  @override
  String toString() {
    return 'LecturerCoursesGetLecturerCoursesQueries(page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerCoursesGetLecturerCoursesQueriesImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage);

  /// Create a copy of LecturerCoursesGetLecturerCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerCoursesGetLecturerCoursesQueriesImplCopyWith<
          _$LecturerCoursesGetLecturerCoursesQueriesImpl>
      get copyWith =>
          __$$LecturerCoursesGetLecturerCoursesQueriesImplCopyWithImpl<
              _$LecturerCoursesGetLecturerCoursesQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerCoursesGetLecturerCoursesQueriesImplToJson(
      this,
    );
  }
}

abstract class _LecturerCoursesGetLecturerCoursesQueries
    extends LecturerCoursesGetLecturerCoursesQueries {
  const factory _LecturerCoursesGetLecturerCoursesQueries(
          {@JsonKey(name: 'page') final int page,
          @JsonKey(name: 'perPage') final int perPage}) =
      _$LecturerCoursesGetLecturerCoursesQueriesImpl;
  const _LecturerCoursesGetLecturerCoursesQueries._() : super._();

  factory _LecturerCoursesGetLecturerCoursesQueries.fromJson(
          Map<String, dynamic> json) =
      _$LecturerCoursesGetLecturerCoursesQueriesImpl.fromJson;

  /// Page
  @override
  @JsonKey(name: 'page')
  int get page;

  /// Per Page
  @override
  @JsonKey(name: 'perPage')
  int get perPage;

  /// Create a copy of LecturerCoursesGetLecturerCoursesQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LecturerCoursesGetLecturerCoursesQueriesImplCopyWith<
          _$LecturerCoursesGetLecturerCoursesQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
