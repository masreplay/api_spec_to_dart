// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_course_status_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentCourseStatusEnum _$StudentCourseStatusEnumFromJson(
    Map<String, dynamic> json) {
  return _StudentCourseStatusEnum.fromJson(json);
}

/// @nodoc
mixin _$StudentCourseStatusEnum {
  /// Serializes this StudentCourseStatusEnum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCourseStatusEnumCopyWith<$Res> {
  factory $StudentCourseStatusEnumCopyWith(StudentCourseStatusEnum value,
          $Res Function(StudentCourseStatusEnum) then) =
      _$StudentCourseStatusEnumCopyWithImpl<$Res, StudentCourseStatusEnum>;
}

/// @nodoc
class _$StudentCourseStatusEnumCopyWithImpl<$Res,
        $Val extends StudentCourseStatusEnum>
    implements $StudentCourseStatusEnumCopyWith<$Res> {
  _$StudentCourseStatusEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentCourseStatusEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StudentCourseStatusEnumImplCopyWith<$Res> {
  factory _$$StudentCourseStatusEnumImplCopyWith(
          _$StudentCourseStatusEnumImpl value,
          $Res Function(_$StudentCourseStatusEnumImpl) then) =
      __$$StudentCourseStatusEnumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudentCourseStatusEnumImplCopyWithImpl<$Res>
    extends _$StudentCourseStatusEnumCopyWithImpl<$Res,
        _$StudentCourseStatusEnumImpl>
    implements _$$StudentCourseStatusEnumImplCopyWith<$Res> {
  __$$StudentCourseStatusEnumImplCopyWithImpl(
      _$StudentCourseStatusEnumImpl _value,
      $Res Function(_$StudentCourseStatusEnumImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentCourseStatusEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$StudentCourseStatusEnumImpl implements _StudentCourseStatusEnum {
  const _$StudentCourseStatusEnumImpl();

  factory _$StudentCourseStatusEnumImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentCourseStatusEnumImplFromJson(json);

  @override
  String toString() {
    return 'StudentCourseStatusEnum()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentCourseStatusEnumImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentCourseStatusEnumImplToJson(
      this,
    );
  }
}

abstract class _StudentCourseStatusEnum implements StudentCourseStatusEnum {
  const factory _StudentCourseStatusEnum() = _$StudentCourseStatusEnumImpl;

  factory _StudentCourseStatusEnum.fromJson(Map<String, dynamic> json) =
      _$StudentCourseStatusEnumImpl.fromJson;
}
