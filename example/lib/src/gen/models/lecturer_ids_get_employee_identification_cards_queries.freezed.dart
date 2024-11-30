// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_ids_get_employee_identification_cards_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LecturerIdsGetEmployeeIdentificationCardsQueries
    _$LecturerIdsGetEmployeeIdentificationCardsQueriesFromJson(
        Map<String, dynamic> json) {
  return _LecturerIdsGetEmployeeIdentificationCardsQueries.fromJson(json);
}

/// @nodoc
mixin _$LecturerIdsGetEmployeeIdentificationCardsQueries {
  /// Employee Id
  @JsonKey(name: 'employeeId')
  int get employeeId => throw _privateConstructorUsedError;

  /// Serializes this LecturerIdsGetEmployeeIdentificationCardsQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LecturerIdsGetEmployeeIdentificationCardsQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LecturerIdsGetEmployeeIdentificationCardsQueriesCopyWith<
          LecturerIdsGetEmployeeIdentificationCardsQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerIdsGetEmployeeIdentificationCardsQueriesCopyWith<$Res> {
  factory $LecturerIdsGetEmployeeIdentificationCardsQueriesCopyWith(
          LecturerIdsGetEmployeeIdentificationCardsQueries value,
          $Res Function(LecturerIdsGetEmployeeIdentificationCardsQueries)
              then) =
      _$LecturerIdsGetEmployeeIdentificationCardsQueriesCopyWithImpl<$Res,
          LecturerIdsGetEmployeeIdentificationCardsQueries>;
  @useResult
  $Res call({@JsonKey(name: 'employeeId') int employeeId});
}

/// @nodoc
class _$LecturerIdsGetEmployeeIdentificationCardsQueriesCopyWithImpl<$Res,
        $Val extends LecturerIdsGetEmployeeIdentificationCardsQueries>
    implements $LecturerIdsGetEmployeeIdentificationCardsQueriesCopyWith<$Res> {
  _$LecturerIdsGetEmployeeIdentificationCardsQueriesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LecturerIdsGetEmployeeIdentificationCardsQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_value.copyWith(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LecturerIdsGetEmployeeIdentificationCardsQueriesImplCopyWith<
        $Res>
    implements $LecturerIdsGetEmployeeIdentificationCardsQueriesCopyWith<$Res> {
  factory _$$LecturerIdsGetEmployeeIdentificationCardsQueriesImplCopyWith(
          _$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl value,
          $Res Function(_$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl)
              then) =
      __$$LecturerIdsGetEmployeeIdentificationCardsQueriesImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'employeeId') int employeeId});
}

/// @nodoc
class __$$LecturerIdsGetEmployeeIdentificationCardsQueriesImplCopyWithImpl<$Res>
    extends _$LecturerIdsGetEmployeeIdentificationCardsQueriesCopyWithImpl<$Res,
        _$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl>
    implements
        _$$LecturerIdsGetEmployeeIdentificationCardsQueriesImplCopyWith<$Res> {
  __$$LecturerIdsGetEmployeeIdentificationCardsQueriesImplCopyWithImpl(
      _$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl _value,
      $Res Function(_$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of LecturerIdsGetEmployeeIdentificationCardsQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl
    extends _LecturerIdsGetEmployeeIdentificationCardsQueries {
  const _$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl(
      {@JsonKey(name: 'employeeId') required this.employeeId})
      : super._();

  factory _$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LecturerIdsGetEmployeeIdentificationCardsQueriesImplFromJson(json);

  /// Employee Id
  @override
  @JsonKey(name: 'employeeId')
  final int employeeId;

  @override
  String toString() {
    return 'LecturerIdsGetEmployeeIdentificationCardsQueries(employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, employeeId);

  /// Create a copy of LecturerIdsGetEmployeeIdentificationCardsQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerIdsGetEmployeeIdentificationCardsQueriesImplCopyWith<
          _$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl>
      get copyWith =>
          __$$LecturerIdsGetEmployeeIdentificationCardsQueriesImplCopyWithImpl<
                  _$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerIdsGetEmployeeIdentificationCardsQueriesImplToJson(
      this,
    );
  }
}

abstract class _LecturerIdsGetEmployeeIdentificationCardsQueries
    extends LecturerIdsGetEmployeeIdentificationCardsQueries {
  const factory _LecturerIdsGetEmployeeIdentificationCardsQueries(
          {@JsonKey(name: 'employeeId') required final int employeeId}) =
      _$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl;
  const _LecturerIdsGetEmployeeIdentificationCardsQueries._() : super._();

  factory _LecturerIdsGetEmployeeIdentificationCardsQueries.fromJson(
          Map<String, dynamic> json) =
      _$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl.fromJson;

  /// Employee Id
  @override
  @JsonKey(name: 'employeeId')
  int get employeeId;

  /// Create a copy of LecturerIdsGetEmployeeIdentificationCardsQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LecturerIdsGetEmployeeIdentificationCardsQueriesImplCopyWith<
          _$LecturerIdsGetEmployeeIdentificationCardsQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
