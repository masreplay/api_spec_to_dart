// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_fees_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadFeesQueries _$ReadFeesQueriesFromJson(Map<String, dynamic> json) {
  return _ReadFeesQueries.fromJson(json);
}

/// @nodoc
mixin _$ReadFeesQueries {
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

  /// Serializes this ReadFeesQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadFeesQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadFeesQueriesCopyWith<ReadFeesQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadFeesQueriesCopyWith<$Res> {
  factory $ReadFeesQueriesCopyWith(
          ReadFeesQueries value, $Res Function(ReadFeesQueries) then) =
      _$ReadFeesQueriesCopyWithImpl<$Res, ReadFeesQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'feesTypeId') int? feesTypeId,
      @JsonKey(name: 'studyYearId') int? studyYearId,
      @JsonKey(name: 'page') int page,
      @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class _$ReadFeesQueriesCopyWithImpl<$Res, $Val extends ReadFeesQueries>
    implements $ReadFeesQueriesCopyWith<$Res> {
  _$ReadFeesQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadFeesQueries
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
abstract class _$$ReadFeesQueriesImplCopyWith<$Res>
    implements $ReadFeesQueriesCopyWith<$Res> {
  factory _$$ReadFeesQueriesImplCopyWith(_$ReadFeesQueriesImpl value,
          $Res Function(_$ReadFeesQueriesImpl) then) =
      __$$ReadFeesQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'feesTypeId') int? feesTypeId,
      @JsonKey(name: 'studyYearId') int? studyYearId,
      @JsonKey(name: 'page') int page,
      @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class __$$ReadFeesQueriesImplCopyWithImpl<$Res>
    extends _$ReadFeesQueriesCopyWithImpl<$Res, _$ReadFeesQueriesImpl>
    implements _$$ReadFeesQueriesImplCopyWith<$Res> {
  __$$ReadFeesQueriesImplCopyWithImpl(
      _$ReadFeesQueriesImpl _value, $Res Function(_$ReadFeesQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadFeesQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feesTypeId = freezed,
    Object? studyYearId = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$ReadFeesQueriesImpl(
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
class _$ReadFeesQueriesImpl extends _ReadFeesQueries {
  const _$ReadFeesQueriesImpl(
      {@JsonKey(name: 'feesTypeId') required this.feesTypeId,
      @JsonKey(name: 'studyYearId') required this.studyYearId,
      @JsonKey(name: 'page') required this.page = 1,
      @JsonKey(name: 'perPage') required this.perPage = 10})
      : super._();

  factory _$ReadFeesQueriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadFeesQueriesImplFromJson(json);

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
    return 'ReadFeesQueries(feesTypeId: $feesTypeId, studyYearId: $studyYearId, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadFeesQueriesImpl &&
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

  /// Create a copy of ReadFeesQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadFeesQueriesImplCopyWith<_$ReadFeesQueriesImpl> get copyWith =>
      __$$ReadFeesQueriesImplCopyWithImpl<_$ReadFeesQueriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadFeesQueriesImplToJson(
      this,
    );
  }
}

abstract class _ReadFeesQueries extends ReadFeesQueries {
  const factory _ReadFeesQueries(
          {@JsonKey(name: 'feesTypeId') required final int? feesTypeId,
          @JsonKey(name: 'studyYearId') required final int? studyYearId,
          @JsonKey(name: 'page') required final int page,
          @JsonKey(name: 'perPage') required final int perPage}) =
      _$ReadFeesQueriesImpl;
  const _ReadFeesQueries._() : super._();

  factory _ReadFeesQueries.fromJson(Map<String, dynamic> json) =
      _$ReadFeesQueriesImpl.fromJson;

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

  /// Create a copy of ReadFeesQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadFeesQueriesImplCopyWith<_$ReadFeesQueriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
