// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assignment_type_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssignmentTypeEnum _$AssignmentTypeEnumFromJson(Map<String, dynamic> json) {
  return _AssignmentTypeEnum.fromJson(json);
}

/// @nodoc
mixin _$AssignmentTypeEnum {
  /// Serializes this AssignmentTypeEnum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentTypeEnumCopyWith<$Res> {
  factory $AssignmentTypeEnumCopyWith(
          AssignmentTypeEnum value, $Res Function(AssignmentTypeEnum) then) =
      _$AssignmentTypeEnumCopyWithImpl<$Res, AssignmentTypeEnum>;
}

/// @nodoc
class _$AssignmentTypeEnumCopyWithImpl<$Res, $Val extends AssignmentTypeEnum>
    implements $AssignmentTypeEnumCopyWith<$Res> {
  _$AssignmentTypeEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignmentTypeEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AssignmentTypeEnumImplCopyWith<$Res> {
  factory _$$AssignmentTypeEnumImplCopyWith(_$AssignmentTypeEnumImpl value,
          $Res Function(_$AssignmentTypeEnumImpl) then) =
      __$$AssignmentTypeEnumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssignmentTypeEnumImplCopyWithImpl<$Res>
    extends _$AssignmentTypeEnumCopyWithImpl<$Res, _$AssignmentTypeEnumImpl>
    implements _$$AssignmentTypeEnumImplCopyWith<$Res> {
  __$$AssignmentTypeEnumImplCopyWithImpl(_$AssignmentTypeEnumImpl _value,
      $Res Function(_$AssignmentTypeEnumImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssignmentTypeEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AssignmentTypeEnumImpl implements _AssignmentTypeEnum {
  const _$AssignmentTypeEnumImpl();

  factory _$AssignmentTypeEnumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignmentTypeEnumImplFromJson(json);

  @override
  String toString() {
    return 'AssignmentTypeEnum()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AssignmentTypeEnumImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignmentTypeEnumImplToJson(
      this,
    );
  }
}

abstract class _AssignmentTypeEnum implements AssignmentTypeEnum {
  const factory _AssignmentTypeEnum() = _$AssignmentTypeEnumImpl;

  factory _AssignmentTypeEnum.fromJson(Map<String, dynamic> json) =
      _$AssignmentTypeEnumImpl.fromJson;
}
