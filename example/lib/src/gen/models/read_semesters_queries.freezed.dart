// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_semesters_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadSemestersQueries _$ReadSemestersQueriesFromJson(Map<String, dynamic> json) {
  return _ReadSemestersQueries.fromJson(json);
}

/// @nodoc
mixin _$ReadSemestersQueries {
  @JsonKey(name: 'filter')
  SemesterFilter get filter => throw _privateConstructorUsedError;

  /// Serializes this ReadSemestersQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadSemestersQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadSemestersQueriesCopyWith<ReadSemestersQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadSemestersQueriesCopyWith<$Res> {
  factory $ReadSemestersQueriesCopyWith(ReadSemestersQueries value,
          $Res Function(ReadSemestersQueries) then) =
      _$ReadSemestersQueriesCopyWithImpl<$Res, ReadSemestersQueries>;
  @useResult
  $Res call({@JsonKey(name: 'filter') SemesterFilter filter});
}

/// @nodoc
class _$ReadSemestersQueriesCopyWithImpl<$Res,
        $Val extends ReadSemestersQueries>
    implements $ReadSemestersQueriesCopyWith<$Res> {
  _$ReadSemestersQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadSemestersQueries
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
abstract class _$$ReadSemestersQueriesImplCopyWith<$Res>
    implements $ReadSemestersQueriesCopyWith<$Res> {
  factory _$$ReadSemestersQueriesImplCopyWith(_$ReadSemestersQueriesImpl value,
          $Res Function(_$ReadSemestersQueriesImpl) then) =
      __$$ReadSemestersQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'filter') SemesterFilter filter});
}

/// @nodoc
class __$$ReadSemestersQueriesImplCopyWithImpl<$Res>
    extends _$ReadSemestersQueriesCopyWithImpl<$Res, _$ReadSemestersQueriesImpl>
    implements _$$ReadSemestersQueriesImplCopyWith<$Res> {
  __$$ReadSemestersQueriesImplCopyWithImpl(_$ReadSemestersQueriesImpl _value,
      $Res Function(_$ReadSemestersQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadSemestersQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$ReadSemestersQueriesImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SemesterFilter,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$ReadSemestersQueriesImpl extends _ReadSemestersQueries {
  const _$ReadSemestersQueriesImpl(
      {@JsonKey(name: 'filter') required this.filter = SemesterFilter.all})
      : super._();

  factory _$ReadSemestersQueriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadSemestersQueriesImplFromJson(json);

  @override
  @JsonKey(name: 'filter')
  final SemesterFilter filter;

  @override
  String toString() {
    return 'ReadSemestersQueries(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadSemestersQueriesImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of ReadSemestersQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadSemestersQueriesImplCopyWith<_$ReadSemestersQueriesImpl>
      get copyWith =>
          __$$ReadSemestersQueriesImplCopyWithImpl<_$ReadSemestersQueriesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadSemestersQueriesImplToJson(
      this,
    );
  }
}

abstract class _ReadSemestersQueries extends ReadSemestersQueries {
  const factory _ReadSemestersQueries(
          {@JsonKey(name: 'filter') required final SemesterFilter filter}) =
      _$ReadSemestersQueriesImpl;
  const _ReadSemestersQueries._() : super._();

  factory _ReadSemestersQueries.fromJson(Map<String, dynamic> json) =
      _$ReadSemestersQueriesImpl.fromJson;

  @override
  @JsonKey(name: 'filter')
  SemesterFilter get filter;

  /// Create a copy of ReadSemestersQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadSemestersQueriesImplCopyWith<_$ReadSemestersQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
