// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_notifications_read_notifications_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentNotificationsReadNotificationsQueries
    _$StudentNotificationsReadNotificationsQueriesFromJson(
        Map<String, dynamic> json) {
  return _StudentNotificationsReadNotificationsQueries.fromJson(json);
}

/// @nodoc
mixin _$StudentNotificationsReadNotificationsQueries {
  /// Is Read
  @JsonKey(name: 'isRead')
  bool? get isRead => throw _privateConstructorUsedError;

  /// Page
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;

  /// Per Page
  @JsonKey(name: 'perPage')
  int get perPage => throw _privateConstructorUsedError;

  /// Serializes this StudentNotificationsReadNotificationsQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentNotificationsReadNotificationsQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentNotificationsReadNotificationsQueriesCopyWith<
          StudentNotificationsReadNotificationsQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentNotificationsReadNotificationsQueriesCopyWith<$Res> {
  factory $StudentNotificationsReadNotificationsQueriesCopyWith(
          StudentNotificationsReadNotificationsQueries value,
          $Res Function(StudentNotificationsReadNotificationsQueries) then) =
      _$StudentNotificationsReadNotificationsQueriesCopyWithImpl<$Res,
          StudentNotificationsReadNotificationsQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'isRead') bool? isRead,
      @JsonKey(name: 'page') int page,
      @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class _$StudentNotificationsReadNotificationsQueriesCopyWithImpl<$Res,
        $Val extends StudentNotificationsReadNotificationsQueries>
    implements $StudentNotificationsReadNotificationsQueriesCopyWith<$Res> {
  _$StudentNotificationsReadNotificationsQueriesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentNotificationsReadNotificationsQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRead = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_value.copyWith(
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$StudentNotificationsReadNotificationsQueriesImplCopyWith<$Res>
    implements $StudentNotificationsReadNotificationsQueriesCopyWith<$Res> {
  factory _$$StudentNotificationsReadNotificationsQueriesImplCopyWith(
          _$StudentNotificationsReadNotificationsQueriesImpl value,
          $Res Function(_$StudentNotificationsReadNotificationsQueriesImpl)
              then) =
      __$$StudentNotificationsReadNotificationsQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isRead') bool? isRead,
      @JsonKey(name: 'page') int page,
      @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class __$$StudentNotificationsReadNotificationsQueriesImplCopyWithImpl<$Res>
    extends _$StudentNotificationsReadNotificationsQueriesCopyWithImpl<$Res,
        _$StudentNotificationsReadNotificationsQueriesImpl>
    implements
        _$$StudentNotificationsReadNotificationsQueriesImplCopyWith<$Res> {
  __$$StudentNotificationsReadNotificationsQueriesImplCopyWithImpl(
      _$StudentNotificationsReadNotificationsQueriesImpl _value,
      $Res Function(_$StudentNotificationsReadNotificationsQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentNotificationsReadNotificationsQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRead = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$StudentNotificationsReadNotificationsQueriesImpl(
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$StudentNotificationsReadNotificationsQueriesImpl
    extends _StudentNotificationsReadNotificationsQueries {
  const _$StudentNotificationsReadNotificationsQueriesImpl(
      {@JsonKey(name: 'isRead') required this.isRead,
      @JsonKey(name: 'page') this.page = 1,
      @JsonKey(name: 'perPage') this.perPage = 10})
      : super._();

  factory _$StudentNotificationsReadNotificationsQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentNotificationsReadNotificationsQueriesImplFromJson(json);

  /// Is Read
  @override
  @JsonKey(name: 'isRead')
  final bool? isRead;

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
    return 'StudentNotificationsReadNotificationsQueries(isRead: $isRead, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentNotificationsReadNotificationsQueriesImpl &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isRead, page, perPage);

  /// Create a copy of StudentNotificationsReadNotificationsQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentNotificationsReadNotificationsQueriesImplCopyWith<
          _$StudentNotificationsReadNotificationsQueriesImpl>
      get copyWith =>
          __$$StudentNotificationsReadNotificationsQueriesImplCopyWithImpl<
                  _$StudentNotificationsReadNotificationsQueriesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentNotificationsReadNotificationsQueriesImplToJson(
      this,
    );
  }
}

abstract class _StudentNotificationsReadNotificationsQueries
    extends StudentNotificationsReadNotificationsQueries {
  const factory _StudentNotificationsReadNotificationsQueries(
          {@JsonKey(name: 'isRead') required final bool? isRead,
          @JsonKey(name: 'page') final int page,
          @JsonKey(name: 'perPage') final int perPage}) =
      _$StudentNotificationsReadNotificationsQueriesImpl;
  const _StudentNotificationsReadNotificationsQueries._() : super._();

  factory _StudentNotificationsReadNotificationsQueries.fromJson(
          Map<String, dynamic> json) =
      _$StudentNotificationsReadNotificationsQueriesImpl.fromJson;

  /// Is Read
  @override
  @JsonKey(name: 'isRead')
  bool? get isRead;

  /// Page
  @override
  @JsonKey(name: 'page')
  int get page;

  /// Per Page
  @override
  @JsonKey(name: 'perPage')
  int get perPage;

  /// Create a copy of StudentNotificationsReadNotificationsQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentNotificationsReadNotificationsQueriesImplCopyWith<
          _$StudentNotificationsReadNotificationsQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
