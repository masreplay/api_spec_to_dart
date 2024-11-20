// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_course_result_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectedCourseResultEnum _$SelectedCourseResultEnumFromJson(
    Map<String, dynamic> json) {
  return _SelectedCourseResultEnum.fromJson(json);
}

/// @nodoc
mixin _$SelectedCourseResultEnum {
  /// Serializes this SelectedCourseResultEnum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedCourseResultEnumCopyWith<$Res> {
  factory $SelectedCourseResultEnumCopyWith(SelectedCourseResultEnum value,
          $Res Function(SelectedCourseResultEnum) then) =
      _$SelectedCourseResultEnumCopyWithImpl<$Res, SelectedCourseResultEnum>;
}

/// @nodoc
class _$SelectedCourseResultEnumCopyWithImpl<$Res,
        $Val extends SelectedCourseResultEnum>
    implements $SelectedCourseResultEnumCopyWith<$Res> {
  _$SelectedCourseResultEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedCourseResultEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectedCourseResultEnumImplCopyWith<$Res> {
  factory _$$SelectedCourseResultEnumImplCopyWith(
          _$SelectedCourseResultEnumImpl value,
          $Res Function(_$SelectedCourseResultEnumImpl) then) =
      __$$SelectedCourseResultEnumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectedCourseResultEnumImplCopyWithImpl<$Res>
    extends _$SelectedCourseResultEnumCopyWithImpl<$Res,
        _$SelectedCourseResultEnumImpl>
    implements _$$SelectedCourseResultEnumImplCopyWith<$Res> {
  __$$SelectedCourseResultEnumImplCopyWithImpl(
      _$SelectedCourseResultEnumImpl _value,
      $Res Function(_$SelectedCourseResultEnumImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedCourseResultEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$SelectedCourseResultEnumImpl implements _SelectedCourseResultEnum {
  const _$SelectedCourseResultEnumImpl();

  factory _$SelectedCourseResultEnumImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedCourseResultEnumImplFromJson(json);

  @override
  String toString() {
    return 'SelectedCourseResultEnum()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedCourseResultEnumImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedCourseResultEnumImplToJson(
      this,
    );
  }
}

abstract class _SelectedCourseResultEnum implements SelectedCourseResultEnum {
  const factory _SelectedCourseResultEnum() = _$SelectedCourseResultEnumImpl;

  factory _SelectedCourseResultEnum.fromJson(Map<String, dynamic> json) =
      _$SelectedCourseResultEnumImpl.fromJson;
}
