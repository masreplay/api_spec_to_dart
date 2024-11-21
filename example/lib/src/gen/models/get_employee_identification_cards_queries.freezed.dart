// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_employee_identification_cards_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetEmployeeIdentificationCardsQueries
    _$GetEmployeeIdentificationCardsQueriesFromJson(Map<String, dynamic> json) {
  return _GetEmployeeIdentificationCardsQueries.fromJson(json);
}

/// @nodoc
mixin _$GetEmployeeIdentificationCardsQueries {
  /// Employee Id
  @JsonKey(name: 'employeeId')
  int get employeeId => throw _privateConstructorUsedError;

  /// Serializes this GetEmployeeIdentificationCardsQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetEmployeeIdentificationCardsQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEmployeeIdentificationCardsQueriesCopyWith<
          GetEmployeeIdentificationCardsQueries>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEmployeeIdentificationCardsQueriesCopyWith<$Res> {
  factory $GetEmployeeIdentificationCardsQueriesCopyWith(
          GetEmployeeIdentificationCardsQueries value,
          $Res Function(GetEmployeeIdentificationCardsQueries) then) =
      _$GetEmployeeIdentificationCardsQueriesCopyWithImpl<$Res,
          GetEmployeeIdentificationCardsQueries>;
  @useResult
  $Res call({@JsonKey(name: 'employeeId') int employeeId});
}

/// @nodoc
class _$GetEmployeeIdentificationCardsQueriesCopyWithImpl<$Res,
        $Val extends GetEmployeeIdentificationCardsQueries>
    implements $GetEmployeeIdentificationCardsQueriesCopyWith<$Res> {
  _$GetEmployeeIdentificationCardsQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEmployeeIdentificationCardsQueries
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
abstract class _$$GetEmployeeIdentificationCardsQueriesImplCopyWith<$Res>
    implements $GetEmployeeIdentificationCardsQueriesCopyWith<$Res> {
  factory _$$GetEmployeeIdentificationCardsQueriesImplCopyWith(
          _$GetEmployeeIdentificationCardsQueriesImpl value,
          $Res Function(_$GetEmployeeIdentificationCardsQueriesImpl) then) =
      __$$GetEmployeeIdentificationCardsQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'employeeId') int employeeId});
}

/// @nodoc
class __$$GetEmployeeIdentificationCardsQueriesImplCopyWithImpl<$Res>
    extends _$GetEmployeeIdentificationCardsQueriesCopyWithImpl<$Res,
        _$GetEmployeeIdentificationCardsQueriesImpl>
    implements _$$GetEmployeeIdentificationCardsQueriesImplCopyWith<$Res> {
  __$$GetEmployeeIdentificationCardsQueriesImplCopyWithImpl(
      _$GetEmployeeIdentificationCardsQueriesImpl _value,
      $Res Function(_$GetEmployeeIdentificationCardsQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEmployeeIdentificationCardsQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_$GetEmployeeIdentificationCardsQueriesImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$GetEmployeeIdentificationCardsQueriesImpl
    extends _GetEmployeeIdentificationCardsQueries {
  const _$GetEmployeeIdentificationCardsQueriesImpl(
      {@JsonKey(name: 'employeeId') required this.employeeId})
      : super._();

  factory _$GetEmployeeIdentificationCardsQueriesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetEmployeeIdentificationCardsQueriesImplFromJson(json);

  /// Employee Id
  @override
  @JsonKey(name: 'employeeId')
  final int employeeId;

  @override
  String toString() {
    return 'GetEmployeeIdentificationCardsQueries(employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmployeeIdentificationCardsQueriesImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, employeeId);

  /// Create a copy of GetEmployeeIdentificationCardsQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEmployeeIdentificationCardsQueriesImplCopyWith<
          _$GetEmployeeIdentificationCardsQueriesImpl>
      get copyWith => __$$GetEmployeeIdentificationCardsQueriesImplCopyWithImpl<
          _$GetEmployeeIdentificationCardsQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEmployeeIdentificationCardsQueriesImplToJson(
      this,
    );
  }
}

abstract class _GetEmployeeIdentificationCardsQueries
    extends GetEmployeeIdentificationCardsQueries {
  const factory _GetEmployeeIdentificationCardsQueries(
          {@JsonKey(name: 'employeeId') required final int employeeId}) =
      _$GetEmployeeIdentificationCardsQueriesImpl;
  const _GetEmployeeIdentificationCardsQueries._() : super._();

  factory _GetEmployeeIdentificationCardsQueries.fromJson(
          Map<String, dynamic> json) =
      _$GetEmployeeIdentificationCardsQueriesImpl.fromJson;

  /// Employee Id
  @override
  @JsonKey(name: 'employeeId')
  int get employeeId;

  /// Create a copy of GetEmployeeIdentificationCardsQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEmployeeIdentificationCardsQueriesImplCopyWith<
          _$GetEmployeeIdentificationCardsQueriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
