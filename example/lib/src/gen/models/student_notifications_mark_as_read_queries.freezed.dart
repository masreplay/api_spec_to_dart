// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_notifications_mark_as_read_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentNotificationsMarkAsReadQueries
    _$StudentNotificationsMarkAsReadQueriesFromJson(Map<String, dynamic> json) {
  return _StudentNotificationsMarkAsReadQueries.fromJson(json);
}

/// @nodoc
mixin _$StudentNotificationsMarkAsReadQueries {
  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Serializes this StudentNotificationsMarkAsReadQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentNotificationsMarkAsReadQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentNotificationsMarkAsReadQueriesCopyWith<
          StudentNotificationsMarkAsReadQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentNotificationsMarkAsReadQueriesCopyWith<$Res> {
  factory $StudentNotificationsMarkAsReadQueriesCopyWith(
          StudentNotificationsMarkAsReadQueries value,
          $Res Function(StudentNotificationsMarkAsReadQueries) then) =
      _$StudentNotificationsMarkAsReadQueriesCopyWithImpl<$Res,
          StudentNotificationsMarkAsReadQueries>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id});
}

/// @nodoc
class _$StudentNotificationsMarkAsReadQueriesCopyWithImpl<$Res,
        $Val extends StudentNotificationsMarkAsReadQueries>
    implements $StudentNotificationsMarkAsReadQueriesCopyWith<$Res> {
  _$StudentNotificationsMarkAsReadQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentNotificationsMarkAsReadQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentNotificationsMarkAsReadQueriesImplCopyWith<$Res>
    implements $StudentNotificationsMarkAsReadQueriesCopyWith<$Res> {
  factory _$$StudentNotificationsMarkAsReadQueriesImplCopyWith(
          _$StudentNotificationsMarkAsReadQueriesImpl value,
          $Res Function(_$StudentNotificationsMarkAsReadQueriesImpl) then) =
      __$$StudentNotificationsMarkAsReadQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id});
}

/// @nodoc
class __$$StudentNotificationsMarkAsReadQueriesImplCopyWithImpl<$Res>
    extends _$StudentNotificationsMarkAsReadQueriesCopyWithImpl<$Res,
        _$StudentNotificationsMarkAsReadQueriesImpl>
    implements _$$StudentNotificationsMarkAsReadQueriesImplCopyWith<$Res> {
  __$$StudentNotificationsMarkAsReadQueriesImplCopyWithImpl(
      _$StudentNotificationsMarkAsReadQueriesImpl _value,
      $Res Function(_$StudentNotificationsMarkAsReadQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentNotificationsMarkAsReadQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$StudentNotificationsMarkAsReadQueriesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentNotificationsMarkAsReadQueriesImpl
    extends _StudentNotificationsMarkAsReadQueries {
  const _$StudentNotificationsMarkAsReadQueriesImpl(
      {@JsonKey(name: 'id') required this.id})
      : super._();

  factory _$StudentNotificationsMarkAsReadQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentNotificationsMarkAsReadQueriesImplFromJson(json);

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;

  @override
  String toString() {
    return 'StudentNotificationsMarkAsReadQueries(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentNotificationsMarkAsReadQueriesImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of StudentNotificationsMarkAsReadQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentNotificationsMarkAsReadQueriesImplCopyWith<
          _$StudentNotificationsMarkAsReadQueriesImpl>
      get copyWith => __$$StudentNotificationsMarkAsReadQueriesImplCopyWithImpl<
          _$StudentNotificationsMarkAsReadQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentNotificationsMarkAsReadQueriesImplToJson(
      this,
    );
  }
}

abstract class _StudentNotificationsMarkAsReadQueries
    extends StudentNotificationsMarkAsReadQueries {
  const factory _StudentNotificationsMarkAsReadQueries(
          {@JsonKey(name: 'id') required final int id}) =
      _$StudentNotificationsMarkAsReadQueriesImpl;
  const _StudentNotificationsMarkAsReadQueries._() : super._();

  factory _StudentNotificationsMarkAsReadQueries.fromJson(
          Map<String, dynamic> json) =
      _$StudentNotificationsMarkAsReadQueriesImpl.fromJson;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Create a copy of StudentNotificationsMarkAsReadQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentNotificationsMarkAsReadQueriesImplCopyWith<
          _$StudentNotificationsMarkAsReadQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
