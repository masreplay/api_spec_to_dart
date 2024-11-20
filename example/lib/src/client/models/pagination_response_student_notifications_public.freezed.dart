// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_response_student_notifications_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationResponseStudentNotificationsPublic
    _$PaginationResponseStudentNotificationsPublicFromJson(
        Map<String, dynamic> json) {
  return _PaginationResponseStudentNotificationsPublic.fromJson(json);
}

/// @nodoc
mixin _$PaginationResponseStudentNotificationsPublic {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this PaginationResponseStudentNotificationsPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationResponseStudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationResponseStudentNotificationsPublicCopyWith<
          PaginationResponseStudentNotificationsPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationResponseStudentNotificationsPublicCopyWith<$Res> {
  factory $PaginationResponseStudentNotificationsPublicCopyWith(
          PaginationResponseStudentNotificationsPublic value,
          $Res Function(PaginationResponseStudentNotificationsPublic) then) =
      _$PaginationResponseStudentNotificationsPublicCopyWithImpl<$Res,
          PaginationResponseStudentNotificationsPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class _$PaginationResponseStudentNotificationsPublicCopyWithImpl<$Res,
        $Val extends PaginationResponseStudentNotificationsPublic>
    implements $PaginationResponseStudentNotificationsPublicCopyWith<$Res> {
  _$PaginationResponseStudentNotificationsPublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationResponseStudentNotificationsPublic
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
abstract class _$$PaginationResponseStudentNotificationsPublicImplCopyWith<$Res>
    implements $PaginationResponseStudentNotificationsPublicCopyWith<$Res> {
  factory _$$PaginationResponseStudentNotificationsPublicImplCopyWith(
          _$PaginationResponseStudentNotificationsPublicImpl value,
          $Res Function(_$PaginationResponseStudentNotificationsPublicImpl)
              then) =
      __$$PaginationResponseStudentNotificationsPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class __$$PaginationResponseStudentNotificationsPublicImplCopyWithImpl<$Res>
    extends _$PaginationResponseStudentNotificationsPublicCopyWithImpl<$Res,
        _$PaginationResponseStudentNotificationsPublicImpl>
    implements
        _$$PaginationResponseStudentNotificationsPublicImplCopyWith<$Res> {
  __$$PaginationResponseStudentNotificationsPublicImplCopyWithImpl(
      _$PaginationResponseStudentNotificationsPublicImpl _value,
      $Res Function(_$PaginationResponseStudentNotificationsPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationResponseStudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_$PaginationResponseStudentNotificationsPublicImpl(
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
@JsonSerializable()
class _$PaginationResponseStudentNotificationsPublicImpl
    implements _PaginationResponseStudentNotificationsPublic {
  const _$PaginationResponseStudentNotificationsPublicImpl(
      {@JsonKey(name: 'page') required this.page,
      @JsonKey(name: 'per_page') required this.perPage,
      @JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'data') required final List<dynamic> data})
      : _data = data;

  factory _$PaginationResponseStudentNotificationsPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PaginationResponseStudentNotificationsPublicImplFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  @JsonKey(name: 'total')
  final int total;
  final List<dynamic> _data;
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PaginationResponseStudentNotificationsPublic(page: $page, perPage: $perPage, total: $total, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationResponseStudentNotificationsPublicImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, total,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of PaginationResponseStudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationResponseStudentNotificationsPublicImplCopyWith<
          _$PaginationResponseStudentNotificationsPublicImpl>
      get copyWith =>
          __$$PaginationResponseStudentNotificationsPublicImplCopyWithImpl<
                  _$PaginationResponseStudentNotificationsPublicImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationResponseStudentNotificationsPublicImplToJson(
      this,
    );
  }
}

abstract class _PaginationResponseStudentNotificationsPublic
    implements PaginationResponseStudentNotificationsPublic {
  const factory _PaginationResponseStudentNotificationsPublic(
          {@JsonKey(name: 'page') required final int page,
          @JsonKey(name: 'per_page') required final int perPage,
          @JsonKey(name: 'total') required final int total,
          @JsonKey(name: 'data') required final List<dynamic> data}) =
      _$PaginationResponseStudentNotificationsPublicImpl;

  factory _PaginationResponseStudentNotificationsPublic.fromJson(
          Map<String, dynamic> json) =
      _$PaginationResponseStudentNotificationsPublicImpl.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data;

  /// Create a copy of PaginationResponseStudentNotificationsPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationResponseStudentNotificationsPublicImplCopyWith<
          _$PaginationResponseStudentNotificationsPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
