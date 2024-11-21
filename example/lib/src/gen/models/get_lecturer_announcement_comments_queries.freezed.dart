// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_lecturer_announcement_comments_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetLecturerAnnouncementCommentsQueries
    _$GetLecturerAnnouncementCommentsQueriesFromJson(
        Map<String, dynamic> json) {
  return _GetLecturerAnnouncementCommentsQueries.fromJson(json);
}

/// @nodoc
mixin _$GetLecturerAnnouncementCommentsQueries {
  /// Page
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;

  /// Per Page
  @JsonKey(name: 'perPage')
  int get perPage => throw _privateConstructorUsedError;

  /// Serializes this GetLecturerAnnouncementCommentsQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetLecturerAnnouncementCommentsQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetLecturerAnnouncementCommentsQueriesCopyWith<
          GetLecturerAnnouncementCommentsQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLecturerAnnouncementCommentsQueriesCopyWith<$Res> {
  factory $GetLecturerAnnouncementCommentsQueriesCopyWith(
          GetLecturerAnnouncementCommentsQueries value,
          $Res Function(GetLecturerAnnouncementCommentsQueries) then) =
      _$GetLecturerAnnouncementCommentsQueriesCopyWithImpl<$Res,
          GetLecturerAnnouncementCommentsQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page, @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class _$GetLecturerAnnouncementCommentsQueriesCopyWithImpl<$Res,
        $Val extends GetLecturerAnnouncementCommentsQueries>
    implements $GetLecturerAnnouncementCommentsQueriesCopyWith<$Res> {
  _$GetLecturerAnnouncementCommentsQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetLecturerAnnouncementCommentsQueries
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
abstract class _$$GetLecturerAnnouncementCommentsQueriesImplCopyWith<$Res>
    implements $GetLecturerAnnouncementCommentsQueriesCopyWith<$Res> {
  factory _$$GetLecturerAnnouncementCommentsQueriesImplCopyWith(
          _$GetLecturerAnnouncementCommentsQueriesImpl value,
          $Res Function(_$GetLecturerAnnouncementCommentsQueriesImpl) then) =
      __$$GetLecturerAnnouncementCommentsQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page, @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class __$$GetLecturerAnnouncementCommentsQueriesImplCopyWithImpl<$Res>
    extends _$GetLecturerAnnouncementCommentsQueriesCopyWithImpl<$Res,
        _$GetLecturerAnnouncementCommentsQueriesImpl>
    implements _$$GetLecturerAnnouncementCommentsQueriesImplCopyWith<$Res> {
  __$$GetLecturerAnnouncementCommentsQueriesImplCopyWithImpl(
      _$GetLecturerAnnouncementCommentsQueriesImpl _value,
      $Res Function(_$GetLecturerAnnouncementCommentsQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetLecturerAnnouncementCommentsQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$GetLecturerAnnouncementCommentsQueriesImpl(
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
class _$GetLecturerAnnouncementCommentsQueriesImpl
    extends _GetLecturerAnnouncementCommentsQueries {
  const _$GetLecturerAnnouncementCommentsQueriesImpl(
      {@JsonKey(name: 'page') required this.page = 1,
      @JsonKey(name: 'perPage') required this.perPage = 10})
      : super._();

  factory _$GetLecturerAnnouncementCommentsQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetLecturerAnnouncementCommentsQueriesImplFromJson(json);

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
    return 'GetLecturerAnnouncementCommentsQueries(page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLecturerAnnouncementCommentsQueriesImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage);

  /// Create a copy of GetLecturerAnnouncementCommentsQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLecturerAnnouncementCommentsQueriesImplCopyWith<
          _$GetLecturerAnnouncementCommentsQueriesImpl>
      get copyWith =>
          __$$GetLecturerAnnouncementCommentsQueriesImplCopyWithImpl<
              _$GetLecturerAnnouncementCommentsQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetLecturerAnnouncementCommentsQueriesImplToJson(
      this,
    );
  }
}

abstract class _GetLecturerAnnouncementCommentsQueries
    extends GetLecturerAnnouncementCommentsQueries {
  const factory _GetLecturerAnnouncementCommentsQueries(
          {@JsonKey(name: 'page') required final int page,
          @JsonKey(name: 'perPage') required final int perPage}) =
      _$GetLecturerAnnouncementCommentsQueriesImpl;
  const _GetLecturerAnnouncementCommentsQueries._() : super._();

  factory _GetLecturerAnnouncementCommentsQueries.fromJson(
          Map<String, dynamic> json) =
      _$GetLecturerAnnouncementCommentsQueriesImpl.fromJson;

  /// Page
  @override
  @JsonKey(name: 'page')
  int get page;

  /// Per Page
  @override
  @JsonKey(name: 'perPage')
  int get perPage;

  /// Create a copy of GetLecturerAnnouncementCommentsQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLecturerAnnouncementCommentsQueriesImplCopyWith<
          _$GetLecturerAnnouncementCommentsQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
