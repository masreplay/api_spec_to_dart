// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_fees_read_fees_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentFeesReadFeesQueries _$StudentFeesReadFeesQueriesFromJson(
    Map<String, dynamic> json) {
  return _StudentFeesReadFeesQueries.fromJson(json);
}

/// @nodoc
mixin _$StudentFeesReadFeesQueries {
  /// Fees Type Id
  @JsonKey(name: 'feesTypeId')
  int? get feesTypeId => throw _privateConstructorUsedError;

  /// Study Year Id
  @JsonKey(name: 'studyYearId')
  int? get studyYearId => throw _privateConstructorUsedError;

  /// Page
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;

  /// Per Page
  @JsonKey(name: 'perPage')
  int get perPage => throw _privateConstructorUsedError;

  /// Serializes this StudentFeesReadFeesQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentFeesReadFeesQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentFeesReadFeesQueriesCopyWith<StudentFeesReadFeesQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentFeesReadFeesQueriesCopyWith<$Res> {
  factory $StudentFeesReadFeesQueriesCopyWith(StudentFeesReadFeesQueries value,
          $Res Function(StudentFeesReadFeesQueries) then) =
      _$StudentFeesReadFeesQueriesCopyWithImpl<$Res,
          StudentFeesReadFeesQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'feesTypeId') int? feesTypeId,
      @JsonKey(name: 'studyYearId') int? studyYearId,
      @JsonKey(name: 'page') int page,
      @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class _$StudentFeesReadFeesQueriesCopyWithImpl<$Res,
        $Val extends StudentFeesReadFeesQueries>
    implements $StudentFeesReadFeesQueriesCopyWith<$Res> {
  _$StudentFeesReadFeesQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentFeesReadFeesQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feesTypeId = freezed,
    Object? studyYearId = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_value.copyWith(
      feesTypeId: freezed == feesTypeId
          ? _value.feesTypeId
          : feesTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      studyYearId: freezed == studyYearId
          ? _value.studyYearId
          : studyYearId // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$StudentFeesReadFeesQueriesImplCopyWith<$Res>
    implements $StudentFeesReadFeesQueriesCopyWith<$Res> {
  factory _$$StudentFeesReadFeesQueriesImplCopyWith(
          _$StudentFeesReadFeesQueriesImpl value,
          $Res Function(_$StudentFeesReadFeesQueriesImpl) then) =
      __$$StudentFeesReadFeesQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'feesTypeId') int? feesTypeId,
      @JsonKey(name: 'studyYearId') int? studyYearId,
      @JsonKey(name: 'page') int page,
      @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class __$$StudentFeesReadFeesQueriesImplCopyWithImpl<$Res>
    extends _$StudentFeesReadFeesQueriesCopyWithImpl<$Res,
        _$StudentFeesReadFeesQueriesImpl>
    implements _$$StudentFeesReadFeesQueriesImplCopyWith<$Res> {
  __$$StudentFeesReadFeesQueriesImplCopyWithImpl(
      _$StudentFeesReadFeesQueriesImpl _value,
      $Res Function(_$StudentFeesReadFeesQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentFeesReadFeesQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feesTypeId = freezed,
    Object? studyYearId = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$StudentFeesReadFeesQueriesImpl(
      feesTypeId: freezed == feesTypeId
          ? _value.feesTypeId
          : feesTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      studyYearId: freezed == studyYearId
          ? _value.studyYearId
          : studyYearId // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$StudentFeesReadFeesQueriesImpl extends _StudentFeesReadFeesQueries {
  const _$StudentFeesReadFeesQueriesImpl(
      {@JsonKey(name: 'feesTypeId') required this.feesTypeId,
      @JsonKey(name: 'studyYearId') required this.studyYearId,
      @JsonKey(name: 'page') this.page = 1,
      @JsonKey(name: 'perPage') this.perPage = 10})
      : super._();

  factory _$StudentFeesReadFeesQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentFeesReadFeesQueriesImplFromJson(json);

  /// Fees Type Id
  @override
  @JsonKey(name: 'feesTypeId')
  final int? feesTypeId;

  /// Study Year Id
  @override
  @JsonKey(name: 'studyYearId')
  final int? studyYearId;

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
    return 'StudentFeesReadFeesQueries(feesTypeId: $feesTypeId, studyYearId: $studyYearId, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentFeesReadFeesQueriesImpl &&
            (identical(other.feesTypeId, feesTypeId) ||
                other.feesTypeId == feesTypeId) &&
            (identical(other.studyYearId, studyYearId) ||
                other.studyYearId == studyYearId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, feesTypeId, studyYearId, page, perPage);

  /// Create a copy of StudentFeesReadFeesQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentFeesReadFeesQueriesImplCopyWith<_$StudentFeesReadFeesQueriesImpl>
      get copyWith => __$$StudentFeesReadFeesQueriesImplCopyWithImpl<
          _$StudentFeesReadFeesQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentFeesReadFeesQueriesImplToJson(
      this,
    );
  }
}

abstract class _StudentFeesReadFeesQueries extends StudentFeesReadFeesQueries {
  const factory _StudentFeesReadFeesQueries(
          {@JsonKey(name: 'feesTypeId') required final int? feesTypeId,
          @JsonKey(name: 'studyYearId') required final int? studyYearId,
          @JsonKey(name: 'page') final int page,
          @JsonKey(name: 'perPage') final int perPage}) =
      _$StudentFeesReadFeesQueriesImpl;
  const _StudentFeesReadFeesQueries._() : super._();

  factory _StudentFeesReadFeesQueries.fromJson(Map<String, dynamic> json) =
      _$StudentFeesReadFeesQueriesImpl.fromJson;

  /// Fees Type Id
  @override
  @JsonKey(name: 'feesTypeId')
  int? get feesTypeId;

  /// Study Year Id
  @override
  @JsonKey(name: 'studyYearId')
  int? get studyYearId;

  /// Page
  @override
  @JsonKey(name: 'page')
  int get page;

  /// Per Page
  @override
  @JsonKey(name: 'perPage')
  int get perPage;

  /// Create a copy of StudentFeesReadFeesQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentFeesReadFeesQueriesImplCopyWith<_$StudentFeesReadFeesQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
