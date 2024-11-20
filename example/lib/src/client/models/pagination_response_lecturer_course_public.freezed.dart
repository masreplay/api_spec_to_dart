// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_response_lecturer_course_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationResponseLecturerCoursePublic
    _$PaginationResponseLecturerCoursePublicFromJson(
        Map<String, dynamic> json) {
  return _PaginationResponseLecturerCoursePublic.fromJson(json);
}

/// @nodoc
mixin _$PaginationResponseLecturerCoursePublic {
  /// Page
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;

  /// Per Page
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;

  /// Total
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this PaginationResponseLecturerCoursePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationResponseLecturerCoursePublicCopyWith<
          PaginationResponseLecturerCoursePublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationResponseLecturerCoursePublicCopyWith<$Res> {
  factory $PaginationResponseLecturerCoursePublicCopyWith(
          PaginationResponseLecturerCoursePublic value,
          $Res Function(PaginationResponseLecturerCoursePublic) then) =
      _$PaginationResponseLecturerCoursePublicCopyWithImpl<$Res,
          PaginationResponseLecturerCoursePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class _$PaginationResponseLecturerCoursePublicCopyWithImpl<$Res,
        $Val extends PaginationResponseLecturerCoursePublic>
    implements $PaginationResponseLecturerCoursePublicCopyWith<$Res> {
  _$PaginationResponseLecturerCoursePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? total = null,
    Object? data = null,
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
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationResponseLecturerCoursePublicImplCopyWith<$Res>
    implements $PaginationResponseLecturerCoursePublicCopyWith<$Res> {
  factory _$$PaginationResponseLecturerCoursePublicImplCopyWith(
          _$PaginationResponseLecturerCoursePublicImpl value,
          $Res Function(_$PaginationResponseLecturerCoursePublicImpl) then) =
      __$$PaginationResponseLecturerCoursePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class __$$PaginationResponseLecturerCoursePublicImplCopyWithImpl<$Res>
    extends _$PaginationResponseLecturerCoursePublicCopyWithImpl<$Res,
        _$PaginationResponseLecturerCoursePublicImpl>
    implements _$$PaginationResponseLecturerCoursePublicImplCopyWith<$Res> {
  __$$PaginationResponseLecturerCoursePublicImplCopyWithImpl(
      _$PaginationResponseLecturerCoursePublicImpl _value,
      $Res Function(_$PaginationResponseLecturerCoursePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_$PaginationResponseLecturerCoursePublicImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$PaginationResponseLecturerCoursePublicImpl
    extends _PaginationResponseLecturerCoursePublic {
  const _$PaginationResponseLecturerCoursePublicImpl(
      {@JsonKey(name: 'page') required this.page,
      @JsonKey(name: 'per_page') required this.perPage,
      @JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'data') required final List<dynamic> data})
      : _data = data,
        super._();

  factory _$PaginationResponseLecturerCoursePublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PaginationResponseLecturerCoursePublicImplFromJson(json);

  /// Page
  @override
  @JsonKey(name: 'page')
  final int page;

  /// Per Page
  @override
  @JsonKey(name: 'per_page')
  final int perPage;

  /// Total
  @override
  @JsonKey(name: 'total')
  final int total;

  /// Data
  final List<dynamic> _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PaginationResponseLecturerCoursePublic(page: $page, perPage: $perPage, total: $total, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationResponseLecturerCoursePublicImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, total,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of PaginationResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationResponseLecturerCoursePublicImplCopyWith<
          _$PaginationResponseLecturerCoursePublicImpl>
      get copyWith =>
          __$$PaginationResponseLecturerCoursePublicImplCopyWithImpl<
              _$PaginationResponseLecturerCoursePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationResponseLecturerCoursePublicImplToJson(
      this,
    );
  }
}

abstract class _PaginationResponseLecturerCoursePublic
    extends PaginationResponseLecturerCoursePublic {
  const factory _PaginationResponseLecturerCoursePublic(
          {@JsonKey(name: 'page') required final int page,
          @JsonKey(name: 'per_page') required final int perPage,
          @JsonKey(name: 'total') required final int total,
          @JsonKey(name: 'data') required final List<dynamic> data}) =
      _$PaginationResponseLecturerCoursePublicImpl;
  const _PaginationResponseLecturerCoursePublic._() : super._();

  factory _PaginationResponseLecturerCoursePublic.fromJson(
          Map<String, dynamic> json) =
      _$PaginationResponseLecturerCoursePublicImpl.fromJson;

  /// Page
  @override
  @JsonKey(name: 'page')
  int get page;

  /// Per Page
  @override
  @JsonKey(name: 'per_page')
  int get perPage;

  /// Total
  @override
  @JsonKey(name: 'total')
  int get total;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data;

  /// Create a copy of PaginationResponseLecturerCoursePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationResponseLecturerCoursePublicImplCopyWith<
          _$PaginationResponseLecturerCoursePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
