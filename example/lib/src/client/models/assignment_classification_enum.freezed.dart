// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assignment_classification_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssignmentClassificationEnum _$AssignmentClassificationEnumFromJson(
    Map<String, dynamic> json) {
  return _AssignmentClassificationEnum.fromJson(json);
}

/// @nodoc
mixin _$AssignmentClassificationEnum {
  /// Serializes this AssignmentClassificationEnum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentClassificationEnumCopyWith<$Res> {
  factory $AssignmentClassificationEnumCopyWith(
          AssignmentClassificationEnum value,
          $Res Function(AssignmentClassificationEnum) then) =
      _$AssignmentClassificationEnumCopyWithImpl<$Res,
          AssignmentClassificationEnum>;
}

/// @nodoc
class _$AssignmentClassificationEnumCopyWithImpl<$Res,
        $Val extends AssignmentClassificationEnum>
    implements $AssignmentClassificationEnumCopyWith<$Res> {
  _$AssignmentClassificationEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignmentClassificationEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AssignmentClassificationEnumImplCopyWith<$Res> {
  factory _$$AssignmentClassificationEnumImplCopyWith(
          _$AssignmentClassificationEnumImpl value,
          $Res Function(_$AssignmentClassificationEnumImpl) then) =
      __$$AssignmentClassificationEnumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssignmentClassificationEnumImplCopyWithImpl<$Res>
    extends _$AssignmentClassificationEnumCopyWithImpl<$Res,
        _$AssignmentClassificationEnumImpl>
    implements _$$AssignmentClassificationEnumImplCopyWith<$Res> {
  __$$AssignmentClassificationEnumImplCopyWithImpl(
      _$AssignmentClassificationEnumImpl _value,
      $Res Function(_$AssignmentClassificationEnumImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssignmentClassificationEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AssignmentClassificationEnumImpl
    implements _AssignmentClassificationEnum {
  const _$AssignmentClassificationEnumImpl();

  factory _$AssignmentClassificationEnumImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AssignmentClassificationEnumImplFromJson(json);

  @override
  String toString() {
    return 'AssignmentClassificationEnum()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentClassificationEnumImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignmentClassificationEnumImplToJson(
      this,
    );
  }
}

abstract class _AssignmentClassificationEnum
    implements AssignmentClassificationEnum {
  const factory _AssignmentClassificationEnum() =
      _$AssignmentClassificationEnumImpl;

  factory _AssignmentClassificationEnum.fromJson(Map<String, dynamic> json) =
      _$AssignmentClassificationEnumImpl.fromJson;
}
