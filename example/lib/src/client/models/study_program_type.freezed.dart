// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_program_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudyProgramType _$StudyProgramTypeFromJson(Map<String, dynamic> json) {
  return _StudyProgramType.fromJson(json);
}

/// @nodoc
mixin _$StudyProgramType {
  /// Serializes this StudyProgramType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyProgramTypeCopyWith<$Res> {
  factory $StudyProgramTypeCopyWith(
          StudyProgramType value, $Res Function(StudyProgramType) then) =
      _$StudyProgramTypeCopyWithImpl<$Res, StudyProgramType>;
}

/// @nodoc
class _$StudyProgramTypeCopyWithImpl<$Res, $Val extends StudyProgramType>
    implements $StudyProgramTypeCopyWith<$Res> {
  _$StudyProgramTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudyProgramType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StudyProgramTypeImplCopyWith<$Res> {
  factory _$$StudyProgramTypeImplCopyWith(_$StudyProgramTypeImpl value,
          $Res Function(_$StudyProgramTypeImpl) then) =
      __$$StudyProgramTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudyProgramTypeImplCopyWithImpl<$Res>
    extends _$StudyProgramTypeCopyWithImpl<$Res, _$StudyProgramTypeImpl>
    implements _$$StudyProgramTypeImplCopyWith<$Res> {
  __$$StudyProgramTypeImplCopyWithImpl(_$StudyProgramTypeImpl _value,
      $Res Function(_$StudyProgramTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyProgramType
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudyProgramTypeImpl extends _StudyProgramType {
  const _$StudyProgramTypeImpl() : super._();

  factory _$StudyProgramTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyProgramTypeImplFromJson(json);

  @override
  String toString() {
    return 'StudyProgramType()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StudyProgramTypeImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyProgramTypeImplToJson(
      this,
    );
  }
}

abstract class _StudyProgramType extends StudyProgramType {
  const factory _StudyProgramType() = _$StudyProgramTypeImpl;
  const _StudyProgramType._() : super._();

  factory _StudyProgramType.fromJson(Map<String, dynamic> json) =
      _$StudyProgramTypeImpl.fromJson;
}
