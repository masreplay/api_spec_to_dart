// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetQueries _$GetQueriesFromJson(Map<String, dynamic> json) {
  return _GetQueries.fromJson(json);
}

/// @nodoc
mixin _$GetQueries {
  /// Page
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;

  /// Per Page
  @JsonKey(name: 'perPage')
  int get perPage => throw _privateConstructorUsedError;

  /// Serializes this GetQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetQueriesCopyWith<GetQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetQueriesCopyWith<$Res> {
  factory $GetQueriesCopyWith(
          GetQueries value, $Res Function(GetQueries) then) =
      _$GetQueriesCopyWithImpl<$Res, GetQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page, @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class _$GetQueriesCopyWithImpl<$Res, $Val extends GetQueries>
    implements $GetQueriesCopyWith<$Res> {
  _$GetQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetQueries
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
abstract class _$$GetQueriesImplCopyWith<$Res>
    implements $GetQueriesCopyWith<$Res> {
  factory _$$GetQueriesImplCopyWith(
          _$GetQueriesImpl value, $Res Function(_$GetQueriesImpl) then) =
      __$$GetQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page, @JsonKey(name: 'perPage') int perPage});
}

/// @nodoc
class __$$GetQueriesImplCopyWithImpl<$Res>
    extends _$GetQueriesCopyWithImpl<$Res, _$GetQueriesImpl>
    implements _$$GetQueriesImplCopyWith<$Res> {
  __$$GetQueriesImplCopyWithImpl(
      _$GetQueriesImpl _value, $Res Function(_$GetQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$GetQueriesImpl(
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
class _$GetQueriesImpl extends _GetQueries {
  const _$GetQueriesImpl(
      {@JsonKey(name: 'page') required this.page = 1,
      @JsonKey(name: 'perPage') required this.perPage = 10})
      : super._();

  factory _$GetQueriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetQueriesImplFromJson(json);

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
    return 'GetQueries(page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQueriesImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage);

  /// Create a copy of GetQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQueriesImplCopyWith<_$GetQueriesImpl> get copyWith =>
      __$$GetQueriesImplCopyWithImpl<_$GetQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetQueriesImplToJson(
      this,
    );
  }
}

abstract class _GetQueries extends GetQueries {
  const factory _GetQueries(
      {@JsonKey(name: 'page') required final int page,
      @JsonKey(name: 'perPage') required final int perPage}) = _$GetQueriesImpl;
  const _GetQueries._() : super._();

  factory _GetQueries.fromJson(Map<String, dynamic> json) =
      _$GetQueriesImpl.fromJson;

  /// Page
  @override
  @JsonKey(name: 'page')
  int get page;

  /// Per Page
  @override
  @JsonKey(name: 'perPage')
  int get perPage;

  /// Create a copy of GetQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetQueriesImplCopyWith<_$GetQueriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
