// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_selection_status_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseSelectionStatusType _$CourseSelectionStatusTypeFromJson(
    Map<String, dynamic> json) {
  return _CourseSelectionStatusType.fromJson(json);
}

/// @nodoc
mixin _$CourseSelectionStatusType {
  /// Serializes this CourseSelectionStatusType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseSelectionStatusTypeCopyWith<$Res> {
  factory $CourseSelectionStatusTypeCopyWith(CourseSelectionStatusType value,
          $Res Function(CourseSelectionStatusType) then) =
      _$CourseSelectionStatusTypeCopyWithImpl<$Res, CourseSelectionStatusType>;
}

/// @nodoc
class _$CourseSelectionStatusTypeCopyWithImpl<$Res,
        $Val extends CourseSelectionStatusType>
    implements $CourseSelectionStatusTypeCopyWith<$Res> {
  _$CourseSelectionStatusTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseSelectionStatusType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CourseSelectionStatusTypeImplCopyWith<$Res> {
  factory _$$CourseSelectionStatusTypeImplCopyWith(
          _$CourseSelectionStatusTypeImpl value,
          $Res Function(_$CourseSelectionStatusTypeImpl) then) =
      __$$CourseSelectionStatusTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CourseSelectionStatusTypeImplCopyWithImpl<$Res>
    extends _$CourseSelectionStatusTypeCopyWithImpl<$Res,
        _$CourseSelectionStatusTypeImpl>
    implements _$$CourseSelectionStatusTypeImplCopyWith<$Res> {
  __$$CourseSelectionStatusTypeImplCopyWithImpl(
      _$CourseSelectionStatusTypeImpl _value,
      $Res Function(_$CourseSelectionStatusTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseSelectionStatusType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$CourseSelectionStatusTypeImpl extends _CourseSelectionStatusType {
  const _$CourseSelectionStatusTypeImpl() : super._();

  factory _$CourseSelectionStatusTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseSelectionStatusTypeImplFromJson(json);

  @override
  String toString() {
    return 'CourseSelectionStatusType()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseSelectionStatusTypeImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseSelectionStatusTypeImplToJson(
      this,
    );
  }
}

abstract class _CourseSelectionStatusType extends CourseSelectionStatusType {
  const factory _CourseSelectionStatusType() = _$CourseSelectionStatusTypeImpl;
  const _CourseSelectionStatusType._() : super._();

  factory _CourseSelectionStatusType.fromJson(Map<String, dynamic> json) =
      _$CourseSelectionStatusTypeImpl.fromJson;
}
