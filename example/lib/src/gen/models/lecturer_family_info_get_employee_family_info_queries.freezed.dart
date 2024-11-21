// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_family_info_get_employee_family_info_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LecturerFamilyInfoGetEmployeeFamilyInfoQueries
    _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesFromJson(
        Map<String, dynamic> json) {
  return _LecturerFamilyInfoGetEmployeeFamilyInfoQueries.fromJson(json);
}

/// @nodoc
mixin _$LecturerFamilyInfoGetEmployeeFamilyInfoQueries {
  /// Employee Id
  @JsonKey(name: 'employeeId')
  int get employeeId => throw _privateConstructorUsedError;

  /// Serializes this LecturerFamilyInfoGetEmployeeFamilyInfoQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LecturerFamilyInfoGetEmployeeFamilyInfoQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LecturerFamilyInfoGetEmployeeFamilyInfoQueriesCopyWith<
          LecturerFamilyInfoGetEmployeeFamilyInfoQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerFamilyInfoGetEmployeeFamilyInfoQueriesCopyWith<$Res> {
  factory $LecturerFamilyInfoGetEmployeeFamilyInfoQueriesCopyWith(
          LecturerFamilyInfoGetEmployeeFamilyInfoQueries value,
          $Res Function(LecturerFamilyInfoGetEmployeeFamilyInfoQueries) then) =
      _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesCopyWithImpl<$Res,
          LecturerFamilyInfoGetEmployeeFamilyInfoQueries>;
  @useResult
  $Res call({@JsonKey(name: 'employeeId') int employeeId});
}

/// @nodoc
class _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesCopyWithImpl<$Res,
        $Val extends LecturerFamilyInfoGetEmployeeFamilyInfoQueries>
    implements $LecturerFamilyInfoGetEmployeeFamilyInfoQueriesCopyWith<$Res> {
  _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LecturerFamilyInfoGetEmployeeFamilyInfoQueries
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
abstract class _$$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImplCopyWith<
        $Res>
    implements $LecturerFamilyInfoGetEmployeeFamilyInfoQueriesCopyWith<$Res> {
  factory _$$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImplCopyWith(
          _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl value,
          $Res Function(_$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl)
              then) =
      __$$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'employeeId') int employeeId});
}

/// @nodoc
class __$$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImplCopyWithImpl<$Res>
    extends _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesCopyWithImpl<$Res,
        _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl>
    implements
        _$$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImplCopyWith<$Res> {
  __$$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImplCopyWithImpl(
      _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl _value,
      $Res Function(_$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of LecturerFamilyInfoGetEmployeeFamilyInfoQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl
    extends _LecturerFamilyInfoGetEmployeeFamilyInfoQueries {
  const _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl(
      {@JsonKey(name: 'employeeId') required this.employeeId})
      : super._();

  factory _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImplFromJson(json);

  /// Employee Id
  @override
  @JsonKey(name: 'employeeId')
  final int employeeId;

  @override
  String toString() {
    return 'LecturerFamilyInfoGetEmployeeFamilyInfoQueries(employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, employeeId);

  /// Create a copy of LecturerFamilyInfoGetEmployeeFamilyInfoQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImplCopyWith<
          _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl>
      get copyWith =>
          __$$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImplCopyWithImpl<
                  _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImplToJson(
      this,
    );
  }
}

abstract class _LecturerFamilyInfoGetEmployeeFamilyInfoQueries
    extends LecturerFamilyInfoGetEmployeeFamilyInfoQueries {
  const factory _LecturerFamilyInfoGetEmployeeFamilyInfoQueries(
          {@JsonKey(name: 'employeeId') required final int employeeId}) =
      _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl;
  const _LecturerFamilyInfoGetEmployeeFamilyInfoQueries._() : super._();

  factory _LecturerFamilyInfoGetEmployeeFamilyInfoQueries.fromJson(
          Map<String, dynamic> json) =
      _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl.fromJson;

  /// Employee Id
  @override
  @JsonKey(name: 'employeeId')
  int get employeeId;

  /// Create a copy of LecturerFamilyInfoGetEmployeeFamilyInfoQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImplCopyWith<
          _$LecturerFamilyInfoGetEmployeeFamilyInfoQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
