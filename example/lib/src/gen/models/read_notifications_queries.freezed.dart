// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_notifications_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadNotificationsQueries _$ReadNotificationsQueriesFromJson(
    Map<String, dynamic> json) {
  return _ReadNotificationsQueries.fromJson(json);
}

/// @nodoc
mixin _$ReadNotificationsQueries {
  /// Is Read
  @JsonKey(name: 'isRead')
  bool? get isRead => throw _privateConstructorUsedError;

  /// Page
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;

  /// Per Page
  @JsonKey(name: 'perPage')
  int get perPage => throw _privateConstructorUsedError;

  /// Serializes this ReadNotificationsQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadNotificationsQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadNotificationsQueriesCopyWith<ReadNotificationsQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadNotificationsQueriesCopyWith<$Res> {
  factory $ReadNotificationsQueriesCopyWith(ReadNotificationsQueries value,
          $Res Function(ReadNotificationsQueries) then) =
      _$ReadNotificationsQueriesCopyWithImpl<$Res, ReadNotificationsQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'isRead') bool? isRead,
      @JsonKey(name: 'page') int page,
      @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class _$ReadNotificationsQueriesCopyWithImpl<$Res,
        $Val extends ReadNotificationsQueries>
    implements $ReadNotificationsQueriesCopyWith<$Res> {
  _$ReadNotificationsQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadNotificationsQueries
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
abstract class _$$ReadNotificationsQueriesImplCopyWith<$Res>
    implements $ReadNotificationsQueriesCopyWith<$Res> {
  factory _$$ReadNotificationsQueriesImplCopyWith(
          _$ReadNotificationsQueriesImpl value,
          $Res Function(_$ReadNotificationsQueriesImpl) then) =
      __$$ReadNotificationsQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'isRead') bool? isRead,
      @JsonKey(name: 'page') int page,
      @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class __$$ReadNotificationsQueriesImplCopyWithImpl<$Res>
    extends _$ReadNotificationsQueriesCopyWithImpl<$Res,
        _$ReadNotificationsQueriesImpl>
    implements _$$ReadNotificationsQueriesImplCopyWith<$Res> {
  __$$ReadNotificationsQueriesImplCopyWithImpl(
      _$ReadNotificationsQueriesImpl _value,
      $Res Function(_$ReadNotificationsQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadNotificationsQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRead = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$ReadNotificationsQueriesImpl(
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
class _$ReadNotificationsQueriesImpl extends _ReadNotificationsQueries {
  const _$ReadNotificationsQueriesImpl(
      {@JsonKey(name: 'isRead') required this.isRead,
      @JsonKey(name: 'page') required this.page = 1,
      @JsonKey(name: 'perPage') required this.perPage = 10})
      : super._();

  factory _$ReadNotificationsQueriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadNotificationsQueriesImplFromJson(json);

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
    return 'ReadNotificationsQueries(isRead: $isRead, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadNotificationsQueriesImpl &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isRead, page, perPage);

  /// Create a copy of ReadNotificationsQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadNotificationsQueriesImplCopyWith<_$ReadNotificationsQueriesImpl>
      get copyWith => __$$ReadNotificationsQueriesImplCopyWithImpl<
          _$ReadNotificationsQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadNotificationsQueriesImplToJson(
      this,
    );
  }
}

abstract class _ReadNotificationsQueries extends ReadNotificationsQueries {
  const factory _ReadNotificationsQueries(
          {@JsonKey(name: 'isRead') required final bool? isRead,
          @JsonKey(name: 'page') required final int page,
          @JsonKey(name: 'perPage') required final int perPage}) =
      _$ReadNotificationsQueriesImpl;
  const _ReadNotificationsQueries._() : super._();

  factory _ReadNotificationsQueries.fromJson(Map<String, dynamic> json) =
      _$ReadNotificationsQueriesImpl.fromJson;

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

  /// Create a copy of ReadNotificationsQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadNotificationsQueriesImplCopyWith<_$ReadNotificationsQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
