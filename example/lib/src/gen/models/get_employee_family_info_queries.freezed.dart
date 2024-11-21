// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_employee_family_info_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetEmployeeFamilyInfoQueries _$GetEmployeeFamilyInfoQueriesFromJson(
    Map<String, dynamic> json) {
  return _GetEmployeeFamilyInfoQueries.fromJson(json);
}

/// @nodoc
mixin _$GetEmployeeFamilyInfoQueries {
  /// Employee Id
  @JsonKey(name: 'employeeId')
  int get employeeId => throw _privateConstructorUsedError;

  /// Serializes this GetEmployeeFamilyInfoQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetEmployeeFamilyInfoQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEmployeeFamilyInfoQueriesCopyWith<GetEmployeeFamilyInfoQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEmployeeFamilyInfoQueriesCopyWith<$Res> {
  factory $GetEmployeeFamilyInfoQueriesCopyWith(
          GetEmployeeFamilyInfoQueries value,
          $Res Function(GetEmployeeFamilyInfoQueries) then) =
      _$GetEmployeeFamilyInfoQueriesCopyWithImpl<$Res,
          GetEmployeeFamilyInfoQueries>;
  @useResult
  $Res call({@JsonKey(name: 'employeeId') int employeeId});
}

/// @nodoc
class _$GetEmployeeFamilyInfoQueriesCopyWithImpl<$Res,
        $Val extends GetEmployeeFamilyInfoQueries>
    implements $GetEmployeeFamilyInfoQueriesCopyWith<$Res> {
  _$GetEmployeeFamilyInfoQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEmployeeFamilyInfoQueries
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
abstract class _$$GetEmployeeFamilyInfoQueriesImplCopyWith<$Res>
    implements $GetEmployeeFamilyInfoQueriesCopyWith<$Res> {
  factory _$$GetEmployeeFamilyInfoQueriesImplCopyWith(
          _$GetEmployeeFamilyInfoQueriesImpl value,
          $Res Function(_$GetEmployeeFamilyInfoQueriesImpl) then) =
      __$$GetEmployeeFamilyInfoQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'employeeId') int employeeId});
}

/// @nodoc
class __$$GetEmployeeFamilyInfoQueriesImplCopyWithImpl<$Res>
    extends _$GetEmployeeFamilyInfoQueriesCopyWithImpl<$Res,
        _$GetEmployeeFamilyInfoQueriesImpl>
    implements _$$GetEmployeeFamilyInfoQueriesImplCopyWith<$Res> {
  __$$GetEmployeeFamilyInfoQueriesImplCopyWithImpl(
      _$GetEmployeeFamilyInfoQueriesImpl _value,
      $Res Function(_$GetEmployeeFamilyInfoQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEmployeeFamilyInfoQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_$GetEmployeeFamilyInfoQueriesImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$GetEmployeeFamilyInfoQueriesImpl extends _GetEmployeeFamilyInfoQueries {
  const _$GetEmployeeFamilyInfoQueriesImpl(
      {@JsonKey(name: 'employeeId') required this.employeeId})
      : super._();

  factory _$GetEmployeeFamilyInfoQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetEmployeeFamilyInfoQueriesImplFromJson(json);

  /// Employee Id
  @override
  @JsonKey(name: 'employeeId')
  final int employeeId;

  @override
  String toString() {
    return 'GetEmployeeFamilyInfoQueries(employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmployeeFamilyInfoQueriesImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, employeeId);

  /// Create a copy of GetEmployeeFamilyInfoQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEmployeeFamilyInfoQueriesImplCopyWith<
          _$GetEmployeeFamilyInfoQueriesImpl>
      get copyWith => __$$GetEmployeeFamilyInfoQueriesImplCopyWithImpl<
          _$GetEmployeeFamilyInfoQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEmployeeFamilyInfoQueriesImplToJson(
      this,
    );
  }
}

abstract class _GetEmployeeFamilyInfoQueries
    extends GetEmployeeFamilyInfoQueries {
  const factory _GetEmployeeFamilyInfoQueries(
          {@JsonKey(name: 'employeeId') required final int employeeId}) =
      _$GetEmployeeFamilyInfoQueriesImpl;
  const _GetEmployeeFamilyInfoQueries._() : super._();

  factory _GetEmployeeFamilyInfoQueries.fromJson(Map<String, dynamic> json) =
      _$GetEmployeeFamilyInfoQueriesImpl.fromJson;

  /// Employee Id
  @override
  @JsonKey(name: 'employeeId')
  int get employeeId;

  /// Create a copy of GetEmployeeFamilyInfoQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEmployeeFamilyInfoQueriesImplCopyWith<
          _$GetEmployeeFamilyInfoQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
